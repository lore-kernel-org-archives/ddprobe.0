Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82DB4BE71
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 01:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715390543; cv=none; b=GxGkrZ4vBTzelrZ35ywreIKuiGffvmZCIE9lNbBb6OzBU/dP9zhXL/rDijtRnG/KJXfCid4dSIM6zcdY+G6Hf+TXYPWCXAdx1J4yxwy6YmizinmeULzvC8gUPVva3cBCmATvA2fbD2OhwijmS4bvX5Bw9hXoFY71hwrJQSX84j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715390543; c=relaxed/simple;
	bh=YhrfY8XWzuzZeYvJZbtmKjreTLb8sgrlFlqfTamM5/E=;
	h=To:Subject:From:Message-Id:Date; b=YUgUEcbstpSwORyshVskTQfVUxH6eKyzbDXFaJyQyoZHy0E6CBbiuAutc7zsu+2hYowaBCKVpNhqBw5xuyYWQEDN3l4RULX8FoKQEX5IRn2G9/wG4ntiV1SO5ddNGMpjEfV/yhVLO+QnBawmU7GyMaTyynW/R1qIUu6OFK7h2KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gj1SmEzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj1SmEzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFF5C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715390542;
	bh=YhrfY8XWzuzZeYvJZbtmKjreTLb8sgrlFlqfTamM5/E=;
	h=To:Subject:From:Date:From;
	b=gj1SmEzAazpgNcHTmyn/f5OEijnJg7dR1kGmvURRzhi7an5qPm75iRajHqEQsw3ga
	 +CpDysvnybKP9tyXSzGnNBjm8wvJI2XNybifU66q3EVBqfYrf7ZO3PwF4RRDaTL2n5
	 xPFOIIqreLFJKQDUrwO1jWnxhyvm/hlRSreDd5IEdCDNyBA+KDEP321GCEpCiAy7QP
	 ErwCoYd30MtTMQSn1VdO4g64/ACxAP/KNXWh+JtV+n3ExrbMpRyUUpytcReeVM4W6C
	 FrYAiAqvPaIFN2VhYj+Oa3GO0LaPQ7CblXlLmiQvGrRQ0iYHD6eRfX9aOT3TWEMhsF
	 IRTvOnfrl+3SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0247C25B10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171539054276.12659.8104939494490434599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b7eab37ad5c5883606edf893b940f14547a28d95ee0253a4efbbc79b7dd622
Date: Sat, 11 May 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715390542
