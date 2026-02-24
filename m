Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E695E3806A6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771955094; cv=none; b=FZIAxuC75ZRt3vhWJXLmztiJ0zYI9jCeJf3NEKk1BOn0mpkswO+bdrI3qT8kYxPCE764sAHuBallZcqDOVx68oSmQhVVkIl+jRV84gpaf6djx6UaTmz0LB64U4r5ZPz+BF93TrahyRaDMUbSSTkbvQE1uK72tR0DdIXV95QwEqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771955094; c=relaxed/simple;
	bh=Y528JcK8vU8knqD6/4GZnJ2UreKSVB00HLVOPNEqhd0=;
	h=To:Subject:From:Message-Id:Date; b=TkXe03Tv6XA5Hp2SrINQCasAfFI4Mmlrpe7RKOq2usJPkVY78t6Sif2Jn5i/B9/pHLvKc240dCQe2KEg3li0VIcIREOuFC8oJF6omykkdStyeshoukj3YkcDwS04des+5dgfdzpDhAgHHUhzF2/pL9Lih11hZ+iiwK5YS3VoTDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciJS1bJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciJS1bJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0705C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771955093;
	bh=Y528JcK8vU8knqD6/4GZnJ2UreKSVB00HLVOPNEqhd0=;
	h=To:Subject:From:Date:From;
	b=ciJS1bJStcnCqzHP2ld8pxmRrXP0IIuOC4jwzJ2nEhu7/TyvcI4/xA6fbiVPyog9Z
	 pOBg3/OQkbOV3GxjnMnJVIwKEPwNENzVF966Tqdzp063N+Lu1OJcABsrdykwLU2yun
	 jmNeh2hpw19T+3k6MiTBPeRpwgniNneS42nwdssLSswgtfj4maI/QKanfMma47Cf2b
	 2TfqwFZp+pSvg7ecoPLgQRTjSKlMYY0QGOQg8NJuUNRl5+AoYf53ToSsbloZWf2Tok
	 u6wLGuJ2YR1opP4ws99Z//g0VHvWLiT0M4/AlF5wVHyIs3dj8clI8bLxW689bZO4fq
	 XzBfcMnF2RLcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AFAF4BB65
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195509358.19441.13061883226159134721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5055618f139d25f1382bd7bace9e01602d8b4dd263a1e02f9c5b3b53e0cecd17
Date: Tue, 24 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771955093
