Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5BCEC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749295194; cv=none; b=hYzUZ24B1XFUNp5HWW0wDJGn/bBnmF6DFXce9hHU6tcpg7++IL3CthPuWj6IzLZONE3OZ4dua2rGCv5uyg2KOSO54UHAPLerR0FTRyR6Jpwpf7i0Xpah9tCAL+r0hYVFV+RRMMwpIX6Q6oaGZ7BwGMmcFP9P0pEK20OIufE4SOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749295194; c=relaxed/simple;
	bh=mD0wI8O6EK3PSNrLaOVUdm1uxtxNGm3qQcqlOLos/9Q=;
	h=To:Subject:From:Message-Id:Date; b=bROPwgoE+k0gjRMVpbWTUU9mX57JjFz5Y5vZgiCoEzxCfqlQeiXNxWaioQoqS1U1jLfH4xXreS7mGSpkTrtwxa9odft4/TJr0dQlZvMgFIbq5n0UBwuxUKNkA/LvGbxjleeb0YwIiNquO8i0w6kLOoWDG5CyTvzCneN6+NUIqN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3STLnu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3STLnu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6B1C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749295193;
	bh=mD0wI8O6EK3PSNrLaOVUdm1uxtxNGm3qQcqlOLos/9Q=;
	h=To:Subject:From:Date:From;
	b=R3STLnu56LF/rNn1bHzqMAmIbXQDK//ge3vr/9LpDjRyn506REpdMHP/sTMffX8lE
	 blGEk9Lznf0XHSKHt8NbvX+KN4jMEIJalWEG+aIb88djARDzsYiDRu6HqIHcAQbeLH
	 vRIJVtORyh5bRJnTva/NrhW33DgbKlzVPeIGDXGC9TRcAtHpHovuGPFv6oqH+xSeGL
	 PbPHfNS2gCSOqazj9t64KAzzF+30ImGBErMcrdcdCneNoX/oMIKEhMnbPrvBoZTkB+
	 kC09oOMiMr0/aDmdV1gVGob49Q6ucVOyTa+csXKOPTC5wYOLcgbhHbCrjzmGaO8i65
	 F8P3ZR7D5STpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED47C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929519357.9393.2528739248996538561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5505f1335b07671c3b7c053c96590553a617ad8fa525e23dce817ab961ae10a7
Date: Sat, 07 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749295193
