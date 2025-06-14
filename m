Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E3E22F774
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749910194; cv=none; b=oo8bNbUUzkr3N18zdLvrFmEX1phONsHGkDZLgcfOQ+sDb0aFS9kbXTV3duZbDPoHAQ6LEnj7H8hp7PoYUjR/cSXGoBzPPnuaRvQ6y5KqkC6erBsn4O2D5B/fn//YeNDccUCeJD0USfmFFFwvibPTnU0GzcqnOcx1aAE9EY6gJkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749910194; c=relaxed/simple;
	bh=sJDXXb/hltSuc9h8tn/dWKrrfYHmwtJN10+pBkB6Rxs=;
	h=To:Subject:From:Message-Id:Date; b=Jdewd3lLzu410isvoY09Ifnq9JaCcdANdS+Kw1v6/vYid54y7/CTY59yU1jNglc7BXvaDtBcvF6CPJj4VgQRf3uOKNUnUpKmfD3WC4HWPi8aTEWsLr7FDmGQfrmrGWMc63TyLnu6mgp7d1xbKJuQPxBiueA1nVB8ttcCGwYUeJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAFD5XTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAFD5XTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CE1C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749910193;
	bh=sJDXXb/hltSuc9h8tn/dWKrrfYHmwtJN10+pBkB6Rxs=;
	h=To:Subject:From:Date:From;
	b=YAFD5XTHgVPWxbwbCseLVvDw5aklOHMu0AGwVhdCrXnoYtDEVoDqFhYXrSvYz4QF/
	 RvdmomjU4BwvizUhoKRXTsau6JXFCRzdJfIQjzni3K1U4yqFV+1AjuqVchKHGGEUFj
	 RK4THmQrHf4RC92ttlNU+2wvo+MCHRXhnQjYUeYLSLMJJUWOY4DB8Ij0xKS27Try6L
	 7W5YUEzfq2NFxXKA2N+AS6bBwKjor3qlixGA5uMcPzIHGEyYGDk8wScajblS3jEbI7
	 6DFIX/YGv1UJ+DfMC0DrY+ix7c/jx6gRkClc/fO+Q3nkaTqzzaZ7rxl5LM3jK3mVPC
	 epc1kUS+sgL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F87FC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991019358.22083.1922899060486835017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375aa6b7b36faead7dedd11d92aea4a3bf6a33abee3475d76aadfa8beb3de900
Date: Sat, 14 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749910193
