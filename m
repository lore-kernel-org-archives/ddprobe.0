Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098E118B0A
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770336834; cv=none; b=MBzJcIGFaru/SkA0pga7f0OjlOxyxnG4aW4Xd5NSo+O+MHmrvx1kppm2Uh7zOuatatfOfdhrkrAv1v91+sy0jsqMqICcqjSyMxg/pLTDAH+QZwhzFq7nXQN16xyNr29PJueHk+d5l1w6n6kGTfrjIZKyW+n5tyXCG5y6Fv7poP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770336834; c=relaxed/simple;
	bh=Py/tQs730CN498Ccc+jB7kSeI+5oseJ6tZZjpc3qnTE=;
	h=To:Subject:From:Message-Id:Date; b=LsAxqn1pGPMfCeBOeJBWbNARt8fRhp8y+hZMANjBRmeicUfkogR5ADH4D7QqF82CMutaeIG4EpoghZ5kvHjhhpqwdhppdqPUqPgCzYrAOl2U26ORgU+7GAS6n6TT8iduC+Z6sJKb4YKObB+OgvHVoy2XxBP+7vMOzFEarA0xlUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HN+z4onN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HN+z4onN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D62C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770336833;
	bh=Py/tQs730CN498Ccc+jB7kSeI+5oseJ6tZZjpc3qnTE=;
	h=To:Subject:From:Date:From;
	b=HN+z4onNWJnHZc9Ff6ENJkBUG/Jizpfx2dN4nlDduVqYK/yKDwl0QK+07QKOMkLbn
	 Ba7EeBtf+poftU3XBKPsYauXMWkY+CLjgEapUaG5Ek1kkjI6kWY3mpJktPqaRRtsnH
	 MQuCPBt72Owk+ZI4aHG6K8ZT1ZR7qFfID+vES3o/AIFqbHZsCUw2pvkaB5DMDtHt4g
	 zW2FhbX/EAq9o+ypmNzPnpLhlnBGrxw3TjURud9j8B/NTRsCGz+9zHPXlOkgpkXQEB
	 JerYD/9UF9FSymyq7j2DazvIg3tk1RQiBFTjgbl6ctPaG26GjzVNwzx6KJib4RKBBG
	 X01UqruKGeqsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96227ECD9B0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033683358.6717.8757346988989280781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135f648c9ee71b9e3f8890ab81a62089dc361fa0ffea3ef0493ed541093af042
Date: Fri, 06 Feb 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770336833
