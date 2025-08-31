Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2708520CCCC
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756664394; cv=none; b=UZMBiQSZ66kE6zHxrSHW3AXSb9LSRYqyn3fJQ1GYR0nUo1ubY6OzoLcAtWwmgTPGLIm3p7Jvc1pKALVX92s2FC8tYvMjys5z1Oxob67n8bZwqPVcP8nKqIJ8j691d2HNaEx5u6aFoyU1n4eWZMrYHR9zCgqcc1gTtPsrU/jNvks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756664394; c=relaxed/simple;
	bh=kE5BrvuJgXmSso/WtnzwCslWX1L8m3Qr6WF5FjRlRt0=;
	h=To:Subject:From:Message-Id:Date; b=PZE4FWsZkpo8HNRWkS11DUVyNv4tvMxdnFPfsF+k9dfhBfXj3qU7dZwOqlS+o8v76WneEBuHZV+rJK9p0BX7yZCqVPPSr00wMLzr2foWfG0VlHe1+biAhYkbMLIJ5RqOTtSZSppOevgxohG1ih8YHa4ogWMjtK87SItkbg2sZW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpJzHjHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpJzHjHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8037C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756664393;
	bh=kE5BrvuJgXmSso/WtnzwCslWX1L8m3Qr6WF5FjRlRt0=;
	h=To:Subject:From:Date:From;
	b=GpJzHjHlx/9q+FitphNJADwkw2p85Hiu0PwJ74FgBNImQZlXpn1CSt3exhUTN29My
	 duE6mTAml3ctU/L117PyK4U3SiD1WGmjZUCOY/MJ4RCwjgDoebuh5Jv2Pihd1MgVtM
	 H0MF8jE3IRXnTGwhEPS9EFvImwHkbHqTCKv6DZ2o/gLnFE2YFcXU4S+uRgh1pO6nqg
	 BhyV8J3TPtqokH85bO+mPR0SXterHXQ4i3x1ZsE35bQp5+bsm3AlQXTmR8dmicTgDH
	 MTUcxw+d1/KZbpLpWTUXcHEwtzeqLYzcAAdLTfX4eWeVKJQymyCLtRiGicLWJK41Dw
	 ju812GMBshG7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93153CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666439357.5946.15164745249668918099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2214f4df5a4ab0fed8807bb46e49e4b2c73e5239fcca4bdebdb302c578ee67
Date: Sun, 31 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756664393
