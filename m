Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412841D530
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722807354; cv=none; b=FKQ6e0A3Lt/iK4RKFELyvQ9aQ1TgYku6RD4FVPZGF8MGNYXB91S9W0vpntBf1QiLdPt08LoRk7n2d/LutfHFDfNY0UCvGQRHFkItXyAnWZrV/4ROD51j70i+/FaYTuFOTHehEcLGTtpjzwZ9O77Ke4rITggoknmqn6gBmTf7TFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722807354; c=relaxed/simple;
	bh=/dzeYZUXvi0kADCriIIlGa/OnteIEGMSPPVB5KPQamc=;
	h=To:Subject:From:Message-Id:Date; b=fCUfEcmAQMNQToi5nfr/DVSMJ6u5+8cvga5RBM494/SIbtCzdXPtu+7104xwNydHZZ0zmdgukRzFUDBt0vykotNdZZx/qdaPK79LrPt78/vA3ICAlNhWMBMFQNuYMs71Nz+sTsJUqWBlKXZLbMF+XxdYFKFqNTqbK2qvwuGFVfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdlRFpNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdlRFpNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5B3C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722807353;
	bh=/dzeYZUXvi0kADCriIIlGa/OnteIEGMSPPVB5KPQamc=;
	h=To:Subject:From:Date:From;
	b=LdlRFpNtO1I57wqLHz0SD3GCAxXVf744wl52htdjpNSSQEaE+WXhHJ655v98OC241
	 Iv6brFsULWS2DIEASlCM0g2Z1rK/GfT88Oftx2LvOYZ439+hTMWjWWxhRyra1xGM+B
	 u13WL1ht7RsV7/mUDz+U1OV/GzfbB/pvA0F1jeLMszHZLX9Tc/NBsvVf8Q9552jKFe
	 Nq6IIR9BskyUDk/bYUo6bnv+GfHMv2N/BKrjKcQkpZ/SXzV9hI51mWEnd+6KC+fX3g
	 SQ/S+8qSkT02ZNWjyWjCZ98ZYedxvkL/nVPxnS4ZaDNiI/TQZdFek0p4LNRzMFeDn1
	 KwZdvvBAggmRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C46C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172280735362.1312.10770809284248486566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749958bb32e5c1fa2bd4942d5f26a164cdb80afdcbc344374b50335d5c15e595
Date: Sun, 04 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722807353
