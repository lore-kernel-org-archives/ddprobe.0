Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D991DA53
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738498554; cv=none; b=hBtEbAbYh5zapn6td0S7u+lcNlc+Q+tRmeaqujr694fi7QRD6NUnxSceThluTcwgwBv5GdA/rWLi56VMiJUicYySZtoF/rJcdEH6dznFFwq0qz3RvsxlFugR8qPsJLvfsxq5oeqIjMUanlfx0lOKxb4bnhkbJhWdcKj8J/mJoes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738498554; c=relaxed/simple;
	bh=KxXH9llV5S7a4aOFXdHnw8igInflcFH/rETUK+nyOhI=;
	h=To:Subject:From:Message-Id:Date; b=c+rKQQQ5Z5GA/GEuUAEM/oCSrwCrjH0EAsP1PUYSP7/Ox8xXGxS4RKoTHkxHDYCapl0AIcsHX5LzLbaVOAg6KSAIFjrY3lWUQeqzqkXXtclg3kYlOcrtOSyHGDJhq+TdWK0XVTW3B3OlaTHQx39TcmglyhhMRJ1SEZhGB7SQhkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABTrDYts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABTrDYts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F5AC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738498553;
	bh=KxXH9llV5S7a4aOFXdHnw8igInflcFH/rETUK+nyOhI=;
	h=To:Subject:From:Date:From;
	b=ABTrDYts8fHwHLfc+I2qkeUME4s4MssEg21h75Vl3aWOiwH3FHS8syblDkNO00LS+
	 BM5YER1v+pKtMdNcfjyjvg4jFVqLOBdAIxuwpOSBRRF/5pdBQcedzwhol6f/A1/ClC
	 3BAUz4pqBgm6Y7kYFxcEpXL0mAQLMwuwOhN/6/t4/c3oSLmNJr0tmFW+4txZGOrs9M
	 Cse+MwE1bxGxrk1wo+WDmuOmuX2MpdUNRBRDMDkFBsjNHTFCdybs2FnYIJrXKgtg+5
	 8/9Bwjpbkh9t0DeTY9L/jBUoMvpHpEnHmBhtA7Cob+X4F4kCkUY51F/x/qB0eYB6md
	 MAaRpXH2SgrlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978F3C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173849855358.3055.16020296430217258950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fadbb9ef342c4e53f3a783efa5f2b258e7d63fef3c31f7e18f8dca9c5309fd30
Date: Sun, 02 Feb 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738498553
