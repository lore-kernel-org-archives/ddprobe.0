Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D284C79
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750463394; cv=none; b=QNHC+Q2y4+Pj3ouT0r+NTaz+4VzHekcl4HJs1N2t70lIUDop2ahfwJJXlTCLnBjIlJOmLeWUmW3bmX3Yo1tz0TtfQK9qinnl9+J+bBRZgkWOidLHKe5csPbRFHvAPjHDdRAjd9uA8pKINAndobBm9eDKmYbSewXODKTCxb+MK6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750463394; c=relaxed/simple;
	bh=1EPSC8HpWp5aRJdn1SI+4xiUS4BfReHSxkc/rWvUMBE=;
	h=To:Subject:From:Message-Id:Date; b=G4GeUiA6KX8IFVWRNIF6HzSvAxcW+Ad4XaU99vRzmAIRV7BquDXgRkIQtrTN/6sxHJPzytEDDvkjwwwr3UmRaL9bBiupq1COQAwGh8pPGjWycclJBzrCnxfUvGIaoNXIIdpJR6omcgbjCACYktJwtgS4tWhLPWD7SxoZZMTN0CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xs8v5d3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xs8v5d3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A241AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750463393;
	bh=1EPSC8HpWp5aRJdn1SI+4xiUS4BfReHSxkc/rWvUMBE=;
	h=To:Subject:From:Date:From;
	b=Xs8v5d3Qx2LAAgdlFiWUMNlo58EBIWk3aDnMiVBCrZ5eU7LGAurzv3l2n3CAu8Naj
	 LlYmhNxt+90YTB8SM0OKKpr6/rTawYIhiK83HXCFo1j4dmrrmd0PuvJj5Qku6Hft6Q
	 uBiSIUdT+jU6BiEdMvvS3Fm9Xh65L1HDIBCRntiYVVo7ZdwyWYzIUTEysbbs2tReep
	 227lgIzEHFYnXpOlwgPZLtdwhpB2OMOXm42zfiOc/aKTx29F91xLcyDWkShkSNr1sb
	 rG3v2LBWJ2sMW9dsAB8aXVEM30yo6nwY8aC3Wj1DKNjxJ0lvKiIQkd7qq3GdttV3kV
	 x7aaVOv3UTOoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F6C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046339357.3846.12878721113320491486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3643dabfae5d5273b3e14546f417d9547ec75b310a05e13115b58348d210eddc
Date: Fri, 20 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750463393
