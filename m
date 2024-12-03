Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FF01DE2B2
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733268354; cv=none; b=qlAnczk3qnbYMbOcGe3JLJMrf66t5bMsgmvvzi/Fpx24ekqmqWpS+MU2fIcDsZpTDCoCtfuYas0sPdw3ObxQ4tkeKtD7T3NqLcmYM4lEVh3l38KF4q1mFdCK9z07IZFr+tMt2hTuJWA7760FQDS95h/63+Pmb9cQdSV3QUm7qSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733268354; c=relaxed/simple;
	bh=4qQx13l/yrRrYAcD5dDt17bBuOTg6JYDHgluv6JKZi4=;
	h=To:Subject:From:Message-Id:Date; b=D+HKsVU2MmWYoehzE6KZyTfShxoMvGdt6kZoOIpfQo1Daed+3nh7AWM3zrFQkLaw0cSmpGPXw3YwHa8Ta7nqhQLfxrqEXMK4s+DhUXBbqMTMAXSdrfviP2AisQAPQ/9OxAycSUoYQJ/XdoSrqgMdk/yPONYNkD3SyYsCuZaMxdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Px7jjFwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Px7jjFwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0369C4CEDC
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733268353;
	bh=4qQx13l/yrRrYAcD5dDt17bBuOTg6JYDHgluv6JKZi4=;
	h=To:Subject:From:Date:From;
	b=Px7jjFwdhrBq2enYK641elAQDvMdoEzi7g1BNOlapa69jFIPhiq3IIunmGWOEOYdH
	 GbhDOH4P0UUW57P5R25ccjK33gPjyAS+D8wM0w+XjmBCvNMrNlDZbUjI21IlfQ+zn9
	 WynuxWy+BvBBjxtS/H13xpfbHTD9MbPduWX+gKA78MGs1R1Pt2FPvC2uUvJKZ3KHnu
	 u/m7u52755sfJeoEk1YE18nsj+c6Y7GpMKX0Xv45u5Rtlr3N+Amgskzd7Cl9oe99u4
	 BnhRngbQKKnyhKTUJYr3vwPPneGKoqeZJfXlKUUbYL/jVQsM54fZH3Ar6ydsXdNknx
	 X02d5kt+Qjy0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7205E77166
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173326835361.10593.7973650442135439892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe21fc92c76e3845200f0c42b82b6688ceae2ab35e1e74bd5d138047141a367
Date: Tue, 03 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733268353
