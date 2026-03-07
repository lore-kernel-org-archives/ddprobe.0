Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0157C26B764
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772897094; cv=none; b=vBrD0OoSeWSsUY+1mgHtoU1ma5RSDYhu23tYU6DEa5w92lZxqjksnxdvgJJ3O1gs/tpgMzxVhKq2l+6nRhrvRnsImKOMri6pyTi/WoeicG+j79vjpGyzphsUb8yWtYLODASDX6HRtlX8tbSCKPwSLPdNpper1yDNIPSwvJ0MmA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772897094; c=relaxed/simple;
	bh=yBKHgf2R8hwKvmnknpyJMHXWk0CIC4vE8DkE8rRlM9A=;
	h=To:Subject:From:Message-Id:Date; b=kjtn0rAxKwj/yDfFaeubYiCjHTIQc47jxB+Ot2nHfEM7MXETQRwV5L7woVjYdGoHpn/OKuCbiiMHEfm4pKDHIw8ZgQnaFHap0pOsypVqaDiivs3Vwg+UTNzKrk/dVshKBBcEywAzVcLIjliLMxFy9m8wowu01u44wauPeMkMVfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4FyAs4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4FyAs4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F82C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772897093;
	bh=yBKHgf2R8hwKvmnknpyJMHXWk0CIC4vE8DkE8rRlM9A=;
	h=To:Subject:From:Date:From;
	b=b4FyAs4CktWsJgrdH7pa2qkta1u998tFpsq5v6wLyMn3Sd5/Q88v3wGEmbZJyDdgg
	 lKkrrGp2MkjJCGRHWJ+FEHFvDXLt3+zTho6P7N/OjMVegCFiO0bvtY6fQSUAw6wZqA
	 Pe2c7jjINClIut9O1VLeHg7AdOICBOQczAH4EGWDVSwmd1wSmk+mXPlvd55XuugqBf
	 XfSdxtpi9q46lfm8GXcJl9F4QjMxJ9yhiK4/M+uLxmRpumjRxa93JvFobt1i41Sva1
	 XUcMP2tFNr3YxJlBsO/G1bbfDwjiodGyvmRgcfNxh/bFmgO5XR/XS51K9d8Ob18ZXz
	 L//pZr2fe44dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931ADFCB602
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289709359.13845.12088747937878843331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42b2e2e65cd5524f7036285d312a282faf5fb2d87b97cce794cbcc706d813fb
Date: Sat, 07 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772897093
