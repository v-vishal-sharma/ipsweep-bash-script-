#!/bin/bash

if [ "$1" == "" ]
then
echo "You forgot an IP address!!"
echo "Syntax: ./ipsweep.sh 192.168.1"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
#the ampersand (&) at the end will take multiple number from sequences and will speed things up.
#we can add semicolon (;) at the end, it will take one input at a time and will be really slow.
done
fi

#./ipsweep.sh 192.168.1
#the above line is for arguments that will be given by the user in terminal.
#this is just for showing how to run the script and pass in arguments.
#./ipsweep.sh is agrgument 0 that is $0
#192.168.1 is argument 1 that is $1

