Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28197748D
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734897354; cv=none; b=jWM6lgeL+6+LHqBScm39sewyu3ksmglNjH447fFLF76hSahbogfR/fvgkxkauSe936YrVywaSJSAKh1PBet48DXqdYTwCZUEWyYepeOuGGxDxKV/RvhaudCby4gnrj0MZ2VXuerQPXuU8FD3faCm1R8CkmrUVeBggpgtU5cfhPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734897354; c=relaxed/simple;
	bh=S7MkC3wZ7+ISdSKB64HBsAqj8GeBp53GxIxELUnQueA=;
	h=To:Subject:From:Message-Id:Date; b=dZaRHAvob5UWR9L45GJ068aczU/CE6hGND++NRfibEuO13qAK45JS6lpA16eySFfTUA/t/llYpgka49UxSGLcOs+xAZiiwbFChmEqMPqiYT22u2kSOekTLskpiUzE4TR1G0QhygnNTY0obn6rUwG07ivbJo8W4IAQuOUZM92KG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sobou+Kk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sobou+Kk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F352C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734897353;
	bh=S7MkC3wZ7+ISdSKB64HBsAqj8GeBp53GxIxELUnQueA=;
	h=To:Subject:From:Date:From;
	b=Sobou+Kkl38Gn5IRC5jGWJcgW8YZKMi9JJ3GY2fdNzNuUDI7jwLurfi7hZjsAA1z9
	 Twaf1xHylnUaa1SpSx8VwLSpgDcNoPl1hXwgzQ6veLTdpZ7C43qSac6MFJ6OhkAZdJ
	 FEL7U4z8ix+x7Df/ELPfWV+M96a7Tfx0dDTm9aqiN2hXFy6fKUkJ8fxgfUNbfhqKhe
	 7kmYy7mTVUK76ssE4LA2/CAqAQSWyLv5L/5lHMDEUW6mBam20E+QIxr33ap38OBzdY
	 019SulRKFdmhWr2mLRhZbez4MSPYNLdSwwwBeOejr+5Cg3/kqRNMF0xdvT+u1Flixa
	 agsi/VXAYSnIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92726E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173489735357.13349.11949341618405019054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f350bec605cc1db6e693f12328bc5f2cc125200962de3c2a46c19e846e5fb58
Date: Sun, 22 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734897353
