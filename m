Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBB7303CAE
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784174314; cv=none; b=RkYMNHsccR1w8N33HsLwG8nNYU9hELaIz3nTu92dvVFTsUaYQehYyRvlyap3/gQAPI4y+GhQFDLe8vvTV7vVPXRPIlllRcZ4/Oq0n0HyVqjPeJkACpEd7URNzY37zP+26iGVHn54WvPwhA3UKjOoXtzyHfrKq015wq9/RpN5wqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784174314; c=relaxed/simple;
	bh=OvMp3bKE5biuuJLoWPW0ojScOUBUeLe/4xQoSnb6nrs=;
	h=To:Subject:From:Message-Id:Date; b=VZVEutD9GaE+InfR45FCw8aGYF4NcGn2yp+mnJ7UL49AaXMOfWVyL8LuTpSorkQrhjsaVv24CoTmgwgLQpjKKfbd4WdRFd/aWtUyDtsWKOelVHDDSYpHTdA5AwuDEBNACP45KjGMb1tBNDN5h9uSvrpKUR0EiuTGenNgIMVQaRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XN65qKEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XN65qKEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF659C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784174313;
	bh=OvMp3bKE5biuuJLoWPW0ojScOUBUeLe/4xQoSnb6nrs=;
	h=To:Subject:From:Date:From;
	b=XN65qKEZcgaFGZvNQdifBIF96UvUBrnLkd0Yy4yEdLrpeNac0/ejpGLfjxfF0lyS9
	 RKYBAJpLHrV/SaYwO7Wz6UaaNpcqtbCq4Gs5YrSzNd6BBklGQgwcc3uBIdo81a34ML
	 3btCSdIZ4VxmI4Nu+Jwz2GiNhW4jyiAd9BYDaubIrurzgl7Xx+uU47vF+WJ6gzlOly
	 mJr1Ej7n0lGBTY4qbZWo3+dW+6tR3NGVkd/P0zGQ3jTjR/5/yaxDojGqh++/ypurKL
	 H7MYxPmH+uQwocm3+FuKV7J2V+Ii8XeOXL462nmgybwcrVhEAaWhR518piJ++eeNOZ
	 OJIMYI94l4Fmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD94CC43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417431368.18836.12924189633046153929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35440085e2256158abe3d167127035065eb8bc429df2ae8d1c68f7453805e93
Date: Thu, 16 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784174313
