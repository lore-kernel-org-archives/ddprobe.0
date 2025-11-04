Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3548B48CFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762219194; cv=none; b=KQYLRdyYi2KkvkhqWrlTAXo4msLAzZpNI6BDnjL+cwlUfImI4PI9z+MHkAR78sF1LnASoq5rdB0X0gNSzz/TTHbP8Vr3Pq5v613+gCEYwMgvlC5JimQrchUJqBUCZy80y4xx2pMA6imfUFN1zYvGCdA3G2XQ55IE0YqK77XCWMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762219194; c=relaxed/simple;
	bh=u41CJW+n+3R6RaWYfd/fbdvdBanpa3HOG98PhCUMhzk=;
	h=To:Subject:From:Message-Id:Date; b=ngPSt/GNFazBJ55UNzWDe84WmiXwOGfacjDV9hAGK3Sc1CL2KjgmaCjpjisOpCeT9pX1JNAIC8G0a4KTPvnJHXNcfPzYIBEWdRdI3IvcZtPa/djXOfvpkfqCE3X/9GBDHAXJynZ4BUiMClRl3HBCP4h8eltggfVoQfgxbWnSMIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zpa47joo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zpa47joo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB01C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762219193;
	bh=u41CJW+n+3R6RaWYfd/fbdvdBanpa3HOG98PhCUMhzk=;
	h=To:Subject:From:Date:From;
	b=Zpa47jooC0yu+n1Cmq2d60X9btW09c3aPgdG75Nn7/uwmmX/iMPPks01Tcz6ZASQO
	 GXIUpxRSJsu6nLtzDpL7gWG/dczMEXfUO9LHVPxGH5RLsYBFrhQBqbphiiCIjCSMkF
	 BC+ofLUEhypMPzTMs50AOl5lqs26IueYUKw8mh8elH6z9PJML8JJ/HpRseZ0+ikSuS
	 leu7/5IbVc29Nsi/7F0LzTgtY7RmdMdiqCQ/Mc5MJhKjegKLz9111tNPEYKzv0a/R1
	 X6csuYirfBRdNY2117+Ua/cH0JYZktSbS32Q/VLtFsH2T56pBFmMQ8wHvYqKRlv6FU
	 dJUl56HiO6dwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91606CCF9F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221919358.4415.13087357864947020169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec01d0218a5fcdefd653ed08a8469f2ba304cd15d78c8110c5c56e5a2afcbf81
Date: Tue, 04 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762219193
