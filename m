Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B793B52EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788108034; cv=none; b=SCtwenrGBAtJLu85lqQ18aZDKjlMmvG1UC7o3RDtB1cCYz/PeUbB+bneHum0WHhOtaih4bXPbZA38XOQ20HdweJN2SLyLjBFV+sdTR/wSwJ9oL7s4n1dfdhzQ5g+D2nEymEuEBS0WBEq+ISI4I5WP+O+wM+KE4IpLA7ADYMuIQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788108034; c=relaxed/simple;
	bh=nSxU4D1NfghxGHUIKE0YFXoV7IWtIOURhy+Ak0jGYaU=;
	h=To:Subject:From:Message-Id:Date; b=FR7gprfsh/bS/Cx5f/9spGKIF6hDejPT55c5N0qT3k9S1cEoRZTb/2ldxZB2OvV1oZISy6mu54+XePB8XX+7wgISywvlTMZJJclb21kOUDqFZYYLDmVNSHsbnXRLyiLO5B5A7mclqzzDnfr7gsbh1EN+5ak95JeGMgIH7gYuEjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHw60SBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHw60SBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCE0C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788108033;
	bh=nSxU4D1NfghxGHUIKE0YFXoV7IWtIOURhy+Ak0jGYaU=;
	h=To:Subject:From:Date:From;
	b=hHw60SBXjQybWi8br4IJ2bD0U+F0xKubpamFhQpscA/ivoWYbKZsHsuqdSwmQn4Oz
	 dBItdwTdR7F5FRvHuSfHtZzsfal096Q8Dr/d5yXPPuOacOCFW3hUzdQ+UECE0YDoMh
	 q8qzb70LRUEyeZsgabN/y8+LVo1MAPCjiT531NG5z/A5lB76SA6uQTwBHx+BEGG+Ql
	 yES9u2PGaOrdAeVAX3PVkPi+M1Kvu23CT7CoTDZjJDYKnf24emNzp3JFxrOF4bXMFW
	 JS4QkA3ycBwBBrGsyUmom1VdxgQpFFtpv7s1r65tGuCHi5NOi1B+hab0nFIJIrmfO0
	 FXkHkEO4lwZwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD6DC61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810803369.28438.1488732582971850010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7125379d8cd9c3445a42b767403707a9832818e0d2e51e93657a943fb18e59af
Date: Sun, 30 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788108033
