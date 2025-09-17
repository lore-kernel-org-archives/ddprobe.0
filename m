Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FB11D516C
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758128393; cv=none; b=rKE+Uh7VF6OgxKO82KP/8/7HlKMe4F6OH6oZ1FaXv/jQKm3Woi28mva+/9VFhy9VCxNa1TKPRXMYmuEQyJhpU70adYd+wosbndVB/7H5VEM8sRxnVHCTh9CGYldntoLqhNwRLiEFmrwrR3Kyzt6JyIniJ/hSbtK7UuK6EsqODZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758128393; c=relaxed/simple;
	bh=/EqYn41XWBLljfT8lNmaUAY6S/Om3QsFlsNMMAq49xE=;
	h=To:Subject:From:Message-Id:Date; b=OHw7ZKjPaIoEi01B/6Xeuh1xs7yOekZt2ORSOYYZ91QrJ4F+ICPu8uAcWKbc0k0rTNSBubPpCifGtpDTbZMsF/73rvUce21nehM87ylSe88PAwuNeW2cPTMsa/jNgc2vYdxRsVKhcA9Ea4XtknLbmbkQHcGAviseQfga/hlcXok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bW8ByA1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bW8ByA1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB92C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758128393;
	bh=/EqYn41XWBLljfT8lNmaUAY6S/Om3QsFlsNMMAq49xE=;
	h=To:Subject:From:Date:From;
	b=bW8ByA1dZ5j31H4dEvQY7lLNrn4XWtk8ze3zOEUbZaZS32SBxZdd6n9fdgXj74Pbx
	 fMbs1UTse14SVPFqNKrlM9ckMFzHObgYIlTzZ3k5WAbGmcNQxY517X5oV1aJQSkXUX
	 pCyOGApfFvSehuUhWQ5OdaA4ZY19AqyhIEhES7V/AkdMHWIgmMaZdTfQ4T30V6h5TI
	 4g1suNmKgH3W1UiJwqb3Kf+0bgClskuidC7Sm0vGpL1rPkSWdnKtdbTSxCUbkGuJnG
	 wabcbMV9vwzVBTsjuLEdSOu7PiY83UmvrB9qYiZ+NH9wupKsSAmh6N3fy0N5QvQziS
	 HGcpHjkj3Itrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11BCAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812839357.13140.5207002253264537645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb0c5ef2d9177d8ca956edb8e3996609085b97c1b099f042236dacad306d71c
Date: Wed, 17 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758128393
