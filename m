Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3849A33120A
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782915514; cv=none; b=Qqc3A2/XRpk//AyuUNN++S4uIerNyDOnHDUSSFjtE2DKarWQxw8n8wcwPUYEP5CPHE5ZNo2ZHsdx/pqXubYif+GqBfFbJItYAbL625c8HOY21AZBWXLbUQOJk8HWusFh9vBmoSnaWICEs7lQRL5WoWa+yjDyuCSFspa3jjR8Oi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782915514; c=relaxed/simple;
	bh=l7akIAV5fOjgclLve6fPcruNQayrU2mTNjNcMN2sy7w=;
	h=To:Subject:From:Message-Id:Date; b=jRtqiORrcQUYljN7unAliFkEZzKptyE8+koJyBwZrFpl6uDnL0PoGUXtikUVVcclIcGfh9LAhI2Zp8D/wlmfIWQVALmxN4NWocEemL4KA3GINJUwCmDSH3He8msXzMMrZDPBCLRNDV/obVcmpzbn9j0lnb96vX7eRrxXSogwldo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUifKif9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUifKif9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91E8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782915513;
	bh=l7akIAV5fOjgclLve6fPcruNQayrU2mTNjNcMN2sy7w=;
	h=To:Subject:From:Date:From;
	b=LUifKif9jiX2gZGj7o+g5pZD6oUi6t0E6wXzw1m6jAKc7qEACjkXQ6tnO8xa0P6Mg
	 HHOIbzqVJxFdi3XNnsnDJL78xQW6wsShw6ARx6frjgFmZgeIDRbj7hCBumefTIno7n
	 2KDsflSW7+DUMc13rJbJBUtbo2ysIjRAi6vWWsvgZ8MafiBSr5Fv1SATYENbpGh4Em
	 XRDnF48eD0J6VM9Uv7xpRGbgLmymcH6gUhcf0mgz2CbqsqgX4CYfElyOBrihP7Tbwx
	 7BMJXmboDZ5ouV96TIhgjl8xJDd1Fk8jhgfOTtQFot34zTEYOXkMet8fCMeWi1fkao
	 NeOHDXil4kZ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8F4C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291551370.17805.396086218976890374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e079c54241e9194c70a09c87f00186fbbad9ca621d76a091711631d4722223
Date: Wed, 01 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782915513
