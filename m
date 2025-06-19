Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB4122D4E2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750345194; cv=none; b=Gw9+tDPNrCTdSzxW9kiWMOx4AmBJiH5bItPLwmagWeDmgM2RI7asb957bWSFCyTPcrqaWKwd5bhRdaiVSIHIMYC4bTpdu+4VhZBRy4gwNbtdi5THaNLylCGYmc+LNAGJ1Fln7bDJLxwZBmkVxhxZsauXpHYPOE7MiHX/3PQ6VGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750345194; c=relaxed/simple;
	bh=RKbYJcN0aqPLC1lffAZvdDeXFJ6c7BVDN6Z9ZTeZvCk=;
	h=To:Subject:From:Message-Id:Date; b=dkqyVXEorSjtHVnlAyXupvD1WVtlcSTK67bQEzofUKGfV0fkMYAleardX6y9TyYQCmls/hD4g4jEIrAWR43V+M9pNVQuOjNE6Nswz/pVytAG4ERIMuAc1K1g2VoqMLWOWO3Bln9los6EcSQ8eQgnk/6/gpm3BLhdba7OYiJzoLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUSOyQJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUSOyQJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B13C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750345193;
	bh=RKbYJcN0aqPLC1lffAZvdDeXFJ6c7BVDN6Z9ZTeZvCk=;
	h=To:Subject:From:Date:From;
	b=kUSOyQJ8UN7lD0/J77gZMQvM9CZqEd8qJHSu07Pz+7vVeMtUPeytVczSmQUqZ4oqo
	 uttzah+E8C+YLuhwqrCaGnXo9RXx05DzHuSC1VW/UOottoVTcVW/oLRoKPo+lxMbNQ
	 z43ptICH1UL2PIQn4YXMB79Heczv+150A5VYIxLR+IMV6T71CUJczq83JixmdtCZkE
	 unrBMinskvQ+UctmvUBIUTlD1nBln2xSsvkPTtrEUfxhBpfV00PdwYWPYa6gXl/9G4
	 6jJ6ix+41FflWGcTxf6xoE6x7qiQW7pw9hvOQVuzimlwwiveALXJ5IcWftgTZcz+/V
	 Fj5nAbFflBZsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F08FC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034519357.30612.10423950544061369285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0958e9f500091a1c8f8082a64f6c973fe5a6be432072d028a20da6ab2bbdbeac
Date: Thu, 19 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750345193
