Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F83F2264D4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752481794; cv=none; b=XWOB07aAwQ9R31ERDHcY3E9kYokaTZ74ALuN+gptXpAVG3N+VsWzy6zZuc4MEBlLtz6qiFEGYPIOO0L4ZRHY7rX2QS1ofKR0ewJVKTpla2bxXaXjjV9EVYvBaP+hAtPoARtF/o1k45vlC7xB+XB5lsDHARM8zzYKcSbOBIamQEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752481794; c=relaxed/simple;
	bh=jm1y5fZMpB8hrwLUE/ffEy1RNnXefOdmOvBNjPptCKs=;
	h=To:Subject:From:Message-Id:Date; b=kpSIHLGsHX5LuNaFGuhboSqfGrL3W5PKX5VMfLCP4i+B06K0VpjgNij/Zc046qnC3mecwmJ4nC5tkc5tJWY0WA2X+TbA78l2QDdD5OXQKHpLkTq+15YrzzBCEUSqUs63biUot9UGAQSPikkF5XxAER9dw/Zs0nqjnVbt+pspf6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNYqjC7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNYqjC7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B2EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752481793;
	bh=jm1y5fZMpB8hrwLUE/ffEy1RNnXefOdmOvBNjPptCKs=;
	h=To:Subject:From:Date:From;
	b=oNYqjC7V/CfdDqdxapLpagW0y1oD7FwT4DMeGJ73zN9dXLZm/XZO2Gb5DoM9QPtmr
	 eGwP537f5DRDtb48LOr/m/D+AUsc49j2Hgs3CdXv2QEd1YWtMhodgbjWsDh18yLNdN
	 5Gv9pyQw4saoupSRdxJ3TVej0D8oLjyUrUMv/wqxzJBIl5/dFvZGL1I/NlFq2y/lsC
	 bO6rOePp7Sm4TOeuKOZDp3oXdk2RY6eFo7pxGrbL1JlANQ5gMFZVx3TeK1UEEbmH8Z
	 GvtfFJK2zkIYUtMZmbK2bF+2Ih49zW0xjHxfceRzCVOtgLAfGV8VxqovxZxDavcVYM
	 YRA3LtHc98RcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0BC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248179357.29833.15283882247411817177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e23131e9f5e73b59b1598cb3157bad983c73c103d8d6cb37f164a3db4a7b72
Date: Mon, 14 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752481793
