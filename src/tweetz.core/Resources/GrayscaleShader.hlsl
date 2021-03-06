sampler2D implicitInput : register(s0);

float4 main(float2 uv : TEXCOORD) : COLOR
{
  float4 color = tex2D(implicitInput, uv);

  float gray =
    color.r * .299 +
    color.g * .587 +
    color.b * .114;

  color.r = gray;
  color.g = gray;
  color.b = gray;

  return color;
}