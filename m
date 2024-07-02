Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717E013D8BA
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719912923; cv=none; b=q9PsvmJrhVLfxy00HhRa4MQK20etxfGlLUkBw872rI0Tq9CBcy2hNTSwOz5qQFyqSIlT5WUJAh4Iu4O9GpyiuLAiWPCAoKNmB+ZJ2V+AElp+63YWpXA0ye422ZYJOAaBPrc6uAT1dsuAnIXEzM988B5mKSu4hvIMJaacSLmuNiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719912923; c=relaxed/simple;
	bh=z7mROJkOk6hP5NGBHdmozQEJAoCaA9nwz84HZ/dUSjA=;
	h=To:Subject:From:Message-Id:Date; b=NZCKh2z5jMafqOCO9HpJz1sNRkF21bLnalzTubJmjjrlrP0QWp5NYew632769BJdziHUfe6e43F/8FxaJl1AIRv1+cCXvifyf9wRtMK9WZwBL22pjg3sRHFb0PgYAhg89Jo+rYSrRa6+0KFl1tGGJsKV13xLskCgU4Yuv8crn/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWpNm2vk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWpNm2vk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E655DC2BD10
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719912922;
	bh=z7mROJkOk6hP5NGBHdmozQEJAoCaA9nwz84HZ/dUSjA=;
	h=To:Subject:From:Date:From;
	b=IWpNm2vk7DrP8juJaI/gTCtCHlG6tl/8ys69soyl+AIczBDmFxEFKsiE23J73w1Zf
	 Co831VICkUnVwq5A/byyQxgqlchu5m2UAmV91yf5EPnm+Ndw2A4DAkJXDxy7vHrqGr
	 C06RS/A/ny3nmQxze+FVoRG890U0Ibnux16CQzluG3rOWx3DAKy2Y/lnsqR/4kfyNd
	 osAuKMOlktiz8J3e9UDFcRmK8Ln1LUf1CGPrZ/N2z8e+GOSxz9uBq4unK1nbJPVxbW
	 oNt+ZyNEgwVMmckygtkN94ETN2f2AhUnNsuxIOAvMZAGVH2LSHDpLcy+ndbrmMq8zc
	 9OeuNa+C2QZkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1CC3C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991292285.14973.983127055159948740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f4c3049786449d1895fc9a60620ba3a9a81a9e9b11d1cf21fa8e9e83c26a6e
Date: Tue, 02 Jul 2024 09:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719912922
