Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD22372
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719108743; cv=none; b=RYUWilYubZTId3MmZeqkiVEelQQOVhnmcCHGaOwaLLQpmK1DyTt73+BJ1ZHPM7ZQhnZXzP2nlUH+L4AbQdPzudQGCXq7Il9uXeinLbDbyT0RCiOsXj/Ys8xqHQYrG0ZorYn+OolbPFLDDSHDT70Gyg1Br7sJ7RDS5OXESxEUjSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719108743; c=relaxed/simple;
	bh=BgYfAOToJyAxZhwUgnipkOZ6jmE2P/dQCRLHsVv+ivY=;
	h=To:Subject:From:Message-Id:Date; b=LtAz+AigmMP3jAdAC6pkB8MSHEmleze8LCYb5kctEh9gs/fyfMYIdQ/8GmuM1mxZL2Oxw8LH2eZ0LM+/QaXGj1Kwg3Hhr4JwQSKZM4qDcrTdS8yyXp3KM82u2e63IDNPhX2GwazEcz/XB+gQRJuL3/QCzCqYmBprkJUFXsog90M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBITok2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBITok2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C03C3277B
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719108742;
	bh=BgYfAOToJyAxZhwUgnipkOZ6jmE2P/dQCRLHsVv+ivY=;
	h=To:Subject:From:Date:From;
	b=uBITok2bGhsgi4qgcxPeV9PtNotFl7woO6W7YJroF8LgDAeeduCh0LD59usf0gXdQ
	 +j7ZQjNpiwGoHOf+KVdnlTQfFNcFYzuZqSaqr/NjujI5fl1ByBjGtnbODrOVbl4beZ
	 xTvy3DHKebHLLH79I6NlUtUEs5Bvosv5rN+N/d4yZemZGJ56jZWpa3PRVDUFEyiqJb
	 vAIuh49r1XJWDZVpWEdB4AEzibEBPPAJN+lF4YkB9wzS7SbxOYK2h9oSjvX6SShCDH
	 r/yCy/y6GcHHXF7tQLy38VGaJIq1nwMfZuE4HLF+QLVLT0IlZlsVs+LtQt/UVVKeDE
	 dxgLvldWnsgLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3B0C2BD09
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171910874275.14496.1490731045063051956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c5a47ffff1f1814e4f9a27e7ab0596cffbadf392d74dba77d1cdbc0fab5fa3
Date: Sun, 23 Jun 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719108742
