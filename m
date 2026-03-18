Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C86D3EC2DC
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773848694; cv=none; b=qkc21BtqvPPTiZstMWReRoUCr+uCzWQPOlUyMS+Kvznytq7a5mQNQI5DQwCv8x5xEnP2xpDfn7NJkZHcu3LVIqzsJo0JyRViIJ9qeGFhaBNdoB+0HuQfkrfPtMB1ogo26teziMQgFxbONjSG/lgxI1E86BSHQ16Zp4KiUkk05E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773848694; c=relaxed/simple;
	bh=N6TwWrzufVUbv1qCHHWK7yT088XH+G9oEthSFeCwrK0=;
	h=To:Subject:From:Message-Id:Date; b=ZfT0CNc2Dp5rA7Ov5/Nwg5F7fpxobq7hoR2fD+OPVLkKELnIuovfJUOR4FO9WXbyuVheBROihQi8kY5guDqISDUbBcFbGxav9i9/tsszgQtOch8AtIMouBg8X+k/0yr+p93xfoKEYFW74QtIAxP4PyuXJoaDtFxGWphowIQx0eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTZJ92Bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTZJ92Bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15BCC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773848693;
	bh=N6TwWrzufVUbv1qCHHWK7yT088XH+G9oEthSFeCwrK0=;
	h=To:Subject:From:Date:From;
	b=cTZJ92BqmZsRdBXhBCxRlQoJ0za2McG3y+5D3fkt3m8uDn3e/FBgU5m2vKN7wxhXg
	 iBmNtueRbyts23sO+28sr8JSNG3Xw0t5QMpvQ/vMYV1cZeq+I+dS2TsRzu1upMRcOa
	 xoDMvTe9IsQPpHnoQj6QCnSNW1sQrNoceGYlnB3SBFNkP0ntVbVStbool57TjzLpUk
	 UtdM2gwdjbq/isb7LUbSzjP3UVtaODKzLHEppV7U5qBzEda8gY/sep5qQqehvDkwm3
	 Wl6EFz0s6CRZ2IsLmJuOvy646anOmxj8iTrgVOOLy+mNBEilUkXunbAgrB1ccsK5dM
	 6mZHdKJ0tv6Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F1D103E19B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384869364.28311.17639527722693763586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e59afc3923072b217134e09949cdab981d6b8be04edb35d9d15f2fd75fe1fb5
Date: Wed, 18 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773848693
