#!/bin/bash

ec2metadata=`curl --silent http://169.254.169.254/latest/dynamic/instance-identity/document`
echo $"ec2metadata of the instance is:"
echo
echo $ec2metadata
curl -s http://169.254.169.254/latest/meta-data
echo
echo
read -p "Please enter key to fetch value: " input

value="`curl -s http://169.254.169.254/latest/meta-data/${input}`"
echo $value
