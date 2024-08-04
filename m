Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24065149000
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722808554; cv=none; b=IYB1wP8bgrfQeEmjQkTC+Yxtsvl8WjA02/bDARBf5/2Dj7OA9fIz+Wq2EIcp8ue2nlscthH7mqBhxp0VFrXC1eMLNIOA1PZ7Jx7zWdCwWqh94Z4swkJ7AU9+aV3uaZyXbtU9pnklIiyapnualvmi3NiKODjZYypnR3h/xDot8yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722808554; c=relaxed/simple;
	bh=mDvnh6ly48GjNKEcol2MkBgH9+ENt+/QAhIKgby+bNA=;
	h=To:Subject:From:Message-Id:Date; b=uWrY49vRhVifIcSB4Ho9AP8thVK5smb372R8U+N29ygVz8OwRxY4T7krAK/UINTuyH+hlSlALybKQ67CB/WQgFK+C7ldWKvmmuVHzUYFHVkhJhUAXqIpm7pOFrw1JIu08FJRGVqS1FL+swJ27wqQ4HKbcLHKmd7yVchLwyCpOGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQestQb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQestQb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67DAC4AF0C
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722808553;
	bh=mDvnh6ly48GjNKEcol2MkBgH9+ENt+/QAhIKgby+bNA=;
	h=To:Subject:From:Date:From;
	b=jQestQb+fw0Pe3spvs2LNYMARmNLow011qXS4ggryCErDMrAQuBYLb0NVXX06yWQi
	 McJ+Ib1sevVxK5WY1p5fkxEilCILdwOqVWDR9L6Z3eoGMiqWKadEMEEI4ynunTl8qi
	 aRKo0v5nwkigEXAoSNXxkpN0f3ERPmJ2l1EsfjxvkAxp4sc1Du+E0VkyX9vuzWz3hS
	 Pm/8PuXwJQtXpntH1+AMT3B6bfIrrcetByYFysYebgiRZr5Y9ySIQnwjR1OgqHtDrB
	 V/1G4xivld6qyeZuFrdHDeqptiVFJSTzLLtCvvcqJ4hhnF2RjjGWWWr2eGIWQW6P32
	 +1WLvAVRGI72Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94872C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172280855359.2799.15627241624128030712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b85dd99945ac19cb1331cdb6ff93ddc606f1f6254a33875c6b39f09b7b0f45
Date: Sun, 04 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722808553
