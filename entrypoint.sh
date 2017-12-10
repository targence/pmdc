#!/bin/sh

# failure will stop the process
set -e

Background()
{   
    sleep 5 # give foreground process time to start up
    echo "background worker started"
    while :
    do
        echo "background job staring..."
        sleep 5s
    done
}

Background &
echo "foreground process stared"
exec ping github.com