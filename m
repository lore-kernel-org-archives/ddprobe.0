Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4944212D1F1
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778649634; cv=none; b=hscBK56aVfGG2tGw64m7SxNmsNgctTNcNb2MYBEZPlGiqN8xrHdmfZLGAMaAILV49dFYafC8XBUXhdSYNvIEfmBrVLck3Ft4wXS15KpPVRezQpBtw7cn+hXg7NFKb4QESBaWKJfpvUf0d9Hwrc4j70hKRot4YKzOCNhoKeGUEvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778649634; c=relaxed/simple;
	bh=l5Ss2VxgDBFOmW1TKfdTuhEi46WMJP+0ZgDzToVLJfk=;
	h=To:Subject:From:Message-Id:Date; b=mWi6hmtbMvSloOrx1x0BCRq+08W1PODECXPj59VXvWY+sAVqPwPU7EWSFk7/PRb1mkprOzCZbf2rj9aYeH3YF9f94yVsuzuCdL0IKHWQlaD+YyMX1mu9J+enquiU6BCS9AlARIKnmv1buBo39bzlSLu42A/92+VZcKaIlnoMOV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4boiF53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4boiF53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA99C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778649633;
	bh=l5Ss2VxgDBFOmW1TKfdTuhEi46WMJP+0ZgDzToVLJfk=;
	h=To:Subject:From:Date:From;
	b=P4boiF533d55NmZ9rsHfM7pXUKnmsqhCPFozDb3PuRgBk4w8oRFnkI+Jm5ApDbt2E
	 WAyec2fcOpafbtZhh+ls4eAJlEiKGKeUcZWA0mY3P06MpLrx5JDYYlb5/BURlMmGAr
	 SvcizjVj65Gr2w2dJmUrzm0jBFMhvcAj788pVHrL5REuUtnTXINSKSRI55BjuToVyc
	 4vMuDBz9T/E4P3vQfYDWjdRcTMUQdEjxBoV8bVx5z+4q0SBK9+TcxRNDUIMiL9ByUM
	 MtW/KdknVuyEnHSrROIp89c3H3LBgggor80xPeeYBoAUrbidz3obCMTr++mLpBNQPt
	 EjNwAos4jD9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9526CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864963374.11340.789581081414099149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254e5a5cb0ba964be47f86edd5ab4200cadbd6d3bd0f409d0dd52bbf845ac1ea
Date: Wed, 13 May 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778649633
