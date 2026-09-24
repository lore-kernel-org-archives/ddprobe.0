Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73BF84A0EF3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790263834; cv=none; b=GmubabRX1Z93f4ZdHuLkE4Pey5Rf0eX/c6LWrbjkULhwEeDNFX5OIzO3nVS1Wwtad6TzdZFANNTLgXfYHlJxxhDoxDJesi4os+U1xY7X5oscRg0P7nT1JdzF58IEca/Vlp2R3dI2raypDWgwAWRWT16ZL+MFn3RvSp6N7YZqQVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790263834; c=relaxed/simple;
	bh=vQg3pqj6KxPj5sLiqCh5JfNUI6tjYzn2PF2OhKdJP5U=;
	h=To:Subject:From:Message-Id:Date; b=o0DxXG4MHhsoArTeUajWvV3kQ9XMwF0upNIEZt1oMw0ddf8jBUuANi3WuD6UCYNBbIk8x6iP4i5p4+wE7WSN2tOBl3WIA169qQgy021Xvjq9FahFt7y2znESr1FEsoWXsUx+k/a8HfXGY9b9rs+4mJDs4EwiiQ7M0gFCxARm2Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mc220QRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mc220QRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF74BC2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790263833;
	bh=vQg3pqj6KxPj5sLiqCh5JfNUI6tjYzn2PF2OhKdJP5U=;
	h=To:Subject:From:Date:From;
	b=Mc220QRZVLOYLNSFCa7cZ167fBTwNASS5AaNmAdFept7NoXu6Amd5lYj/FYGSgZK/
	 ObtS14Xrsq+vWNTgbOjquBF8BPrqB3CnYunDJUxKqY+66LXitoX3wxtI6xO8B25ny0
	 fLeaEVRdge2YwgShn4AvnZx1FTfyaLEgxSxKzOKzQE62OgGe9wsLVwSZUecFlfK45c
	 ZJF2dIuaBI3ZFxjFjucPbmkLpGUve1XT++L1jWnaEJxvLPbialZ5vmDsPBodVoFRZ9
	 zdWOdxJCODjMVAhj/KoO6T4/Cr59DxDEANW52jseu8+VlVokkn/vppbTEbvA0HTeCz
	 jvuqY2xGeTl6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD04BC98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026383369.16216.16476408986668552197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21e2e26346dfb57e95fd6f991317f64d98a77e1ad7024e0f403d1c29762227e
Date: Thu, 24 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790263833
