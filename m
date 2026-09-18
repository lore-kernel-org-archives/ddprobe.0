Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340993B6360
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789717236; cv=none; b=q5e5RlBbig/1z8JmRHhDIu/yVyaSz+efDLn0NLrwyU4Rb/lfM1IFvM6dkKfpQd+hCM7uCMLJT1gX1hPnM3zk+Tzpn8FD54Fwsj1aoy5lgYqp43xjpKZyk6po8s+PhE68Rl/MuW9Urck45NnQb4UY1Wgd9YaQjE8mtCQUfD+ASuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789717236; c=relaxed/simple;
	bh=moOEYVLzPkt6gw0bkPjEt4vtAsLQhvKFFYluoY8aRS0=;
	h=To:Subject:From:Message-Id:Date; b=uwRtT5p1ASNlIWfzzGNwryAhaEQOEmn53RvDc+TdxL4r6dedFIYbSXt4zcidlKmtCZDY59H+kE5Bc1k6rDMg6zElX2NLOxMBPLvULF1RLcnvEFEXehvm2GgZH+SpH2iGp70aHasxrSWFBKOnu1g2KZvpYoaDVHlc2+qKdVpNeiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPpWji5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPpWji5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFA3C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789717233;
	bh=moOEYVLzPkt6gw0bkPjEt4vtAsLQhvKFFYluoY8aRS0=;
	h=To:Subject:From:Date:From;
	b=vPpWji5A8uBDoxEA3Ql5+r9IC9TIDeu2FtJmy87w3tLd7cP12Xya7LUtSIWBVp1mc
	 HMDj1lJmottOrb8Awcdx4wuOV90eNHB2KKykHivacGe7R6LtZpBttBQgRxfDPiM0ud
	 VEN9qfv2Ntgj+hzYp87Ki6XohgpWcf3t98fUKDDMRIRQO+FjBryx/USVf1dBdF96d5
	 KS9anUPjELhaw4wctqzV8uADK/SmjMCCIGvnhCwP8byKn/n6m6xFY5NIjFbYlEf2by
	 QVKc4dDIMOQkz1qBPUegPIXuy2IYe+ukQMAq+yW4PoNtTVfHc3uzUbrvDyY/vYNSMP
	 5UitR+p9p6OGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B782AC982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971723374.16474.18235995707000780720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe69d07edb459ad3e2dc9bf1e827c50cb4e1d454d314d6c3b57d320eb6843b24
Date: Fri, 18 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789717233
