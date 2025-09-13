Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F812E88B2
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757770794; cv=none; b=RsL4qQP6G4SiC7Ea4LqR18827jc9QnYgLYzxUwU6gAuN1oM1JWFChlA8QwuvdoSlCiS75K0T9f0B7KMgfJaSASXX+t28X3yKNfZMsI9Si0gHHb2kiCv/WveQCywxgR7755cWJlsGNylWeyANpTkSGoK+toMr3WanC7cTZNYyuNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757770794; c=relaxed/simple;
	bh=2DsNF92dmURRUoAnl+8hKlDgyrXXwxMpv2n2m7YSTDQ=;
	h=To:Subject:From:Message-Id:Date; b=UiqfNDR/m4ZSXaw/QsW0xGMrwnhoi0o4HqtgI055H7qYSr5eL5kPGFxBNJYfT0HHXFJYujuvk8EiqDFSCaggJdR/mRmFzBkjoyDcnCdW5SdVZ8xi3unk76NRcdzoNFZUryBAKzHWk9VH8OmINGoIKEZ1pjRGSogC8WS4EMr3doo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuQzfq9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuQzfq9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A765DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757770793;
	bh=2DsNF92dmURRUoAnl+8hKlDgyrXXwxMpv2n2m7YSTDQ=;
	h=To:Subject:From:Date:From;
	b=SuQzfq9m8MFpBRk2TjXIvI7uGEhnmG0Wm9TRK3xZyOuFPPTH4YaVYFNtSFGmmEu2L
	 tU31V7NaRc94P5pAQR2NJCqZYbd6kxwLEhTNdUtEeKaTjL8w24hsMv2pAbMNcRB73t
	 fgNr0UiqcLIKRldCXD086GSkTEu2/yw/2lNaVCvKqXXjy919/4gHnonouyjTy9i23n
	 ucNsL1hU7vWTiIJUPD2//n4vJxM//C/3nuzmxVqinqRhbNJdVsbiaa3llo5dj5DtzQ
	 uDVGNmkFgA+0JUQXMxQsGZfJf7GCyoI5g3eb8i7sL9NpnMNFjKzAVQrv6ATg2ZOd2X
	 pVLJhnscMF69g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9287FCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777079358.31669.2966003571734033524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17b57f1f384197fee534bf54e18d30babf25e9c18595043372b49b0b7d99299
Date: Sat, 13 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757770793
