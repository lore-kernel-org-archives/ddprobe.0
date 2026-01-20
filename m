Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7FB34D4CF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768886634; cv=none; b=MCJvGmTSgRjjuL9zWKvEtGkNZF8DVBF91vsZxsO468hjh82dbpb1ZuuxS9w7QkahmoPOqNUtUyBNgHBHyQxjyY0GA6tikI0bcR2purxmgObhKcVDvlq7Q+FT970lX1x5XHBG+j8A6dRt14Vihdcz63b74bHyBV4iO1EUVluLgyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768886634; c=relaxed/simple;
	bh=4Wi6mnZNOnKZQ6wI+uLB8/kjj0BLZ/GdoQiTKYqhsJU=;
	h=To:Subject:From:Message-Id:Date; b=qUD0Xsr+NaXwT0tOQnuQXAHhS/VwORK78Lt+WKL/tmdSTUEsqWJ4KNxhKeQgOW+tnwtqikPzkdgox23ZTHnPGWpcCwmyXD73gdAJ+t9XqnFdemGILibg4qU47dVqmzczY18hDaC3FCFJUUEWKEp5Bn0UJgbBdpE/mqOLiRN9+B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpYlFORt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpYlFORt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49E6C19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768886633;
	bh=4Wi6mnZNOnKZQ6wI+uLB8/kjj0BLZ/GdoQiTKYqhsJU=;
	h=To:Subject:From:Date:From;
	b=YpYlFORt1K8mZhWw/wrqEOPLTyga25IFhgvOL4gHAQHs3I4wFIGKMJ0zq366Q3YB8
	 oTHsV4v9Cvqb4cYrx8GkOapBvRT/MgQCiDnY/gMXyqRJG0pu2++29xIWZHnVLwPoEh
	 D27ldAR9NQQtD1xbiCWR7t0s4Y1uMEW7pAoLBL1JRf32U/mUlAKwrNPRsrT4nnKr9I
	 QjpfxPGFBV+fpyHxwjBqpaxIGCrJCl5D6py+yRa/00kOllhzbEUioz+dwnIKg8H5Uw
	 tEc/7SyizghIGGC0rRWksc3iCyr6klCEkkZWJp+zdKTCJTFVpe8wYup3Qm1dtd5206
	 xpuv7pXu47u5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92758D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888663358.7626.10824008534656224425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac7db6d33035b0818d67c68da9af100c3fb6f20aab2786b83539124c31b1fab
Date: Tue, 20 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768886633
