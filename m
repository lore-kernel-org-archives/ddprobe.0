Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89BB6137923
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785061234; cv=none; b=RVXt4/LTPxU9vGyxFwmy0kbZab5yZIKXBaIc43VAbUew6gOOC0zhkQ8zNUz6MK6K8SHUBrkiLRIZPrAd1eBRTUsk/BymEcemg0ZBvNM1I/TOdv7yhXWMlyvkUJPqN2n9ct2QggQLxJbb+HqOSCnGAW6DncVXZMufDk7aW/98X4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785061234; c=relaxed/simple;
	bh=XGQNKzgTdncdnUluWeO3U/213MWf3Olz1f94iOgLRhI=;
	h=To:Subject:From:Message-Id:Date; b=u76fsOy1by19NDnTnzG8EJwVB2NH+yHkg639bV4j6PBH3UtNR+fOff9rvz/0uMtSmAe9CLdsNa+YI2ASvMVpAePgrQjSaJ4PMnOllIlW28axcrqziH9NpcYRi41WJWu9v5ZadSLstOQhf+1NhI4dtbWllh30jhGL/i9OhrxmbJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgglG0BZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgglG0BZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3B4C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785061233;
	bh=XGQNKzgTdncdnUluWeO3U/213MWf3Olz1f94iOgLRhI=;
	h=To:Subject:From:Date:From;
	b=VgglG0BZyWI7ZjTIiK3VBZ2/aZ1elhwlywoNyNySEnDTqpzBu1XSbMVRE15PwnHTM
	 xQDwWi9Vlp/AmhNrukWZlZ+bVTdsz7vRi10swNNPZ/DQLp4cg+3Ja2pA25gJuDSvR0
	 +EsMTA7GW9ZMZQrQ4azm4uGLs0O+MiB3duLRtv5NZX3KrRaho6qxtS9CrohEmHeq/K
	 OuMQ62eRrCeV/BJLjtNau3GQywC5QWG/7XCIHYMwVLsKgHg3y3R/Yla3dJzcn8/2FM
	 8jftWVT4FdJ0veWAn5X5e65vyezXS9dIpRunV0l8+SgU5tD1I42m770QBoSuJr94zA
	 3CCPr63jEWpow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9706C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506123368.27895.4979669074976188300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17eb5590b8f558a464e18803c1fbd14222c54a063d3c80fb3fdda0f33d75b410
Date: Sun, 26 Jul 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785061233
