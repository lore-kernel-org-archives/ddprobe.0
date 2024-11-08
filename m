Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C49A7462
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731066954; cv=none; b=KRVScbxd2BwPwlugIF81DcY16CyGBjSp6yBHXxGsQctnl1lsWkFD4ptF56fHfjys0WG14h0b5gNjlHyWIb7wh/X72tpAQ7/0l9UZZLP5drOdKnlJHYKTxC67XRj0Q+uPRPhVmc/KrQeZXLefI+ApL9H9+OZywJLn0KvuLGO4TmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731066954; c=relaxed/simple;
	bh=Sh0O3sXept5cSwiK4aOn+r+MGG7y6FxKOQgKHyBECP8=;
	h=To:Subject:From:Message-Id:Date; b=ihJ1lEuOPGD8/NFemFMu22TLswpSrIQo1B18QSTv1N2gIXvUIlu8KXbYfgGE4XgGKIDJvB4EOuSFt/hadurIcLaUNIiMs0RzHCdwfsxCvehMCDSzdPT71RlCrcc0uXYzVeatTtJcp3DGpZt8ptzW8jmUguAmAUwFRZPPXUyez28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Newm45fK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Newm45fK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A98C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731066953;
	bh=Sh0O3sXept5cSwiK4aOn+r+MGG7y6FxKOQgKHyBECP8=;
	h=To:Subject:From:Date:From;
	b=Newm45fKnN/UlYMz38v8A90Wc3FSCjbBVUweovB2g60bjS8kgUKqDOSseJ4quBOBu
	 8YESzerfjhVy/954iK3hGGrNzFmV3+p+s6LlDvssekZLfBdgqfFDena7OEFFI5p1NW
	 er2GPW9lZu8hoi22p8BOBkRT/aS3Bmb2VYRrShQIJAb4FWOjEiLNU14Av1R4V0n6dS
	 5p6nhzeWaKy/utL99kcxtM9X/EAoQP9Hz4RmZzUK8CNu6neS8vZkAQ5bVYdQgJFHJM
	 GSsLah+rU7hcaFlm3zfca3SSE4TwHeQwf7Np2LxSvG/hVv62CC3TS7o1n1FSni0m03
	 paFZoEkkuSR6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB2D5E15E
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173106695358.3812.2246217043574352467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e92bb98a00905cec5d5ddc8a8bfb0f6b35f7a4748d00cf527f410cce47de47
Date: Fri, 08 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731066953
