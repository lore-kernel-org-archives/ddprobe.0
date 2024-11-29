Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3091273451
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732904154; cv=none; b=WD3u0OguosLH5sb5P+PxEl276QwwgDxV+QH6JpX19SP7I9MowHSgYJjdEBfQgtdA35soQVhRmfpNgWSnKo0z2I39cs1SncG0HEM0RMfqY0n3zyiGu6WtY3USXBEG7hRmb7/k55Bd+MsJGyv7JdT5AEo3Rf5bM+5BXFslvc4gN/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732904154; c=relaxed/simple;
	bh=17jzo/9iUe2fJhPFZ3x7kgz6v7OFHD9S3jsrlUnppY4=;
	h=To:Subject:From:Message-Id:Date; b=gUO9xbYkZCm0TlX0w1rtJbTVs30W+S1DwUmLURXc6d331c+4j4nwiUUXmxDEJCR+sXHDgRaAmfwWBHk5+W0pI4Ir+ZiaCzrOTp02MFglTbjeSk7Sea3ABCecRAkF5cM322GO0tst2hx1mjkQO8rnNK10lbUHS40lPnYbU7Vz0dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFw0nu4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFw0nu4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A322BC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732904153;
	bh=17jzo/9iUe2fJhPFZ3x7kgz6v7OFHD9S3jsrlUnppY4=;
	h=To:Subject:From:Date:From;
	b=tFw0nu4pdnZL7Aj8J8igkneygzE2p4aKx8PpoFe2XlCu2MBCnMxrCxPKgihjNFLc6
	 x2s6C/og0Nwp4ZJun535mS8e261WRzRpFnVXR41gzMzjXeLyAHUuunsMcnXid2E4K2
	 92/0a3pBaHfBngznIM0nExJGhiK3RBNRHgUAL0VTcVfVCYnboWGpVaxR/WUd3gSaV9
	 /Kcj5ehl93nzzOFmItfsu21li9Fpj076T3lgd6XPMdZgO+WHplZ7ythTcCsk0W7nf+
	 Rip92Y+e7uEIVPigfB0Kobk/IGpxVtNtsx9gYq+u5Gyh0ucuu1Fv42ItMso/NLTsJG
	 E9Mrx7otMH+UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B24D729F4
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290415358.11571.14903651947792423550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18d454af757632d3d530b207d4bde36b31bd8b92d3f76b2638f83fff44b37b1
Date: Fri, 29 Nov 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732904153
