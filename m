Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAEF239086
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754432394; cv=none; b=Xfnp6F8ZDUfIS5DZ/AMSf/6ToHZGcw1UatHPa4WX57JsMwq1vK9DAE8wg2wWM/TvY++2J5PhHK4jYvcKcH5Xzus/jkzFlJmAz3toT1RP+KVLY3dbIlnGu+5baFiGsrXmh59+dx7DXoKyaZ/iZ9dICecNl8m7qxFTbjji3Whj6wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754432394; c=relaxed/simple;
	bh=HeG2YTNeWE2LYGYBfDbsUK1d0YOgJ59/sfAfGR/hO3I=;
	h=To:Subject:From:Message-Id:Date; b=Tzs9rLwtX5ZkBw5GK2NenmaYQpn/dILZWdgHjBXsewM8sWVeUqgreJWZpIL9tBMWk9L0zdNnM6gKCUbmoeyHm5pDglmyJKJ6BAb1d41ekqvjXAXYhpA1oVW1DxEx4KOslmVuoOynIipUxzseEgBMH38GQ9QA/U7JN19h9/MEpAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TP+R9UFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TP+R9UFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F4CC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754432393;
	bh=HeG2YTNeWE2LYGYBfDbsUK1d0YOgJ59/sfAfGR/hO3I=;
	h=To:Subject:From:Date:From;
	b=TP+R9UFytu+cnBXmudgYYKhbIgHKtdgFtoY+Det8AuRxmAzpyKDvMNTnX5I71ydx5
	 Vg0ZMofITFIRKqVRfcmaj7YpjkeJfD1z+b28/p5RU2xhD8ffC3XckvFz26BOuMRp0e
	 ofvg0uRj+/Exip8MoYSb1bwY00abAgDzlbNXkdevQgNNip+OIV5fY04pU8YKyV42Uq
	 n6nQiDlr52FxnM85i4dZqH21tK2a4bc53uit0EtgF+pEUNVU2OTSI3kLZJQfqHpknJ
	 iSZ/kJoLcDAQYB/r1GmVZFTmQ7ZhoJAzz0rGylBxErNVDhg1mQKJpd5YKoTpenNtJf
	 wYLR7d9aq72sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F668C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443239364.31244.4394359845183101570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3817da92f5e9a3a6d2d4f2cbb7044dfaf862231aa99b5639bf2cb69e54e9a75
Date: Tue, 05 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754432393
