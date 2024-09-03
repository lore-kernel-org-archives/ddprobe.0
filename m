Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2533119F402
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725354354; cv=none; b=Uj1EvIm00Y+OG1oZ5ic+kOlbcofbEnGCTxVeNojCfG3/vSB7HZUAZ2+5YFvkwFR1yMMYvCjP0PUbNF6hUP7xi681lAM3zbiSYf/QMuZ4eZuDRFYE7jUV4EJ9WTGsjN/kPqWD0jyqofd2gFVkKRQCHgVCuML7Wnm3gwgqXe/pbds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725354354; c=relaxed/simple;
	bh=PkSaFlCEMyw9nZnEQd5MdBjEkZZSH5g//t7rYIijsak=;
	h=To:Subject:From:Message-Id:Date; b=CMi0qTHGKWYnDL2jTCyAndPGGM4mrdIf9WHl5jI1tbhxmdvVp4Fzi5s04tTG18aoGJpwqmk6+kQtTbJ+hBY1GHVKC8B8makwzIXx4Wp4PZh8cSpABVnzlRxW4X3xE+AfrQDT5iufkCi77NgT+fBZ+z0KowmbNr6OSy2z10TRN3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVDGP15T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVDGP15T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24AFC4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725354353;
	bh=PkSaFlCEMyw9nZnEQd5MdBjEkZZSH5g//t7rYIijsak=;
	h=To:Subject:From:Date:From;
	b=BVDGP15TwiwP7s6SCz2bR0hyRaQodNedJY6mZC7TY0Y9JH4hQy8f13+FqkuGmKH7Y
	 DRWMkRpZyFgnHV8teVW5PMzISF5z7g1eV1fQfG1A1FTlheGf1rxELeM+apoHkHcy/m
	 fanD84Aep88aRyIivKtbOfNKAE8jL9SAVWN3GglDU7Uskp0ciBDjY2Fqp7JSZUOog6
	 L0YY7tdsTG2adiCaj8iel8HEdRk2xeVHq7QWASQb3LhzMMVPBwvw2OIqm7jnBD3okP
	 IUlMsi1g5nMh/LycDvetX8PVR2Gty4Xh3ElwMVez68VqNAcvCtmHL6GmiDbdttU3N/
	 mqWavAdB4HW1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99671CD3420
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172535435361.24269.15751307082697649525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1afa4da3f4891373d39823ed81a252df0c38020a1b2d64da600ff78946ab4d2
Date: Tue, 03 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725354353
