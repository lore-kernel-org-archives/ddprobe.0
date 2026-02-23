Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0090A304BDA
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771871694; cv=none; b=iywLD9oSI13j5coMVA2s/snedkZMbM0fKuBHX8WGAZ5p+tzPpi14tmYzhRWhH9JN+u+7o1qXFQpQAEio3j/M94Rk1acU8TXcaBdeNsQcXsJsTk6chQHFz9UhvzmJA7uV/NswKKX5fReClYDazmEJXGeWSJPhINX/KZnLR/u3UV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771871694; c=relaxed/simple;
	bh=GOd02P1ce/igBIDGLJZE1O4D4OGtbKMyeLk2xMwInJ8=;
	h=To:Subject:From:Message-Id:Date; b=GG+IQJr68CW+4qSgN1/cOfTQV27ngJHFamQIVijhgZZ9OYYSjfZ6OvXxaCR/oYOC9pm9f7FDLlIf34wx0Zc5uMpM3W+P1t2jFx+0UWyrinlDKXjB+oxzjzUne6k0QiyuEsWovVDisgLxKWoG55UzPuTsbB9H6zL9TAh33yYdy30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcVXIRvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcVXIRvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74ADC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771871693;
	bh=GOd02P1ce/igBIDGLJZE1O4D4OGtbKMyeLk2xMwInJ8=;
	h=To:Subject:From:Date:From;
	b=KcVXIRvgpZws7vRdeUAFe0W1VIPwsDSzec60+Yutlme5anUpZr5n+oRDmxDKOB6tX
	 JmI28AwHs2H62kqKh56tXIuzjrt5kThA6gvY9cf5hp/azYBZVU//xAUcONyWAaVIJS
	 Yo0XuCfASsbmGDi02y/JMQT1ov9ID3XcbGooOqcvTgMcn4DaC1dWnGR2/eOnhxZjYx
	 hP7gHVuiPO/Y8/loptxq69wmyPC+gWOPZosvzQqWOBkU+WPWwcfMcegaMjzX4nRcyl
	 hSATUdpuYEwHkhe7v02jFB7oqbe2s8IyoaRQc+CVQjrw5Qx7CgtxcdV3lhTqN1Q2Fq
	 UdXDFmx+z1m3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94264EC111D
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187169359.16765.1824347858139099432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f70fac2ff601b2cd1b7d4aa410db68f5c7ebcac15c319faf49d59280858392
Date: Mon, 23 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771871693
