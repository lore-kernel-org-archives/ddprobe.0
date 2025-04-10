Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D94E1EB1BC
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744301394; cv=none; b=Ctf77M07xnlzz9+4N2uguaL+srat/KpGSzDV+i/61TvDIDiZoqNYiUcPr/p7mUeYSNn39sJ2OEVGBC4F2P4VL12qd0UPHhK8iMay58S9OkxzdxfWdX46QOHKHYRJpaYsHdXfO97JjoiskejEzYTv439qGR2BpbOHumwmN6VdqPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744301394; c=relaxed/simple;
	bh=UHWs6+VYUuHntjNCZ39hqEARZmRVprIqeMn/ZzSkavM=;
	h=To:Subject:From:Message-Id:Date; b=G39z9np+ZEW9SN8keq8VgLZyI2qm+ybq3YPkIPfbJf+RhUfLPaQ5D2BNXWkIw6+/zdWEWdqK6wXtkFOdqoV5x4FcNw+c6H+DkyhXWgY2p6We0fr+g2ivqpiuUeP5pxgkWDtrCoAIugAY4QGGqKFAk3IIboIx+W8FWlxa0JosRJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPDRr42I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPDRr42I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC67AC4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744301393;
	bh=UHWs6+VYUuHntjNCZ39hqEARZmRVprIqeMn/ZzSkavM=;
	h=To:Subject:From:Date:From;
	b=WPDRr42IIU7K4TycyypyRxNvd3pp1oklUqITYDXYQqXmf1C9j5GJK6IEKx6YuTF6N
	 rPHIRGySAmRi3q+xAxQjpQ027SKNZ+hTDGuAz1YbltnlESXuz3RWg+NoLaYVUxjWHI
	 FH253CmiK1uKjQXL0UHcj2+Va5ElxYbSmWmK2jO0RuHP/q7fcnq4MjTQLOFwu1CoHp
	 bmWPZDzULQ2Qu9PZ6EV1Ym5mjgrS4l/rtei0Mak+3+LKG9vqEeJyKNPNqiKah1AmCM
	 4+c3zaH+/tGyfkQa576IResWHpOeyB6UfQ5pJpn2MS59JvXYCbfZEZmjgc1FwKsK5b
	 zAWer/qdi6nEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983F7C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430139361.10912.4977395994362927710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dae1626495e2887623fb3a17f67f520ee077af60b31392071819581139d4fa6
Date: Thu, 10 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744301393
