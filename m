Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2078C11
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730916354; cv=none; b=fDhdqoRiXsP/B21VqVl9DvEbRc6THQ2yuX/MPBazSBc2zjO2w/ov5Y8waEnfbs3PPwDPcii+1yJm45NRCmj8h2/LSGxnLVfJFPTKrpY9KH/J9vp9NtU9sd0sSez8TAmApBPlO06pOM+s2IeyEqbIlhr3N2IlBJ3QQsZbxRr5/Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730916354; c=relaxed/simple;
	bh=t1yvQD4S4MAbyROsX+7o9n/RXhfCzltP4G9OdnfcXHg=;
	h=To:Subject:From:Message-Id:Date; b=gEuQUPIBBzqZG+YZA//yGutJlD7qebWv84SF0eBvuWAuND6qdeoOwxiOg5God0Y0QvFAXGlvHEMPsVZaI8Z3XKUwIE3Tuxj/bfkceh3uJ8xZoL5hJ505aP0czHhNQtZfz5hxjXoq7Bi3ZGS2jwJ8xa7pR/Sr7fK4G01IO59wBDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWX41sBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWX41sBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21EBC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730916353;
	bh=t1yvQD4S4MAbyROsX+7o9n/RXhfCzltP4G9OdnfcXHg=;
	h=To:Subject:From:Date:From;
	b=rWX41sBLnhvX/8u97GUA2h0FC8o5n9UO9/LyTcVKls/kMf/1w+3o1prIMuuw9XrDm
	 OcqGIio/Obcnty293SXJb2SYpK4DkowKpFmQDTYwM3nR31s0ooFqm9I2w7rfS2ydN7
	 MUw6OKhhFvFdvhn18PcniZdXgY+2IsAoqu/UMeacbS4VNzGDk+mVPY3c/1LrEUlEKN
	 sNUIIl2SVPLQDPnrgxHWoxmHk9l6ll7rhyqgBF5PE3GTe08Mfahdn7Y4s48dEdQkxp
	 RHbiovjudii+zekJKLI7u0hBrWbmwAThD2AJ8Hs3DhfyU//LMCCQHnYuwanZ5whPwb
	 W3wgY0zpDZWOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3110D59F56
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173091635365.17009.14732135732492337923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8910e5458fc76113c26fd010261d9b0a97cb871b123c9a8025986f6a9625f37
Date: Wed, 06 Nov 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730916353
