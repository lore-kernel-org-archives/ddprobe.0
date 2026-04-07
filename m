Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309BB1E505
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775536534; cv=none; b=ghcgwzZeWKvMpgjofUlN8Cj0w5klqukasNDevOwY9a0QwLaY65bCoKh5HGoMn3byp5vhRvT/ye+bOY2RKE07TUXTusB2dtUrrWybfIJwPP6Uj+W8DZGxbBhVtGTVluxPFiG3X0kSpkjD+c0rR9Innp+PwvaIts0C4ufSz8KWd5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775536534; c=relaxed/simple;
	bh=ciQLblo6CAhXWeNssgljCXimY/RO5R/uVsSwGr6ZSdU=;
	h=To:Subject:From:Message-Id:Date; b=DnQOLrxqIMKolFPm2FQCRqIdfZID3JL4WrO6rNY0hEy/6iPoUFjt3M0b5GaoJqHk+lHeo7uGAwlIPBbVvdjzcLPCt5HW/2Yrd1zhrgKFv6fqvTFVUa9UmxPpy2zn2JmfYayinpb0hSY+OPX5eJ8BLTQP+LszTLA4uh41xrOpaaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyA+2DGS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyA+2DGS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF20DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775536533;
	bh=ciQLblo6CAhXWeNssgljCXimY/RO5R/uVsSwGr6ZSdU=;
	h=To:Subject:From:Date:From;
	b=ZyA+2DGS4jO+BdxSF75FVN44uLRWZm/SHFF8R1lcZ2WpgEEV/xCG2nq9FmRTefhiT
	 38TXeJ13jbJ8dF25TV3fwDXwWEywF6uaIA0qZU5LVB02luIr879KPmL84hPClIe5MV
	 SJLmPMh6Aq1CYiGjmUv0U7fsbffMFN2OSD6Piu6ktKHeToCdK3X2pzb2phEspzZM8R
	 YZ0XNmGlw7eScOf6Tj1oi7l5BJckZo/yJ5+O0kIrQ3MVyJfvXigPHit74/TGUhiDQw
	 saL2BxKkCaDDflBvtqlO1Eff0nPeOh12yF+BcUCSzHzfOL9VhrnqjahgRPPQvLeyaH
	 6QAxEQZY1/f1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FD0FB518B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553653372.16727.10812854937785824865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe33b8fbc6e22ac64c2d6d9a7dd71813db0d14b0ab5ac040878ee609f289162
Date: Tue, 07 Apr 2026 04:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775536533
