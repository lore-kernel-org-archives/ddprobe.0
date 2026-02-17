Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357E7271450
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771363494; cv=none; b=Ohe0OZVlBeuQzu3Av5Pk1oQCh+EN8HawkjRcRLg8vsv27NA73cw9hsCUDrPegX7RLFfjJ14E3UvbMuIaTqeKm2UDdbZqILOkCdf4f+5kiSPapTlgO41rYofE0aclV82zMcfRaLNsrYswrtNymULZdsHpuDKiBHi4FDrJzKcK9FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771363494; c=relaxed/simple;
	bh=w4Lxm4stp8VRStCzmjHnt4jk8YvEr2tCNSrPndcj2Gs=;
	h=To:Subject:From:Message-Id:Date; b=XI/3/YRUpaHyRr8XRu84hCqOy4ZqHoo1WTPOZxZk+kWMfBTlICZZjbWv4wcdKhJDBc4PfWrwY61KH6T3pzFzlbEjPSuybi7mD/Qd9/QxmdeW6a/p8SbmhtZfBDBRgAkVf4jW+jhzIgWut/w2kZLCnDQDZDiWIVAEU0PBOVPlfJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqIuozFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqIuozFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BB9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771363493;
	bh=w4Lxm4stp8VRStCzmjHnt4jk8YvEr2tCNSrPndcj2Gs=;
	h=To:Subject:From:Date:From;
	b=EqIuozFps/thZkLxyYdFnVhdS+nyquYIvza6g/ZbvsL7/ayYMmN4LgcRY4/anGNp6
	 +MvYHIlxYbznQpMfDlWzqs8vt+VQAw+UYxMtCLiJ/NB/5kvxOdVi09VmmNAsL3vA/V
	 7XbRauKqWBJI3rrG/kghWTPTn1kJKY7VPneJwh+6yOp2FI69urenK/Cs1h7q6uoQNl
	 /a/BEk5yNzHP5JDlp9pOj6sfhC24fc/kYIYQONCiDqY95xVapbK9C5vt5lSagE5n7N
	 hEY1HWV7bIrJECjrrwPHAVpbKJBKRdlPkDegVRKCC5hOo/R2drz7JnIxiwTI/JrOXA
	 rrACRm9M9Jt/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98166E9A03E
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136349361.11162.3830188844929054993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a268b1344e0e4a4f6d624afa51857b754f01001d6ffbc83c3068d7907727874
Date: Tue, 17 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771363493
