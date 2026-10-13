Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 935D5526A82
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791925834; cv=none; b=kbidr18SBE19B8jjjVsLF955INvAdpGSFNJ4/Ic7jKpN/hjMnH3OfHnZRqFWkNTD4MT4y3C6jZd+bYVzCE3F/O7uUFOQENZGuC7VT5EtNqYIOxRPvBa8b2RrUeXXYHitdY8qOBkF7NFCzxQBwOxewJZrpWTe8YRv7pEXj9qfkhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791925834; c=relaxed/simple;
	bh=JqbFju/Ej7Y9ABr+fbqd/GeGnJrhhLYB1hdqr0WO5zI=;
	h=To:Subject:From:Message-Id:Date; b=sspviZXClBcvhw5IdUzVAw3c3A9hSSsiH0meY61RMmcHRXBv0wSfah2A7dRZBHB0PRNT7gybgfvST3xdbcqcqdJDzsqw7K3E0UMZgzKfn5Qv7ozpqu/u4R2l6cNSSbRE0Pb8N8wY+mGYv9x3Rm1khIuamQqwvoCgSgaTBIs+qdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FT0v+OeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FT0v+OeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D742EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791925833;
	bh=JqbFju/Ej7Y9ABr+fbqd/GeGnJrhhLYB1hdqr0WO5zI=;
	h=To:Subject:From:Date:From;
	b=FT0v+OeUHfhZg20cAv7pt/Fykh/OvT+/VDuAl9TY3Jzq2XAHuFc1ubikfnkswkX+3
	 c0JX39pFuQB5ehPK7YZ5hsXPCaB9kMZUBX3qK1iLISe2WH4VbeWeP2N3LjkJd3lJVZ
	 Em459BXcfvyY9/wPVxw8+eCQx1w5zqNOxlY11MmPi32fuTuKEj8ddDy7P5Kf8gupoH
	 UTGQncgo0GC9o4xS27AIvBv2z2qORZUO5QF6L4BRknRNOA313ktFl8g6OXm1B4OWNe
	 wm0QfqxG7FdhwX2kkzQQJTtEZjl99Sl9feTlYfm38k6zTPfreuWJQUNaij0bQWpYpz
	 YErLF8f0Ap0mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E8CCC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192583371.17381.4632410596519358386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793e3f06cb18f62d4df6ae08a719f2f9d8df0f845ea6900c9f4804b55c008fa1
Date: Tue, 13 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791925833
