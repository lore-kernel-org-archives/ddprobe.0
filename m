Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA583E5A28
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780657474; cv=none; b=ewsWK77lLXBbfnVPKe9R+YIRWHUGPFmQoalJO9shPuIInaLd0yDPSePSOfMTBE4VE0S7Y5tlPYQ+nIz95NpUsrjw974CbDx9dP12mOV5BohtTbYTM5OAa/WS4lH8MgBpoi2Pw2fS74lRE90NzZ/lFOexOREQT3uB6b7az6mMTVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780657474; c=relaxed/simple;
	bh=aD1JlvlCPqaRhBZkyfCNQAN9A2gai3sTtlccgv//OyQ=;
	h=To:Subject:From:Message-Id:Date; b=Qu4NH4A6WthqzLgUGMwMfxSvP6mLdBEb045aapwxjNW+92XjOD5UiY0zHuibmdkxA3Hvdv6NrmHL5Fxgg4J9bCgyfY5vVyhKHdIvV8fDgVBcEokoKWqeDFcFfvahqy8gcSct3Cv2g3XugXmgasB7AKNht72Br8iM5MxA0ywOGdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJzUshwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJzUshwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8601C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780657473;
	bh=aD1JlvlCPqaRhBZkyfCNQAN9A2gai3sTtlccgv//OyQ=;
	h=To:Subject:From:Date:From;
	b=LJzUshwug6bFPHl84KaBxOVzs0qZy2TOfJSr+ugtwZ2zcUto9j8XQrnnKo0oHqv3y
	 qonnqjT0OXt6VcPg1lhvmbcTYVF4r5ycwe50rM68gyCJYpkqeOo2P9ZiHWbyYHymJZ
	 0me/7mwQvcxuhyl3oLINshVDPRSoFZ40wtuKVXADx65J44BwO7LVHethgy8RiUIdKB
	 z9g6MFpBUHdASQtXqcmmkcTZb0bApO4aRp3vRMEFJK+TVyo+0lMKNWyi2GvTi10RUS
	 GkArVl21Vop0IMU4bpfElZRc2OCNLL37fTEu8DcoT0KsIBBwHo0x1MF0+lHnhhT+DV
	 jgveL9JB3T4IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C26CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065747368.1199.16000158826549369268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d6cf8fe8b1caf2d52097f92fa6defc460248724f6930f73cf6801a3e4b4e07
Date: Fri, 05 Jun 2026 11:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780657473
