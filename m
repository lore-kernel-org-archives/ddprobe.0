Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4575521B199
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748594994; cv=none; b=AkXbP60Xk/syyVfGXT7oGZOtRxXrF42whaAhiovcjJreVO9muUL+DAaWDcSR/dvoK7KK8PjzHvnzb69Xf7pVeYiMhQTRB6K0cpNSzqaaEDPZIihjMi6ew1/olgRhCtW77rpL5vROiBD5KmMmKSwI1ZfiUdVAPD9TNgA2r1Qkr4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748594994; c=relaxed/simple;
	bh=Xt2BVrIIK3SXFHMD2mc/NBdYcJl16EjYvvjMsERFr5g=;
	h=To:Subject:From:Message-Id:Date; b=QSbbd81fvEZhBZRrU9X42AwqxUZawevB1DY0pyXvrdELSn2aquOaW8snavnTxufXhKFpOWN1ab4Oo9at+RySDJoOiMFLgbAKJplCdmHQSdhzbqzyInKRAaBhX9WcDIStzNwhqvfo2H29urYNeXDSA8AT5LVMDqDZtHJHBukJkXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rt8KVKfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rt8KVKfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FC1C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748594993;
	bh=Xt2BVrIIK3SXFHMD2mc/NBdYcJl16EjYvvjMsERFr5g=;
	h=To:Subject:From:Date:From;
	b=Rt8KVKfWUkqG6xY2Z51/HuS0dKKxEshH5o+3+8J4YwPUaYqMpZJbA9KBIGdsHM1Te
	 CXDqLkS1I4+vi19nDHsMbcG4R7ckpM0p8bIf/zb6HZuAi6fcj6I4O3hun5dDyOtkno
	 wIxKtA6aJbNl6NngbTBAGbAszAPCdrRM9MW8pyiMRtZdrOVpGoFXcgTGibIOkfaBrv
	 6fPtiVadGp4glf1zx7EremHDJcH+D2tyu/DvqqPPHy2B6aAo4MdFKkkN1uv3Z9/q95
	 E0oWDVDXTbGOkiZcfKgaemW4AVogSAvB890/J6tbrZTRWG+M9ZG6CaQ2Vw8783h2Jx
	 Dj0BPyqOc7izw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F504C5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859499357.6137.334275566511168990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42120ae5a96c39cde0f1c1cdc17d542d90e6a85a9cf5c053d8183c463d3d5d52
Date: Fri, 30 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748594993
