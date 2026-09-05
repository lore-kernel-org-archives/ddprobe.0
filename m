Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C661317D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788637234; cv=none; b=UtUAsTiSF5NP+puFfG/y2zmKb7L94OpNXSUOHSbUsjntalq3E+YFCRy9yD9p3FjjLmaYrroBPlYPtBGOTS21GvB7y9hVgVl9Hs5tkPv47KoaiKTcB7+I6hzyqf1OMRSexBx8CeA0tfNtZePlMlKkIRozR9T+c8JCxsVcKcFOZL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788637234; c=relaxed/simple;
	bh=Sh9fG3aCabSskIuapN9781OZNBqvF4W0zY9NdcGbvBQ=;
	h=To:Subject:From:Message-Id:Date; b=JQf+qhIJXiEDmg+DRVBtYHdYMNK1eGDNrVzGcF3SU2n+BnoPFFwxDZS04Pkk1U8PPh9/RJqV0ySCmUcVM/HIe5G+2BVVqT8tgh5Unp7nqXID9i+nsDvGgODwFzLBg/2+21rC3dP58fAfHnm0hb8ijVCM2lqR27pmJGFMW0a9QFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0lenUib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0lenUib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3927C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788637233;
	bh=Sh9fG3aCabSskIuapN9781OZNBqvF4W0zY9NdcGbvBQ=;
	h=To:Subject:From:Date:From;
	b=O0lenUibxKv7MGtfXFIae3Qn43zkE3v3+JZFV9mQs687p5b30l553sqwjg2ornHKI
	 GGRpg+ETuBQ+6kw20dQCBgU+A9SgSpSOcUjTYo8W86yUZ8VLx2CwGZPrYAMtWzpZDJ
	 sSxZZX1GL2XNpjWwRHWwBnw3+QUzVV1Mr5xC+qh/YpAdDRlMv5tW3FxWnHV8/MnAvh
	 TZfiro466idIw1rfnJlyQxC/bXw5t54UmK3qx/CBw2zs1Q7S024cf8+c473aLpf0bu
	 316wgvAFEWkxhdhcHgc7ktUIXZUNr7iofKcPb1GzpJ6UpbmHgG7poUbO8YZ6OBybxw
	 m6l2VyNSVJxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B024EC79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863723368.28533.10219118582087925774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158b837bf17d65f3a5eb80fe5acb4378109b82ae449ce1410b3c5ef0f5f961a9
Date: Sat, 05 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788637233
