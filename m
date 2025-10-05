Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2446B86334
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759637394; cv=none; b=Fz5Vlte542+Q+L/S2Gnjo2DGV1CD/uz7uz/eBN+SKwiadRBa3ZzrVngWYJIUmKHiHq+8evhhULLvuROBinIjPh9LAoiQgw+n0Ncb8TB+pM8d9FjjGfmLh06/GEK5qXdnTvmXpwVnS7GGu+arE/7Z/Mj7NaQlmN/lb2OVu22P424=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759637394; c=relaxed/simple;
	bh=7Rs3GXft8qFLXD7meLW01mHepDc275zlaQj+BRvwvUk=;
	h=To:Subject:From:Message-Id:Date; b=hF0rjVg7eQMF1DXgB5gc3KdkMEJShFpXbc1D+zCiqCB93Sf4TOJvhpoXBQsG3uyvqxm/KRA0jvpWAOTFL7dfsUY5Ri/MmwbpclCWlzm3O6clZQ2VvgC6kxlBdrek4A23WSi81AxRxw6ynUB8KODlKJb2DsQ5Hs0SFvPfNg0OL14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaNrMiy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaNrMiy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86B5C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759637393;
	bh=7Rs3GXft8qFLXD7meLW01mHepDc275zlaQj+BRvwvUk=;
	h=To:Subject:From:Date:From;
	b=VaNrMiy9FFa5c+Uh5is8l2EKDeBpf8gj/S6T7oEV2xbvxHUa6a23ZfTX08KcxBLuu
	 G+Hy8SYWHknymCTtgi2Ajiy7zHm76OPfI2tfNdj2+81AgiPCo7g/M+dH4hO87eMlBi
	 9ZPcNkMV0CYXuCwxZAIw0dIPo51PqzMcD6zOcmcCkkc/nnLJJCZDUFlEOpxV8LBQI/
	 DOOt2LpF3orY5nZ3yj9lQ7vNBJWr4U3TSSWd9cJWCn0Pgvu6XyOlp5g053FL8wfbDJ
	 BMSnYmbQ5gY+E5XM8k3uYGUAIUPwv21MzSQR27w9yF5tF63F3A27JtOsidhQFir4AM
	 R1ivpq7sfSs1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DF7CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963739357.26067.7624293707694506712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3208736d10d88861ae76337748d2d22179a515106cc711cb51b784e6cd091ee
Date: Sun, 05 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759637393
