Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFC937719
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 23:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716075743; cv=none; b=tCZ7yA/SdZhOPrqOFIECJe2c3VbrmDH1HOMHCrpzGOEMNf6ZKiu8VxRUvu8Evnpb76g2hyDYdvVXtEDCOVvNVPM0r5lRoAeI/mMw6Sw8lxexkq5fCQzdnV2dzV1dYtGQ6MJOA1VRMDqh2RA/lyr23rBDxJbhgUmEAjU/zY1lXZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716075743; c=relaxed/simple;
	bh=zUQpNnTZXdMvUHjSbzZFcj/D2bp2gUxfBmP0RRtst2k=;
	h=To:Subject:From:Message-Id:Date; b=clNdwcKSfyhxObL9akSE3cFd/XacPs5pJeEGLQj3pC5WL3dFiK4zSPgHJZX5dY5ExxajVYMMcEMcJoiG08p/FfJcK65QKloakbQ+cl/1Lq6ISDXbFIU4NxpK7viDuxgaG2l0m87oxwNs1QjtJT5Ry81TRl1aLDpaHn/jyszzNak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtSR1qkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtSR1qkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AC4C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716075742;
	bh=zUQpNnTZXdMvUHjSbzZFcj/D2bp2gUxfBmP0RRtst2k=;
	h=To:Subject:From:Date:From;
	b=TtSR1qkfDc/H6CJQzM0vOT+tkdCuTqz3ypXI1EYaUXqd4KUz2PjnyoFBX3SdZiRyc
	 vFzL5fobpgEoRBopdQ/1V/6q2S6Olemz6aBTPS28xWxoHDoDohnA/GlSq9F3BqFaR6
	 xz7w42xRbP7UEXU7YRx17PPzcyWzvsVnbcwU3OqWLQTYiZojCpkqWKgTSq52FNP5Lz
	 qWWGZpKQtamXePzjZAL9DzhuatLOOYr8E3sOmEg2QzvlB0fX3b6bd3jbm5dDZtRMnc
	 5pz6Xcox0ZZ6x/Alkys0Vd5Nrelev22FbvfTGSiaW8OnxU5eDvEa1IS7PoCLsLhptl
	 LgQLBeqbwxTDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F19C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171607574276.29549.2952350667524112830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11767f1d1a35507b68bde003f12720356f3d780727d1835cb5887a4908d4f78
Date: Sat, 18 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716075742
