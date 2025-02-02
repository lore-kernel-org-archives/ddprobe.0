Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432503D3B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738512354; cv=none; b=ssxH7Y19T6EjR3a2MBUUVSt3RUoZgrxxdejA+joswkr2oKU/6Fm4StkKXOOiNTATHkR0/hh1aMbN5aV6tmay2bMdnjuGJGSInZoJqqRlixlOFFm7TmLOjeHIp5zCpaPjhpdJoeJXLXZN2PsVT3fMmUKbcC6bU8kg1vVa2k+fuDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738512354; c=relaxed/simple;
	bh=duZMMsOWeqgSlNpJKQAZdFIT9Bja1Ug+0MUQyW0g1qA=;
	h=To:Subject:From:Message-Id:Date; b=Lm1p5fkGu2/igqyWpVwuajWgCBhBSvlptg6MRpmzP72L0YHvQgesqvgH0bT95iIaNp2aDdBzQ5kDvsk+XUWcRUyjTxMqNfyZdufY2FHUgahLPFiFypzIBwMdcjerw5W28826G/S9y6mou+1j+Fl31WKIodjbTRQ3/enlYYZIOpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X062oixQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X062oixQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF4CC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738512353;
	bh=duZMMsOWeqgSlNpJKQAZdFIT9Bja1Ug+0MUQyW0g1qA=;
	h=To:Subject:From:Date:From;
	b=X062oixQLGMW1tlCw5qafCETtlZqI5UJSRGLfqA+YumAQGcc5hi1BDWpT3lmyFuj6
	 rOFwUa0fqNBr2Zt6KLF5dCeHNGnuEHkedbnqkRCZ3bqFNIZjEKF1KtuEttLEfFeFn6
	 UeFWzo6+p0KPAkCoGhfSqUlGNGU7POO9f7zBHEzw5NP9okryfExAqUHFH9NinhoJ9k
	 g6jwXHp6+sx72i7Xoz472QkknCo8kDnLyFQ3Sd4C3yPHv06RItMBWGwSWmdd1jLldn
	 l7NFKMWqlv7tLMDYsBZ4IazzjcArN0lTHb3YJ+e44UwJWT3CwJJJ8ldJk6Oa5hOEMx
	 wo1L6N12a4u3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990B1C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173851235361.5163.7392567291039622596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb065ce51237ec2eaec12a57d1390f2281f8a0aa00ca7efad6ee125e0560a83
Date: Sun, 02 Feb 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738512353
