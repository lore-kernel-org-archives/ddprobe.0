Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5F435F5ED
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786104636; cv=none; b=LYd0/z/FukDlr13gMfiYz43ZKcnCjoNukCal6x04K6JgZ0qsbUpwN9bAVpjxPqn48ON0ojf6Nu+wzMrgCaRkV3LiTdzcewpPbHlN2iHGcOvvRjwKs9gHzWNalT2OzsebkW0mZqakCQQPkH3Shtt5PLwf7ymZw7HB/H+ZNOvQI0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786104636; c=relaxed/simple;
	bh=/lcJ7ip4aGz9uatm6y8IKSER87DssHvvcO+HA4ONAAs=;
	h=To:Subject:From:Message-Id:Date; b=Qg1TIzm7klkAlT5JXQxsBhHxSwfh+K6+DmDCirtKdwRd27HU5eCvfLACYOmf7qzT8jBYKnca7tdQ4zPVpdZpnIj+NrXzFCqzsL28uRT3EZo9X3NVuB1DPCxEX0u6+jCB4Q4WkZ6f95WtuJbCnEMs85Lkj54gaY/0SUwflvNtA9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5feDBjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5feDBjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB1DC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786104633;
	bh=/lcJ7ip4aGz9uatm6y8IKSER87DssHvvcO+HA4ONAAs=;
	h=To:Subject:From:Date:From;
	b=q5feDBjlU2O+GKWPrxwdrpC6ZeKHaacJwRQdW3qU+Kzhej5Nh70ZdRLJxBgwQXNMR
	 YMvzAN4HivN7Yf2Hjo36mubFMCkozjG6+mm/MPHodwk3Sgn4dvpzZ4jl3pbcR/8tP/
	 LYckErWKPzUkyv8KdnBfDfyhRlSJAhkViEkI+H8dn3r8se+IhF9aqb3f3LowSyp0rf
	 MEiZ3kXyTUWEJ7XiZUJyp2qj22QLWmrhN3QeuHrak9Ox/0N55ZTSkGjac51Dfrc+jK
	 EQTRx2RiqRPEQ7Yty9h6SjsniDyM2qATq1mTVnp69ePwlEZdAmuzph/u+6ItGpULQJ
	 Vx1a0/B5gfG5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA10C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610463369.954.6799332601200255997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027cb52df831577324e5ab52bf2d8b2315c046397d01490ae9f9dd44d6e1c2c4
Date: Fri, 07 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786104633
