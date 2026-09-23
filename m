Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC953F410D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790203834; cv=none; b=r1YCzzCv7AYaZRF4flPOXtnXcBGH2+TDTgg0wXF82b8dHgYUM8y/Rc9gMWacM7cYvdATe5wGo1UErM7uNrIB8OwwussM648aKYcihgNrFEDf+KWdOHaZaH6HQXwQWAjE7sAa3vVNq0QKryqpR4IGg8UVwm8BR3YKFqDqNuxCcbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790203834; c=relaxed/simple;
	bh=JbLlgzPZ5Yr17UtYMbHVpiT2bQVciNoVKAVtlBEvR18=;
	h=To:Subject:From:Message-Id:Date; b=POXnuaRSeN6F9Y+SH2gyEiBdIFzmoNhrCaSp1Gnp5xo5DEzfwNJUtB1+4XNiAb5bPbWIh1PsgcIJN2cgOGi8RvmzB6jSDOWtxlpiFC7rfO80nhST2TxPElBH+bqA6CF5QS7QiToTvbM9MTFKmNbRcSyJIb1oahhoYkObWNaPpXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivqsPSIf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivqsPSIf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB51C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790203833;
	bh=JbLlgzPZ5Yr17UtYMbHVpiT2bQVciNoVKAVtlBEvR18=;
	h=To:Subject:From:Date:From;
	b=ivqsPSIfP2oPMgKsa4U9G1c735qAX9C4gSesWbMaWfZhWT9HI/OYR0hdP7xx21NQ/
	 yf5tkUlytG9piOm9EqkBKXEnc3gpiaXv9JnIyk2SIsL+A+5kYPuw217Tv5kqNgdYG5
	 KkkauUymG5gFMC6t2kxTjImHemWv2zQiopTwQaTKD/AyOYeiuq3gNS2FtWG/X5GOXe
	 kN4j3q4UVxKbqtoGbwTavACMFFwHuvW4Nn7PmoBxOJDxp/SV3b3mPounMlqoDf3JLa
	 tgoQ4vv7DDaOuFN4vpurPlH0TA3AbNS70kNc1klJY4m938xlkgjy9HoohuxKSA4XU2
	 4bpoLl+qlfpyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC974C9830D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020383369.316.12180119294002672981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe8e2629c8f790fb99267f404c065ecb36d0c4eb7028a2d99448e237369c063
Date: Wed, 23 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790203833
