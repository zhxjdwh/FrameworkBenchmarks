FROM tfb/python3:latest

ADD ./ /cherrypy

WORKDIR /cherrypy

RUN pip3 install --install-option="--prefix=${PY3_ROOT}" -r /cherrypy/requirements.txt

CMD python3 app.py