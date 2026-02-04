Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5BC1D90DD
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770207834; cv=none; b=V4+RA+6srgFTQ7tjF1Ft7EM6QtZ6mCwQH1xfCWON3doFy3cv3JLhnB4f4ezRyEvJMCR7/mNX+FnbBAoqPKwjEIINw7WLIopXEDsHDak7X6v3WCdmfG1a1sZvTN/jsCtyVGFpY39pJ5a0zgUkkgaL3XKh/rcGqe/YH7xIV6RGTEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770207834; c=relaxed/simple;
	bh=ispqSHpod5E34ZXGGOq0NIyHbNnvdIGELKprkBdQXa0=;
	h=To:Subject:From:Message-Id:Date; b=f1gPJ9Cd8ttW1o3znKgQjWOR8PO9e/5Lk27mMHlV0i53jJcoQkdIQmEtfNok1G7a3F/qGw13/t6eT8MBeDE5c85ctzWbABQHGJnMqjTadcFAuCk6ySDIVvSuRTIf1RO6hgSqpntbruzO5FQQ16z4fM3Jd4mgYTKT+LA2EitZU/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKlVv4GZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKlVv4GZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5BBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770207833;
	bh=ispqSHpod5E34ZXGGOq0NIyHbNnvdIGELKprkBdQXa0=;
	h=To:Subject:From:Date:From;
	b=NKlVv4GZUUJPsKfoPe5usiD4OHDb2h0haOfaATlJeU9FjUuXurT0gBHDOby8zA8Ro
	 rXr5poE3HAdOsyCE1nY+JG4GwQDpJYr//S7TviGdwZ9ErzyMbNKDpv/Re97Punhcuj
	 5D0V+Q9G6Ch0w+4gyXWeBXTdteCfltO/m8WmB7s6/bItw0eLxn8fxSNZH4m6ew4TtS
	 sZ6bFe4JW3G4cC6PFpG69q3Kw0/IZ+bG6uDkxRPRGTBFF26Jx9aQeyIaY4gOxofOkO
	 BYRROYjV5K+ns8d3wizsxKKeLYEOgaQpNxlVxCMwxFpukjIoLO+nsYoDM+4K5tJtd4
	 5mR3e6a4WY32Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A441E95393
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020783359.25735.10343888077602923989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f130c04921e71019af78bc093ca3299c722a1f12e5cbda0bf7a16b268fda9d
Date: Wed, 04 Feb 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770207833
