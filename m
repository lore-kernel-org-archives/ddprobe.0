Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042804D8C9
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720371383; cv=none; b=qgqqRTAeh0KpwLR/NrnYAB5WKDzz902pVRLcwpM/1EbtMPOlBlMH0wwUkL99y0sAYMJoWis8tuJK3WXWh46WX2foEB4Sq+WojFXkfdq+y3SIdOVBrmvrC9spYwsAMux9DaLkT8lPndmF55olsXkozuod+5FpLbvpa4p70ZjJM5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720371383; c=relaxed/simple;
	bh=gXrchus3H/9rBD8JWIVOb7VwrM6YmHqyyrGL3rl+YRo=;
	h=To:Subject:From:Message-Id:Date; b=Q8OaQaNTVTVS5I5PyYfaCLs86SDWmN6BlEJ4zKtpmsBCi0vrL3GiCHvK0lccBB7q7iI2cQdm4PlikUbHTARj4aVLUPufLbwiWxGC671HTKwLb/PtbPtv6MaonOYfF2pbcq3whEDPV5tOy7BN5c9teQR69pG9COYNyPGANCVItG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhIMuh3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhIMuh3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B8BC4AF0C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720371382;
	bh=gXrchus3H/9rBD8JWIVOb7VwrM6YmHqyyrGL3rl+YRo=;
	h=To:Subject:From:Date:From;
	b=QhIMuh3chw/eZ8lBuRgEzp0Sx7yVQyAJpDmaDDOOqGRYvLHdIbrcP4dpLWm8l2+sb
	 27Mhc69JZ1ln5lTpSq5+aHg6SM3hCQ4+398kYaCS/IQzUeopJpiiDXYdBb+6d+1ENq
	 JmUSW0p1WMpHPWT0uhuGThdr3/yAHffaOU5yGzOMaYLudQ1b0kor3621/NI1HNkgBF
	 y6PJTWNN/jfrgjMv1hjtuHdGNgMXAIFhgDmSJGxqW+L04G3ENVmGhPubPfuU2NOVoh
	 EO5ou31jx/9c7fp7yjxu4ylthP+oKAsvF+mEh21fksw33WDcCjakstIsKCCiXwZx1K
	 HfysT1ibdPjlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18E7C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037138276.18547.6354940253981200766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf30154485b514ad7b2f4bb59e4c9b4774e8d77a3278a7142e9e56b2bd53861
Date: Sun, 07 Jul 2024 16:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720371382
