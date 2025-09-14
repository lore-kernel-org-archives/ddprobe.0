Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D99B246BC7
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757861395; cv=none; b=ThYiLXRC4tGhFYBqOqtNN9wq9y0VoYII5i65pHooSDcYFyqfEZZ9PmCwF4tiByAKtpfOtzVaLjfkEIQXJUAI4I9ujjyBxmab5nx3E/rt80A8+grxEM1lhlR6cs9B2Lept8R/+XVYAHmXMK4u/BgO13cRFFeGfLiH4SoRxep62fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757861395; c=relaxed/simple;
	bh=b4caERJ2RrPVGIruH4Z0poHwIEGbL1Yxz3Fx7Fc3ZWI=;
	h=To:Subject:From:Message-Id:Date; b=SUieJI/zBb52fZ0daED9rZ1XDwbIbst520m7eF3Na7sEsoINF9Q8XebQrIBgH+SBXptsRywrehwHIXjvTPc0RL1vA5HNmVMID39ZYS7nZXWYkkVd3Xd10YTRmo7PAGe6lcbqrF/x51uXfwBE2jGUMHNM/TjXaB9N+K/AZ71yXUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zxitplpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zxitplpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EDBC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757861393;
	bh=b4caERJ2RrPVGIruH4Z0poHwIEGbL1Yxz3Fx7Fc3ZWI=;
	h=To:Subject:From:Date:From;
	b=ZxitplpvNPdrx9YMdi+ZcmI3ZDtZWY2prbLHFqRQBJsvWTHKoOwZMgEJ5EeHzF48j
	 ZUBo+eOuYQHf4putBsoI57u+D4wV3YWJzlzoIpPGodonop/Sehw/rPFRtn98lmWw37
	 OWnOlQmdcojKlxNIDTB6PdwIA1tPJ7a04FciUAZp+G1gShpRMnL3wEDOuc5A8THdbM
	 XE3U8HQRJ1r0mdDebXLceODi1RDjc63H4dXTOqJwmdoLHI9XyzZOPdnCRU8SoEEny3
	 7XCOEtNk4v1lnSftJ8b8LR+gJS+1OLM9nnjnyH8upFjg+abGisuT/S0Go+3LVT1v2b
	 3Y+/Ey3Kg/ihA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169DCA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786139357.21562.4066041926040164135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dae0063a8f8e67c8605ff5f0c44b2f93cf494f9954f19ff01cc37044d26391d
Date: Sun, 14 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757861393
