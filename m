Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4E222423A
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772964294; cv=none; b=YanErdr3puV82eHzVM36mPadCLbw7T0NPoT/JocoH/CtOHf1dlI0X8kGi65bnuZqrofIFpoxR0VLD+/u9Qj7uJLkolSv+gmrCXu55TrK85YaUP1K9CQdUy2ZLcSUPSWnikxlNvLXVDpSSYZUu4KOB5Nz8cYUS/2xiYCAaJPCYfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772964294; c=relaxed/simple;
	bh=nMzHzcEiV3KULPK/XAZGDLPjGuNxMsnL+YnuGne7M48=;
	h=To:Subject:From:Message-Id:Date; b=XsG7veWpnDFSyIqufdDqwX1Z3DaZV7ypB+xSUqJjGqt04XX2ThspOES3VyVgJQ170+jX91v+1Ot2xNaug/we1FStiM617MaMQdCs0deuWKdADcKK55286u2DlB5KyMD+Q7CbjcPQXQgvlouQAuu/h4jHaNkahTFJZlMMS79Tdss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoXkv9n3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoXkv9n3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5647C2BC86
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772964293;
	bh=nMzHzcEiV3KULPK/XAZGDLPjGuNxMsnL+YnuGne7M48=;
	h=To:Subject:From:Date:From;
	b=AoXkv9n301bZVpOCsfUWaBbQpQSxUFQm+NWNUFCI2PEscn8wK+4CjtoSBWYi+S04A
	 79Xx9um3tfpVt9GRgivOS7H6d2SAff/mXVNURJ6y5DVBxkgFSdi87lbYLKQDeOrT0u
	 z1Ogf6r+G5aDrkgKyHMvp3EUhlp+Pg+8OcmaDIjwoyfII/w1kqWTD5lOwhnMlr3qDE
	 EHdlP8NlJBaVgT8Lg9Q10DqBbF3tBOmuzan/U6DCXGjBW98fQzZIcfJfxOFSoE4Tww
	 XRlvHTY6a2zdzEsLOA4lmKbo5ol/eaSIZCey33dlpj2PHeGIMo3OVghB4w7ToBCDgv
	 seasmI3kQV1zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9258CF55137
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296429357.22808.12132658005736277675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7e1143027d7a2fa790a7b46a956f291faf2da56fe53743357a1cfd5199a1e0
Date: Sun, 08 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772964293
