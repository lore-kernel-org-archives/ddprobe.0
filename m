Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4911DED71
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736236554; cv=none; b=X2HpqIUVkOStUiw2bN2rpJy9qwxPnQp3w/u6Vf7IMGRk+i7rFQyC2wpuFhB4roZ49/htHb8mSs8c0xzGhyJo/JrnHqjTSgBOPTbs4KnPFT+mWBMHLiBvFnFTu0iMXiVlhOaliFHBzAPPn90M4AqSAO3dcsRi8kJtk+bzoUqdH80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736236554; c=relaxed/simple;
	bh=T0eeYBUbO57nRpMDIfWAZWZmV4LAn+vr4qsHqHFZufw=;
	h=To:Subject:From:Message-Id:Date; b=acJNM6FkN17JMthlpJzOGWjLnfqPd9UdT/FE5uDsDrn9TW0cGg/7OuSbzZH7a75sxgxXQtvgwLLmkeHPUIS8MqTkhHZ8OB+u1tMuBzLesKef0Nelwrv3NjltIxQylh8t4x1VYd9iW3z7d/EcZSl46YefBYNbjoTUrVMT0rRViVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TweHuw+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TweHuw+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D21C4CEE1
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736236553;
	bh=T0eeYBUbO57nRpMDIfWAZWZmV4LAn+vr4qsHqHFZufw=;
	h=To:Subject:From:Date:From;
	b=TweHuw+o77R9jMeUOW/MOhkFT7iIcxENpag+AuVJeMm63rjR14vlxt83I+0B4gNjB
	 GS25XxeICms/LP1Zb6xIEis1BPzvKjylwWpg416b9GgzmZ61En/2rZED7SgchyD+nN
	 10vEsM6IOh+t4x7pBRRwN8Aajm8Fw9nJPxNeCp68r4603H0AXq1DLLj1A5DBZQ6+Gk
	 PdwujulvI4ri/gOiEnVHtRL38p4No4WVBQazIxcHRDPnCu1HALtvj7uoEVDyMJhhzz
	 wH1DY0iXlRPUt7qd33SYZCI4DLqN8vs4YBvzpl5D3QIu4zlt0l20W3AvL9yUU4STtK
	 t1Ap0cCf1af9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C40E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623655359.30167.4369691010119427545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b2b17209c844592f0853edf036e7fa9607f1b9aa94f334fc3d035d861e0ac9
Date: Tue, 07 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736236553
