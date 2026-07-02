Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598C3266EE9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783036714; cv=none; b=icIO2ElpCxlw212iW2TS4JxualiOkSi6gdpjT/ocEPFbC+GgD4PpKQyJX0M9KzHnh97g6aWy3C0U5g7JsIg15ZOSYsVYr4nSsxmbD7uu+H6EWlTIr6TQzJNZ1FeJOPwRTTdDywtwaa2ufGBDFazpZ5cgkyXBr0yh3C7a8ftSO80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783036714; c=relaxed/simple;
	bh=5WMXOQplBmXiczog7mTqP7K93Zd7QcneRvCT1IwIuV4=;
	h=To:Subject:From:Message-Id:Date; b=gxkzVX6QfUaA08KsMwYzqDA5PXYpXs12oRM+Tm+l1bwR1Dfxp9ya6bREgCTSNPGUHuR84GMJIi22gsQBmy8gYlvarVIyWc4ld05ZuUoSmp1RG9S++hZpF4aUjnrjZeB3JK3eweaZpQc0CcrYB0SsanVlGGlXZ2CuZJf3PX8u8p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfaMJlRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfaMJlRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EB0C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783036713;
	bh=5WMXOQplBmXiczog7mTqP7K93Zd7QcneRvCT1IwIuV4=;
	h=To:Subject:From:Date:From;
	b=OfaMJlRgE9kw21bP4frOC9PIaJuh/rufc4YRbo3eI7amGy1wuLsTSEdAbC00/01QC
	 P5e3VMX3g1mr6s/C8Lmfx0tm7z1lvmzSHgo870mT97HJi/yZvZNK3wnkwMyM1caFrM
	 YUDJA8JO/MMLO9xx7Q5pvDS/8gy+HmgPeirTAOilUrnfq23TA5i+ZtAvqDYaeRdM5D
	 Bsf4cYbLkPcvNN+QK/j60e4E4YDwiqRyIOM45NpyHzILKiM/hXi6izJ4aAYG/dbXTy
	 jbsmbdkyCbb9GjGhWx4Ql4NKwcQlbGvgp+dID+I5GqAlUT1JlhNey7fYaaiFbNczGt
	 k3Ds/0MvU+dEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD69FC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303671368.16318.16768478973983370805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bcd6253f8787e166c7383aba558acd366d95d2085b524a17ae2940c109abf49
Date: Thu, 02 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783036713
