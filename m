Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DD01891A5
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725961554; cv=none; b=nRQf4rfIIfMHZrk5l/sHVz1qSAwF6B5pbXTuXooGMi4MpVnMkj9QfuUJQCO1UlLDx+xUe01iYQf2YZeYfd+ls/GLky7XcJv+vCrD4Cz+IlqzIvb/nVAYzJNa3C0CrenT8QAJGsY3FJ9S7Vf6ouzM6A98WTeoGO8GhzWI5vDnSPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725961554; c=relaxed/simple;
	bh=DGgc8H1bzjl6FiuPBAdWN0ViAKFs5i8jV6nL12QYVPw=;
	h=To:Subject:From:Message-Id:Date; b=Q9lGwpURr+doGCa1oqFvS1Qz6f1rFZgmvBpe6WkMKp86a26vGWAL7k8GqDf9YaMZT51VkbQoi3uIUhrrkt5KQyUcPliEHIrmTK3cdYUh+E4IxaSiDmQsTV7+mT0wSc1bgLhJbbUx4l7hWLRaB8l+WpC7kKhwWd/wzsDV3afzZbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0ZBAaX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0ZBAaX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F06C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725961553;
	bh=DGgc8H1bzjl6FiuPBAdWN0ViAKFs5i8jV6nL12QYVPw=;
	h=To:Subject:From:Date:From;
	b=i0ZBAaX8GrBWKtUSYDF10bUDLPOm+deh1XL3NP2czCtAh61pjK6hdsjhWy0OnLM0B
	 0LaTsyGsU+dynrUBf1uo57WCYwEVZ6CGCCk0VXHfWI9owrKrl+v3eZuadaXAiUbR1h
	 Fn50Vk7PV6gUbdr/byUMTMr5NLTj986m8fWkbLdah6E0u0DwADbt4vK548ttro/hFa
	 WK3Gg9+kefnhu8HLLVNRSySr4kIsNjkHJ2bl/nEUTWBxSS8JePPx792mKDz21RC//n
	 TxDUz557ktxKnFTzpfFh8zarnOwgFVEYVC4QZr2lPWcEvtbgKk09PgqtuehaG0OR07
	 g6Raa5IDxSZqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A139AECE582
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172596155364.15192.823331594123858563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4870442313e7660bd31d1440967524de54171e6b4216c27af871bd79a02010
Date: Tue, 10 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725961553
