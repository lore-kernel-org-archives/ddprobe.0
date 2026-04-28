Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4662D23BC
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777391254; cv=none; b=C7/GfI4upXSaDXKvOtmcNwnvOxKXXa04mvfxlQqNx4SSmcasJ655VaNUbgvfh9LP7Mr2CLV7NegqK4fvG8BWMcHrXASRWs3ZJDPN+47sV1XO4t3jErd4ubGzTm09H2pM3aOYISgEpiJ9/mWmSihrvHG3W1+Lvznm5YBAI6eyeFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777391254; c=relaxed/simple;
	bh=oK8zs/7k8VkUE99I0OELuUBG1xpBWzXIZOmrheq9JSc=;
	h=To:Subject:From:Message-Id:Date; b=W3l68S7Atq96ryLkBD0uRAZ6Eh3U5RFid0DvshlTNnjJBuQxH4THuqmjx1M00HaQI/08zDaLxzDz0UfUqVqJFhv3mABdxIEvjQqe90wuD0XMeuYAtePEwSn0mFOU144cL5vho4teSikR3jWJoPXawG0eh2YmIsK3pmKlLxeonM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsbLwfNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsbLwfNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9397C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777391253;
	bh=oK8zs/7k8VkUE99I0OELuUBG1xpBWzXIZOmrheq9JSc=;
	h=To:Subject:From:Date:From;
	b=JsbLwfNhGSeneiNUl15F37d0YHQc01NtNvy/vBSWJOt4yFJNAsVoozRvCN78yQfLE
	 FJrvPuvccn2tDhfWKUYyu3pRiWCxXiKxsZoeJuho35RIXctizmdZPHYEIeIpbhha2x
	 YkNWzhGEm9Mo1CWHkGPPH4nsiPvt4vBCf0rpzzlrfoClrxPhjEpMtDQmMDj+Z+enXf
	 XoVBF/yLrjdJguDr26JsxrjEKH2C3EQGBUKLVFnw+u1VE9DVGS03NEsxLUSmRUAR95
	 LPzmYd1hEYpGpC7UiNSVhib5cINy3aTT0wB0ssYPvI00mDNA9/rhNxCKJRwlEclMvw
	 ps1pxi0+ZR/Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A22FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739125368.21690.5880174366755088663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec8d9908db1f1000a4c225355c772ca52f3043ec6bd0b1f394f320c50817afb
Date: Tue, 28 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777391253
