Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619C03FC2
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714077743; cv=none; b=T21DH3wD6XTAW4STykktppMvIcCpaCCF1RRTJwC0+Y5ff3ZN2aPQcP3Y2LtH2Sua0Khhf+QHg+pq6pX2aJ570kmUR3dQdDuy+ioZnBdl/mVSzMWoWAtMzk1o/QxvkK1gdc/DSiVXSdE9GtzlyJ7QIz971Jhaw9/r/dLRry9y2Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714077743; c=relaxed/simple;
	bh=cKBqPFF0X+/iR2+FKi1KMmMw44NJTKpk9z/AjUOlU8c=;
	h=To:Subject:From:Message-Id:Date; b=o2cnYybPfg4W/5LuEOHld1fHeKVOZC7HEgo9CLWhNH2E2bXRz2tlL9GtuCXliQ1+OH4tGowBO0UX7X+ddktRqBiFE/Ewh3BPssf9xvqyZMkscwwoieT54JooNgDdjNl5kQZmYYWlEEuECjssoWPaWRGCl8msJJZVATvq9yAZ/YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlPm5ocF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlPm5ocF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE807C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714077743;
	bh=cKBqPFF0X+/iR2+FKi1KMmMw44NJTKpk9z/AjUOlU8c=;
	h=To:Subject:From:Date:From;
	b=rlPm5ocFehH8feVGUNDzTTNGrMCjs6hl4b4i0QCm5D/W4K1fF5we8E+gnjqDGPmty
	 tVYop3OkNJW5bHUo47GJck//h1X3wlec0zAgQ5uwrvQ6CgwUSoj9XuYn61yWcVaYSO
	 t7D63pqyLCg1AATiORlgn0uRBe/83HAyJVW3nLkdJ2VBTFaIEwwQ9a71pi1U50uhgK
	 sGlup4t30L6e01daecDSCxBlORSvUcEBGXZ8zxQHJiLV6zbOpewHTiR/Zr7cpJXURi
	 ka8p3gL4fFICoXOkyJMhB7/dzTvOfKNoDdFpvRyCqmc6lbThAstypjm9d13ezolIyv
	 eD1XDciZqUL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8EBAC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171407774285.3399.13152918093230192425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1b252957e962b5f8d9b3e99281acd8186f2dcfaa18738558d34682c5266169
Date: Thu, 25 Apr 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714077742
