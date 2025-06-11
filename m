Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A07B2E6107
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749640194; cv=none; b=rgAmgEDyfOEhEpcR1QVVrPsbTQ4jP8loex5omfo8qTgQOLX4grTVgaiuzvg0wQDXG+h63rGKFq3AoJUR7eII73xjpiiRC6qfz0i/Spb2fkfr1umxpUWgx3F7ItqXd0ITzq8LoYFKN1B+4volgKXtQHi9ZmQ24WQWtRlzTtCK/fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749640194; c=relaxed/simple;
	bh=YL2AY3iToxoq+z9Kq59G1JIIvFart+TSkxwex2Vp/fA=;
	h=To:Subject:From:Message-Id:Date; b=cWq7zzR8P+WlfOcsoEiMsplm78buVuWGq+p6m1pHxtdBv8wqCTwiYyT7+Y+JOxWucTJOmMPr+aN9MsRTu+NeUZnX+qfD0UuBBwrwF9K0/r1+7o/M1jRx2OE9vomfpv3ph3G6nPDlnFAT5mItSB375ZjZQW1u20FSddIrcKEEpNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwBIBODT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwBIBODT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A85C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749640193;
	bh=YL2AY3iToxoq+z9Kq59G1JIIvFart+TSkxwex2Vp/fA=;
	h=To:Subject:From:Date:From;
	b=uwBIBODTrjOPoTUqM2cGEs9O6tiRW4Bd3VK9CLX0PTbmEIJ1C4w+s9W0i8VKKYX6Y
	 8SoQqXBhfzXMt+WDkjGtwE2q3iRe4TsiQEbVyfqjL3qh0q3BD0mpRHR3fA1zBiw9lA
	 8VGrfrF4MbvJA2cGscX93oHzSPVYpdCRKwmnVM7mtklfN8WZ6w71n3YRLN+9yvJWQd
	 e+Cs/H1UJ95r+ZXlLk6BNZmGHA1QLNDWc3DG2zZ0iKcu5vpL9yQCmGhQ81fqpvRgdz
	 lmFcrGDCovSL3de5blU2pOszlqaAppvU4nXn7cnvvLD/GQzPzONsIGlhfUd/iPCHlw
	 +f4z/L9qJzhjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91247C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964019358.22062.444571659305446349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 189a463e9ef6db7c74d6abeb5214a941c0aff41f4f3f50f99940f9fd794a1313
Date: Wed, 11 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749640193
