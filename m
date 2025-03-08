Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395522940D
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741476534; cv=none; b=nY8DBRLRbiGYw9958vqTN9WDullqYU3VJyi2wujt79PRqz0+o52u0p9deFtsi3rjgQFf7cw+JtFmlY1EJSC6RTj/Un8Pi2XWJHqIatqDd1WdafUk1fUCiK6IXILohy3PjEx78dxN145Vfd8FmkVLmiu5TQyXO0rOOlWSExqePpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741476534; c=relaxed/simple;
	bh=N+RAEmC5kToNLwIAr3V2xpNyH3AP07iNp+iINu9k2sk=;
	h=To:Subject:From:Message-Id:Date; b=tqoSVP2kZ2p62e3NYNzB2trXVsk2GrQmDytBzrIRndKtw+ZeFgVFnDIrIsHF5jZ7hnGFcL/+GjNftVolePWAVsMo8F36ueNZBXYbhqPWxi9SLmJO0tl9I82KcSphtnJmJb0qWgfhPlwvp++bj3q+2uv5unJe90JjYjHIrIrGnKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWu50nA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWu50nA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE578C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741476533;
	bh=N+RAEmC5kToNLwIAr3V2xpNyH3AP07iNp+iINu9k2sk=;
	h=To:Subject:From:Date:From;
	b=lWu50nA+3TGNiASRrx/6or7Ue9hvzADTVKLGDf3vkS5IJZ3uhlSATU3tLZcweGZxN
	 2mpE7atwhRhiL1mxb+ZP4yBUc8I3wpUK9veN622r6gE4iK0qWGEOvTpPlParqldoHD
	 Rgd3auH95A9ugxmpH82JyV3yCmeOw/PmvALC65FqT/hiHXRr2YzifriIiWk2l98c+1
	 5R7YgCmPIlPFg9yE4PzxTxYmJCDwPQphTVIkDzEhPwVDZSm79ombk6h3GvJ+4KfLrS
	 IF6XEEL9zaP8BNYeCJHVeZTI4lwtvJASuFTTp19zMKTxp3AGZLjgG6gNLgeLO7KMX8
	 9X21VA5meGxSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C2C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174147653360.25276.15834713481253997770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40308029f87543170abcee46afd22002e04586ae19e33766aecf238535522318
Date: Sat, 08 Mar 2025 23:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741476533
