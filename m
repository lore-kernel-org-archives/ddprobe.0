Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341392110
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754806194; cv=none; b=oZZ7vgG4qpgwKesidrvKng9hjyLnxqo36Yrt46vNhIGGDDb1MihOcROdhMen8NsM9D6fZ0nMOm28ulQ5JwOMws3EASFRPouo7UCx3kdnSxfARDEr4bK6q3tEcxhM+GMnRvlhfJKHUNVRcHGlShKw9w8DKY0OWxiCveqMl1HiKY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754806194; c=relaxed/simple;
	bh=jUCPSjzgLgH9cB6gxm8KM59GatY2LHIaXlQUtT5No5k=;
	h=To:Subject:From:Message-Id:Date; b=l+Mfy8vee8WP4MHk2p9JB3BrWddG5otrArqvbV8mY/0OOTC7W5KXbWJDjOBO1rTDyr/hasbo+DDwg3pRLrXaA6o7MEktHYCoMYG515UGP2B7woDN2WRR0U4y4t5faCWWKvxugmb50WCBVdQqxAzZKf+KCyFQqBinLMHFjZlN6rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MI9rtrDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MI9rtrDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67E1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754806193;
	bh=jUCPSjzgLgH9cB6gxm8KM59GatY2LHIaXlQUtT5No5k=;
	h=To:Subject:From:Date:From;
	b=MI9rtrDMYRE9fTRZx86flHKDu8iBESgx2c2WPmRXUf8Gl4Euosf6odXbpng86TIPR
	 a6x+X2AFVQ4etI3JOZC2tj8tGPXeSogQd8EKcR/3G7EDRcHu8BAKs04MmbYZC24xkx
	 5y+SdTFk4qh0d3xKcfcN4K2sYnNAoX1xp/rRqCs8KhUGf+8YaJQrV2JdISZqFg2nFs
	 KmaT2An9exJZN5ObUIwFx9N49do7faqvYVW/tXHW7pOd50kYfKef7mFbUzBSQOr4G6
	 3xQGzLhgBgH8kDC14RuN27Gfnh7snZTys0Iwe+sjot36ZK+NI+83aEvfqLuSeJAo1l
	 aenU2LJtcmpbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F7FC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480619357.10245.5927765060320692769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7a71ad1b2ae69f43354031a8bae28dfff4e7bc2b95f4a00790d37690c8b411
Date: Sun, 10 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754806193
