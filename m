Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F891F461A
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747306794; cv=none; b=M6pXoCrU4G8lpcJBcU8nTH77ml7609JHtKe3INlVkVHoA1TYPpJIATm6keGp4slZTiFQGX4pL2pH2IKU9Ozya3OLdQdVkpGrns7He+w84e/4SrdabIOMXFhe/aTaKl2fm7LnIuZ263ZZW5qmAG6E3/yLOtPmbDmaY0zTeIwSXdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747306794; c=relaxed/simple;
	bh=DN2hBjoqDeZ4QRiEAuqyhzLCpNalHodLy2fyCUFHK30=;
	h=To:Subject:From:Message-Id:Date; b=PBr8lQzwqTNw0x76nQ93rrRzj1VrXTAudcIHwPAL9DRx/q6iMR/KlYr2moXCLi6OhbW9AQsepS5RF8pMVw09sszOrJ/mCZXzMgDGUr+pwlj7gpKJ8IqMn0AK/ucfGfzy9jqdEfPfFY2Be34NtaOx4sq6Z4IFJTK/mxpaIY/IlRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUJGhWAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUJGhWAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A434DC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747306793;
	bh=DN2hBjoqDeZ4QRiEAuqyhzLCpNalHodLy2fyCUFHK30=;
	h=To:Subject:From:Date:From;
	b=qUJGhWAjnTj87I+eYHh9R1o62R+5XjujDz7bKdhlG+LDRF47qBX6oNRB6+LZNCS97
	 oOPtpBjr6zIPmr6/xBlo6hXlTP5naAhSxhlBkJb90ygHZFxSBPcgDB3t9g/2r0HanL
	 mQHroJsGP+Kp+gZPYKiws0vLUvCe3qpCi3DFUPMMUYY5TwsGNiv9WvvXJ9uVUEOUnb
	 vbR4vv4tgJmXkooajRjjyz8c4em+MdFAVaj6UTDnDeoALmKQJVxvaY7PMInugdklSD
	 zMK9j3ZLdELauxVsy5uVEbhN9lfO1hMSBZ+iG6Izlt/e8JfwVE9DdbMgG+wwGHMsWE
	 Hb8jcvBYx48eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91076C3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730679358.1976.5396731019763695508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c3adf501f3caf15ecf60f766573e641dc4a285cd203c84dd99d9b777210fe6
Date: Thu, 15 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747306793
