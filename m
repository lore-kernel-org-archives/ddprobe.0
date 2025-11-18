Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCF32D47F2
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763488914; cv=none; b=pUt3qQkSIRnRDv18j/6t5Pfqez9+1Er2YajBzd14NpaFnc29BAE8hs83+ty3CG0qtDtyNBEYK5RI9AVapypnKB+eCJ84wJSzF141X4pme4IeOy9f2KzGMuNE6wrlCwzxbn+LShwA8AFewH5p/sKUVNmnxi1gTNRjNeg4PB+GOms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763488914; c=relaxed/simple;
	bh=qVPfAI4AKHVhn1Kg+jrdGCIQJEexEofeWHZZyyHdak4=;
	h=To:Subject:From:Message-Id:Date; b=a78ae26aApFiRVCPKbkNS9XL89JQsZY53jIbq1V+FcafgR+qaO+jSe+qWh2wXTsy82GuVH7u1K9jzXzxvTOLJ4tNPSBYWGhkO/1s/5PLq8zVCB9IBFD+cozHlrWCMyqGG0WnZjiDikl/TnoFV3PvBYm3Y+vXCGrVLMu2kf9v2Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1tUMnzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1tUMnzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E97C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763488914;
	bh=qVPfAI4AKHVhn1Kg+jrdGCIQJEexEofeWHZZyyHdak4=;
	h=To:Subject:From:Date:From;
	b=O1tUMnzQr1yEvTqa25MlKfbp7cD6qkVklyWashgsRR4G2IqC3d/W8DnSWlIRhCSaN
	 x0LMgCwHLfStt4mpSFwnAcXIE8Z6wQjaRJm69irnKByuyu1J3nhbJA40RHCb7sgJjC
	 gzBtZ2E/KIttliP05tmiFpVkfvIqIllvcmM0tHSZ/1MUuaQNJ1IHG/0GvlVo/N5Rld
	 pyeVbHSLhpFq8C4TU4Yh69uqxL1gmmKBgkXtpI9LQpZ/sbrvCuyupBNfvKrV6S+7dw
	 rvDI+h1wdE/lpzDuVRxh7O7V8/nosSwHVRu7VvL3GL+toT7BYpgvXBh1lTncqW0DCM
	 RHC7MscxcwLRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC1CEE345
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348891358.18139.7485515001898694569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a00da6d7b0507f75cab51daacab96aacfa423f1040713154a511b6d9f332469
Date: Tue, 18 Nov 2025 18:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763488913
