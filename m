Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B302737F3
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760758794; cv=none; b=arDd+buEoOsrKiHpMR3iVW1bfV7SpgSEcsPFKnXU5xlb2uVYioe/ZN/SRXJxVP0AlCHizFlsvP2q9ph2W435GZsRTLy2kv1ARxHFTd4iXLHudWCZL1oX8CtZavqFhcG9+Po49qIJ9xF8kUWny8HRIrbJ1kDqqlyARyjh+wR+oeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760758794; c=relaxed/simple;
	bh=A3kkQGQzimuqtrQ2NVR+Hl1zq98aNiC6BzO7snQ18+M=;
	h=To:Subject:From:Message-Id:Date; b=BJ4TBZZVgKkM0x0v3ceAJOT2skfRd4GiIEz2QxJBoyrpyZZBgvuVdbEQwz71YoSUPvY9WFIZEvxOtnC1MoTgFEkuhw1uHIrVCjwP631vRHjUVnyOxTxn4Y0VEGvme4b5HlDQa+UXUS+2Gyb/2AESGPhWuKRG26QIhpWmwZVoLGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AySSXo6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AySSXo6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F19C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760758793;
	bh=A3kkQGQzimuqtrQ2NVR+Hl1zq98aNiC6BzO7snQ18+M=;
	h=To:Subject:From:Date:From;
	b=AySSXo6ATPAKwzGw3RNXS4PeCtlb4uWMJ34CGGQMbTwsWfV+knX9f3FRGgw83Wb9q
	 ZabsReB2G5c9dZ0XDvh+LKt0paV9pGMvJDWTUexIB0aqb+F8/CJgDCI2oIzydsjvwk
	 51K6iK4CuruYzH/SmFDu1kjSzfOB09QQWk3mHQeSJWF4QDVSmC3G7k5PF09W17WHNC
	 SFY48iYHpgLhU2aF1FRLub2vqVLFM9uR0Dh2/6m2XIZqx5p3A1Gb5LeWGUimqqsSHh
	 sL09yfZRVOMKwDyUPnzIt/G90UwFY5+0zzwiwf8pzlcPd//EYUsc8K2ht64/zmXXJ3
	 cQS2U6dyzD2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996A0CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075879360.1429.11928649893027438229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2336b0f4a602b3a458ba33201dc4e967f6c3d486b2fe123ee79fc593c028da
Date: Sat, 18 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760758793
