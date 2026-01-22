Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1594B2609CC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769052834; cv=none; b=r8H+FrLngQppLJ09TiHuWKMJfmj5rMibYuxzs/wmZIYDVNRTIM9doLMsaaYSmXYSzZ/aOkhGUpWHjGNBasLXKP/VnhhrBAuL1sl5z0P3I+vLhFMhk057dAyAQ2lZ/tla8no3tb0K7hXUSYEnWgSfjkx3bNFo8yf6/TBzvXX06E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769052834; c=relaxed/simple;
	bh=8i7aUFmUOqBfqKQYViu9wShUtKgPrB4XRkvIAEDZQQ8=;
	h=To:Subject:From:Message-Id:Date; b=RJwFMFtzsKGfPU1gRO9llzxHv0KSBCRVHbMfQtXcrJyt/6gqr6EbrQkLOvJzLTPcZBBnatbI98/Gc1onp7ZBhRdcUkF2Fni1fv3yJf5WmWbLsRrPJEwlUsv0H0Q+YKo1zdii8Mu0WCGFKjubO4/IV6mwQcypU9ExJXaSxv9uMdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4HB5Suk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4HB5Suk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0184C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769052833;
	bh=8i7aUFmUOqBfqKQYViu9wShUtKgPrB4XRkvIAEDZQQ8=;
	h=To:Subject:From:Date:From;
	b=s4HB5SukWteKYkrm/42eCg/0UlpSqo8fU4BT7PBH5mg37xdQujH4FRouy1tikKNOB
	 ngIeh69eIsMUEmbZnBLkANqin4LNljH+iHd39fJ8vE2hlTI2mOZZqrMI/H8ZNLcGFj
	 cCrvGG6sRVdly1pT+Ql+Z7E/BVDkSxMog5k9GfBSe4z/LvDfzUy2j5iQLdIJIXIf0K
	 iT/QKUvafMatQUhMtXVxevx0X14dY7Wj1C9ZxWMkACk3ZTOI53DHQiYxhyYvBLM6Pb
	 dPxC7yagmGzOB5V/L+0J1inyI6LdmOA91qY+x3RVgfI+Zk5v6BFY68EuaLYzUMgCe2
	 5btZFOBDb7FjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C2C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905283358.28741.15186222125250773413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41245dab0f90f65fb0833c286cbb2a52975101a119d8773abea8bac6870c2433
Date: Thu, 22 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769052833
