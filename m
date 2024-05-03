Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2DA1EB21
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 21:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714773143; cv=none; b=UhveMMuyXrcU2cvMRiH4Chq/bYHzaniuTLMe9vXhOuzkRtRcN7UGu/WT34sU4TjTv9UZYMYnzkeQTQX24JPuz/PtM4moNc1EcjrX6y+mKSCEThiGZaLZ3XT5Cp2RjGgc7g8Ak0eau9C94RryHIbKrhyTVGEF1NhVFuMDJhDjmOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714773143; c=relaxed/simple;
	bh=n121/M1id4fZzVUSVEqRrjq5pNctClwBr1V210BxVTI=;
	h=To:Subject:From:Message-Id:Date; b=kqyeB9rpP5khqYJFJpaYN838Paaf4BqhlnY/MwG9nYKZ612FDcwUx+QiFF+XRx0ryYvzRy2muBr+ykYhtDmPKmBoSOKwUqe6aeL/pw0W+zbjQ6BS8Doq3+yXL4DAsgP6dtawHtvuHe/qipWv44jRvJMr6m9+e32x8o9b0hCdnJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqOjv6vR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqOjv6vR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE7CC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714773142;
	bh=n121/M1id4fZzVUSVEqRrjq5pNctClwBr1V210BxVTI=;
	h=To:Subject:From:Date:From;
	b=YqOjv6vRn0bPrN8oDNErBOY9YSRfxs2G1tP3jQOhqn5grZi6UJi+bHLZiybj9I9FJ
	 yuw4xAVzvQDHpGfyzTT0ryEXUIp23fGJCf5uaScJxZuEOtucp9pySayNOxjFMFNq9S
	 ghr3fxcOMWvTEdmKBQ1QxyrOHFrJTTKfHCq2WODPxsW68/v8zSg0BW2UtmqngVvR3G
	 1eq9vZn24st7YevEV2yYLNzEEadyoUakpXDCl0gR53Jk8pztV+UcdzhvwZGXSmmvT6
	 uSvOdGpF3M83DhQNKQowTeXOn3GkLMRtJzc7g2Ki7Mo1qntj627rguIESg75Ng6qTv
	 7wy+/UjAwZB6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4CFC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171477314281.6155.14653144264665689351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ee8f4b62c22595e4ac672101540d9447834f0e07b95ad3135b175ae674585b
Date: Fri, 03 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714773142
