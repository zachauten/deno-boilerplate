FROM denoland/deno:1.24.0

WORKDIR /app
USER deno
COPY deps.ts deps.ts
RUN deno cache deps.ts; deno info
COPY src src
RUN deno test
CMD ["run", "src/main.ts"]

