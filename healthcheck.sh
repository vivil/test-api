#!/bin/sh

status=`curl -so /dev/null -w %{http_code} http://127.0.0.1:80/healthcheck`
if [ $? -eq 0 -a "$status" = "200" ] ; then
	exit 0
else
	exit 1
fi
