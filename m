Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4FF03C2BAF
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784975434; cv=none; b=A5H6sbVRr3thK9X49ZeCTbulCCgMkW1xe/3ThWonocrvUMfxL7N6CsVMtOQTsZrxSQh1o90AUtZ1icemkGGHCafVPy+pyOscS4l2xzk4CuYEOaIqs5cd3/yhoPE102MB4BgfkPdPqlClpTf043bm+pNoUi/znVAXK18eBSxRcyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784975434; c=relaxed/simple;
	bh=mpLuJqS3JTbBayLRFLtjOwZGVY9hYyAaG+4IIBQ2dy8=;
	h=To:Subject:From:Message-Id:Date; b=PdNKx0b2B40iOXWSZ5KyUrYrqqpRCafEfHRjG3U/WnE2ZV2QZAQWGdC6F6tV4Jm1Pc74gLKdkHLEcdwu9vtY471TmcO/q8acld4DWgGhJkKVzzOFKT6YiKcAL41cIGmoZfA3tRnMCtevPvL2jSJP9o1VyvUYzhCRASPtDWhzCK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LULW10y6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LULW10y6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1B8C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784975433;
	bh=mpLuJqS3JTbBayLRFLtjOwZGVY9hYyAaG+4IIBQ2dy8=;
	h=To:Subject:From:Date:From;
	b=LULW10y6LUG62cdG+3rHHFS9LitNKmIGX9ie7TBwIq+7GxBuPaRIL26X2v5kF6q5w
	 aKJWpROIsuXo5Nn16IpQHWFO5GPNAsOGgjgKR2eVKOaTZ1hZ0oQs6g9TgDEuQRODfF
	 g6RbigrNZHSZH6mv1LMRTyCzG7YrYt/yT4gHOsc89/StMmRmPDTcp4dnM9++MA4x7I
	 Oe9hC2GPD9wlMGi5ohHp5k1SUupDTfyv5JVhfHS5KTMguIBFKW35MYt66LQ8Og49S3
	 oPTlgyeR9btoHNX4c+I2CZ3Mqp13Sb7UXmkrTGFDvbPJUOwm2CoD17eSpjz5k0XyBs
	 AjeLLTRHo1UaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD732C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497543368.27572.15602691769230118522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2ef20374a8c4729d77371494e4516a239ef15fa90555065a2c5103d9206d71
Date: Sat, 25 Jul 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784975433
