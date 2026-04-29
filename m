Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB7A274B3B
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777506454; cv=none; b=PrQM3fgiaYCOPcqKrcyw7RCew/7k/Myt/MPxxZE+EfhLShnPybSvU2GL3yuq+k4kFCiKzGaFijN5qCPbwXaFnmodSa9n+nM2uDtevHSfO8nWZ8hpHlsN27pKihrIFj5fd09oVsh/49H4MoYFfZlF7z6v3kCxUzl2nC01k3CWz+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777506454; c=relaxed/simple;
	bh=NmD6qeezOaXiJjpL8cypaZceCEeTswwHrAKqws6L5cw=;
	h=To:Subject:From:Message-Id:Date; b=RcDP0rzEtcS4H4pYn7xChq3lHGfVZNH02Od7b909U5R18bNfuCKBXXpmC9xZEc5j6XOW4qTQ5c5xqZh2+D3FNwZoCx8JpBoejG0Au+d7BMflftny8uiSdYzYPCuHqPSJ+p1PXYuFeNxSGmRR4uFlUnYu27YXOk8MXEXDajfqqps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGowrkEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGowrkEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B895BC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777506453;
	bh=NmD6qeezOaXiJjpL8cypaZceCEeTswwHrAKqws6L5cw=;
	h=To:Subject:From:Date:From;
	b=lGowrkEeNt0V/v6q+qVbsc0lub8ocy5zaq79NoCO9DgkaJEn+uC4EjoywF4cy2/hS
	 62+xUy3Bftbb6BQg5rWC+cmc3Mht83a/YDbd9wzogo1zSs2iaspH6PVnPDjmAv6Y2m
	 MaUHbcRKutXeX7pXP8MqGcCht7wD08KhKsBsui7JoBF8P6z8bwdhml5xGtSkQAmxBu
	 Mz1/JG7WD0BV8IzD/R6M+JHX/XLiYe0JZOTh7c6hUQyH3KittNXUVYhyC5srlgumyU
	 AVBlbodDcD6EuqI9e1bsiJPFAQai00/pu3vddNPPTGIs60PcKrNwW3e2N4scuBitVi
	 pQYHk+d+DzoZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99ABFF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750645368.16451.14232093513911522869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11d80f7e93f572efcb1efbb0ff3df59081b3f22d2513385e1c92dfacfee7639
Date: Wed, 29 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777506453
