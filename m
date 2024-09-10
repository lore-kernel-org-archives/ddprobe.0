Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AAF4204D
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725982554; cv=none; b=RTQw7+bAkTqBYTm0JSYCKWRRxHaVc3uKQVKjitHL6D8GPk6FrdADHOYIRF1yKoZyiatYJJWLyc3DaGm17rR+ASVLUvRH4vxaGcJkbZFL0iDokG6efu9sDuTI8LOu3IUrYO4WSm/fqMf4yMdOzbaW9UpHHjyx3h+Pe1n3vSNZ2/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725982554; c=relaxed/simple;
	bh=h86naQuozp11FOcEHz4ZzElZTT8Gu7GxjvvXJ5fb+yI=;
	h=To:Subject:From:Message-Id:Date; b=jk2bTIFOz0K+akk27euYMn7Ar4m3NrYe2hw282otxoAM22/GGsO5/cZ9tCzXEpDardIAV5ymIHta6j3HHP37JVRFDnKE/Q83jI0Zt4SLYKVm3ZAN5Monv6uyYBQTBT6kyVgt6qP6nmYsfOIiaNgbvqLPPvzRyy4ZqDpuYz7l70o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAJTtDpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAJTtDpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2864C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725982553;
	bh=h86naQuozp11FOcEHz4ZzElZTT8Gu7GxjvvXJ5fb+yI=;
	h=To:Subject:From:Date:From;
	b=MAJTtDpKATko2SOAWX6otVxegot9oqD/hA//e5vc8UN1eydTmouYGxO3cEq/M/Bdq
	 cY8qebsYC8yfavP1gQvWVkO1IUrZWYUY/391euDTXbO3CHKgR5PBPPW4iArY2vL4fC
	 PrGyGMqNJRBjMgNINFcTRyddIl1pMYOnFE6t3MIE82vkFlUVXIs+1SX+JfHLNWyvkb
	 7Km6Cgtzx0c2gkHEv4Sj1uSaKMGO6o/vwnqxDOzkMC0ST/SLkd5N6RrAJ15aduY/Gx
	 PddTMkOGEFNI3pZ4YrTnH1LzF2VO+0OP51++c0grxekMFglo7Mt9BnkHW0x6dRhFb5
	 7Lsiy4QXw5Njw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1401EDE99A
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172598255365.12338.5889811701294564753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ffbc208de4c3df54d9495df6c47c4de73ea19c5403bb5aab39783a7bf9db403
Date: Tue, 10 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725982553
