Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AC51DE2A5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766313234; cv=none; b=lP1QEYUQbpMcQwMRNPuH67wBMQgIWejK6lPLwDXxcGlGUn0SPlzC3t1EvvFRUdTRuQRHiowfMqmcShejAIW8fZ/vS3+Nc8ZYI0oEn0Pu7neOKd9sIhQV2DyfYg1CAI1Vv1QUeaeGss1o5l4rgRKhsustNUXST69DFvmM+GGAfaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766313234; c=relaxed/simple;
	bh=7eRY10H291EbinjikuNctnNTzt2pZGJPArYLgufWvBk=;
	h=To:Subject:From:Message-Id:Date; b=Sdn/j/WotJrAeXyQ1wZPUAmG/RNcdbA70tROGd8ADaLMTn0zIQZ4H/ipMdwmFOcJoUzlZ8FSWsf1UDP3mjP8bEp6lwTTg8xPyuIDvUay7VPVnY7FdRl/JX1R1xkOC5JfXLt3VF4S/ADFoPayU1OZpq4M2kRAQbKCPs3s6UyHVsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0Lkghpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0Lkghpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1201C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766313233;
	bh=7eRY10H291EbinjikuNctnNTzt2pZGJPArYLgufWvBk=;
	h=To:Subject:From:Date:From;
	b=N0Lkghpw381gLlTSgm64KzOh/cAT2reeojw+mF2zmKwxSxOHrRTzfGZOHFJpJUAYS
	 D2P1FRd5U2VFCK8b+FFOo64yxuYvprheKXeAI9sf0/1eO+sYKjfwh+wb2nsEAblKgv
	 lGElvMxPLnIXr8uyYnH1XgYNFL7E1NgIUkid80iHzdLuu3O+K9DKjakzr9pSN5QWXq
	 tQfFTdXW9aUCAdP/YiO1UBJugPsfj6CoT/nv5K1LPEzrvrd2XEXXvXVpu6g+4QXom/
	 Q+Byqsh3i2p1182U0nDRQI10lmlvXuCCxnxDjW6c3kOxxZUwsctnqWRl9tklXqilOy
	 qYQ1JZ+FbBwZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90102D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631323358.18575.10800907018361762627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5aa2f7b009799efa65435d49a95523a8347262e2044f6139d894b54c5aebac
Date: Sun, 21 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766313233
