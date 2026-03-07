Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7337369996
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772916294; cv=none; b=I20Z3NyWxy6wPwkYZxHZQqK7BNe1OLz1KhT3Oh8IPf996RVm5Y+7dU+vtgI9s+t8P6YY5PH+FtHzMg6vjSQZLK30Bah2V+ks571+i8btchLuN0cHopOZZeu7Ovw6+4lq34OlDsb4V3SW4FB+Phk/JrF5wfltIt2ynsOwjPn7Rzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772916294; c=relaxed/simple;
	bh=dHbkN/iZ0yiEmjfksEYRbPCNBQsIkumGHOozxl/WrsE=;
	h=To:Subject:From:Message-Id:Date; b=azgV3ygSjhvbqSwf3nVBa4+b4Lut/vRg/mkBw5WquHrlPT176hWjpMqXS5XNS8XCv0LhDBd/7roq7QGmQEYrpqEGLaDg5R2kgpdTzIv2285p8HdhJIkDXWeMcPlq/4BTMq9CavnwnOnmgJbTCdCO4gxSyBbs+lh1dcgjYBnqiRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILfD81TG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILfD81TG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D38C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772916293;
	bh=dHbkN/iZ0yiEmjfksEYRbPCNBQsIkumGHOozxl/WrsE=;
	h=To:Subject:From:Date:From;
	b=ILfD81TGWA0If+jqftevHwbZUyQzmDLP77KolfsY5zY7XIEXRSYXnuFXeTuOlNnaU
	 yVWK3CEGyDvfDQY1w9VM6Gq2lTBPib76LwT4XY8hSwn3GYEJNDOb9FTzy1TQD9Wx7W
	 YwYiKHyujYXvECv+IxTdvz6FhICiXfqLc6Ryu7sca3ymbkvexv4q6I357UWSkJVxDf
	 Qro9xySfG46tACimIISJkJHEvRUzZFgDKKNHlnYChWZOXfhyNR+k4WG6I2Xzd8dwkR
	 DF+tJkeHuOILmdbmTVYoWD4x753Kh15z3c843w74UWkVqJYRU9AVl8jOof35Oe4tXp
	 D4pMbuGpRYxZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067AF55104
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291629358.22816.17473849782551865794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a3b7a00b397fc31d88ace192c07cb30e861c151341d6bbc8a1d9499351f2e03
Date: Sat, 07 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772916293
