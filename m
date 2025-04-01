Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500771F03E0
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743551394; cv=none; b=ER3O4kpU4cNhhnMFsEcD7WEAlrwy5xPdvFMCr8vaxMLx1yHpPAyXNsNCx6ZPQfH5yoFZXmp2XgBU10YPeNSTZdYCLN1IXs51hKwhNdWRhIBWP+ln5HFA6DjquVPq6aEa7lgOGld43Hiz1WLedN0uVvBdL3icZHgUhd+3JNIAnpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743551394; c=relaxed/simple;
	bh=i/KWC3Zic83/QpSyx+AON74Ni4TwWw2p+3kgcyVxPIs=;
	h=To:Subject:From:Message-Id:Date; b=V9R31ewn+wwoYFnFlz9tmGpHmnSpCBER2G1/dkp6/BJ0i1LxWcdCxMCmg4yBiZ9vQrfXF/zzY3P2B4jjUEycEc5Ze0CFg4xlxCfE1NwvbxOozgT4pfR+3CCeFLB4vvNjvplXoj9zyAoc6fR0x2L5ZtlcS5kGsKXLjz+4SuL0nos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJBQ5x47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJBQ5x47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA16DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743551393;
	bh=i/KWC3Zic83/QpSyx+AON74Ni4TwWw2p+3kgcyVxPIs=;
	h=To:Subject:From:Date:From;
	b=SJBQ5x47Xw7/zJDmp0BpAiXxPCJzXA8HmnimRxwFWmt3KI0vaXaipTPOVPg6867Au
	 h1BVAoS/bT/YKgmo2F+joVed2Wqo6Nxv6AH/iBBz0CxpvsgnrTnjEwO5yxziwe4fBN
	 77Nh+cY+MGIEK0QJM3ANsI/x9ZPuHubUpCNffSWDIZOtziAMmaFzuaUWgd1YqNJysE
	 dABlnZ/DevgV8vTF88IHXaI1Yo0fV7BgRlqCssLHsqY/GQ119J2AbU6lXEn10JyNQM
	 LcQdv3OSCHyIy9gg8JVuV/U41o3siSTs6R4Ft0fnKxFcsteIElF+Vi3vK9Qjr1ex5m
	 WcErxo5erNY5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B21C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355139365.21903.9998670163091563861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc45d427b6daf03ec290a3ed70e26a64284c4b08ffc3fe0a646a9eff8557a94
Date: Tue, 01 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743551393
