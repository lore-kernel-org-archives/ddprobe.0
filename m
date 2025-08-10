Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1345F205E3B
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754836194; cv=none; b=lp4euoNXKH4vwU0m5t8tnoUKI26Fg01l5IrrJE4xVHRF9Jt7Ckbw9002V6FMG5PUsR3flKi6FoUepb8SmdYfPVRB4l6VG2Fjh6DW28DNbOINFCMKmocyb05Q7I5KU6DFDY/gPDZWgARMpKBjpFuRFBZzdlMEoqlxcDRENTkojUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754836194; c=relaxed/simple;
	bh=gLfv60OsFfHXI/inhQh06GU/Pzi92lrQ6yg9AG5QFF0=;
	h=To:Subject:From:Message-Id:Date; b=F+9MKeTJyyUV1cNRGcIldrg7G/Fp5+sSb/mk+zrHKEP0AgYVGUdAfXH1urVyVMUURo0sBFuiRPSuobGC85PPvIhFbOts/q+FjCA6UWZ7SN3KqQuZJN/KvxtVQrTsxH6mxlNRJKq7aNBTT4nZYXXiNjYEWKQRPfPQ9I/ujSmkL4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZk1Xivf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZk1Xivf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB17C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754836193;
	bh=gLfv60OsFfHXI/inhQh06GU/Pzi92lrQ6yg9AG5QFF0=;
	h=To:Subject:From:Date:From;
	b=PZk1XivfXv3g64jpM8F26py0Bi/8xnw/xusC1wGM3hCx7awkNGS/17pmL4h9fs6r1
	 0AFgJaZ6uaPQHchxsxVEyPyTL3PMUIpzE8Iq4CGFy6/uEXs7nFOn+O0Uqz4JN46kCN
	 +BBL64SW0/m8Usk4WMCzfXC71MVNEpPvCy9QR1B/MsSRcl9ckCPe08QjvLZe/TVFOe
	 PMNaKCKqkr375DMzo5yk+bAVjrJFK8c3vsOKABk1a/E3jbUQpulhtTEPxRrcem3Jpr
	 3IgQPKu74V6GF5UHjHXAPTC49aT2erCFuV3z2Q70VBkBNqNlSmprGlNcTJ5f04EKes
	 /xwSRr1bIeYhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90350C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483619357.15503.10774773461366342575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b826e3916a83cdd5e24540dce5b759cf9ae6fa1232f8cbdc499a70586f0da94a
Date: Sun, 10 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754836193
