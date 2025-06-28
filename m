Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BC31C8611
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751126394; cv=none; b=F6ilM0R87N4+r8uq4g8F7sVXN39XB1b5qQ2ii87hSLMaTt/z/cWRkusQCDrFhhC92dS9IjMu5tauDxC3eK7mFSvM2Ay2bY3Lz/Yv5fu+WsXapVHuf2aGAr80Gs8h6HGp+iklSvxgeSL+aIq6nRkxBt389wn6iLa21YuP1dEypzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751126394; c=relaxed/simple;
	bh=IBhhUNkP3DJtZkntHJimcCDIEDfxtqQ0XSr4KrmVqAk=;
	h=To:Subject:From:Message-Id:Date; b=SAMHecJK6nwtA4tykHNiHUdSHmJhSSZN+HYW6utt/RsOGGM//BgYL3WVnXm+S1rcWF5KjYUSPeDpHpA0uEN4hW+WTK5cuZF7KHDXazj7HhxoCc4zTRZ3Yp1vbMFLT4wp7r1/xbxOntaLRNL+ZMnPKdRxnjhUn4trev89UKMwB5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsET+ucA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsET+ucA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4E3C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751126393;
	bh=IBhhUNkP3DJtZkntHJimcCDIEDfxtqQ0XSr4KrmVqAk=;
	h=To:Subject:From:Date:From;
	b=VsET+ucAC3Kh7LnNhBi7VoTguPV4OwQ2ZmK8o9zIcSk5c7pZ/iAHIkPfcxVl9y4pv
	 ZoJkuQKjrIrO1A3KhEZjpUCLyU4th4uMrSha42p4TLUguYy5l3BkT7cHJQxLTx0LPO
	 DtV16jHabdGvp/bqN2hCB6aDbm1oz74NWuZ/LH9oTiMHbNF8jpFDorjDu6j4NufGtD
	 HNZIBCgIPbcft+pFUVxf6pF97Bpd2UuiPlL+mdy3oz4fF5JW1FYrx30BjJDTQhHki8
	 D8pH/fqynneoEIx0yVCAattRWhRAlr9Wuq/4MdlOFJplEV0FoZQB8bjl5RnFqU4X7C
	 yR6wPFFN32QsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178FC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112639357.8234.10497765464676594770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e649e9da9641c5adcd1f8cee3ac050d2d6833cbf347d87c9c139f4c17131de3
Date: Sat, 28 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751126393
