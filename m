Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C0A3BED4F
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778743234; cv=none; b=Lsj0b+H1nCk5St65LLtAElSkPkClPCamWR55OvfNcJrmjxeqhdWppCAkUXaD+8pNkJSZ8C0g4eRYxHreRjC0ZU1r2ShLugfgp3SHP2JLPMwm0bpwkaYljpzvjy1VZ7maftf+/Be/sbp2trXrkgn5CiDs9BEbxgq/udM1C2+LGQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778743234; c=relaxed/simple;
	bh=X4RE3q35Me8BRs1aSZ1CS+0/UiPmGB+Eo7Mt7GhGW20=;
	h=To:Subject:From:Message-Id:Date; b=IjReSSCJhRPL2Pmc6xBQ9kQrA8rbmg6HCDHaCikZkItJMpPfI1cgxg4kDjki/fmHndpJ6vj/P9MPrhFg0UGGwW3jiB7DNjLXd6NkcvmTTYxmzAOlkzM6DP+fbVLhiPo7ijtbzOpp2nnu6PYWY2EnxBFcsC9eNNBm2P10GT77KYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KW+chVhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KW+chVhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6AFC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778743233;
	bh=X4RE3q35Me8BRs1aSZ1CS+0/UiPmGB+Eo7Mt7GhGW20=;
	h=To:Subject:From:Date:From;
	b=KW+chVhLbypVCR0GKzRDkair8wfSOst75gaSMX7xBxW59QCdwdZcIRjl3ZyMhQpOy
	 +IUhDvlF6t2m8dzpBC6zVVRDeiNAwOToPD/IKOine5Cq5VVfgfbH7XDOPohD0i3pSx
	 Y/6iZVtTovhuNSl+w3IanShYDMsvVrTMQN1LrwZTjp4s0rf/21v94SRoEEAdhNC+S2
	 rrE7rDtgDPEl4dFYtQKUYs6Gjc3cMFbcyQKIU1xMj3i4N9CuHnIVIxE1xHjF2BBVpU
	 QrUrl8cUJxauFsQ5fvkYUHZfgrg2ycJbkua6eLndCBQKSMdE8GZ5KPVKlVPdL1Zn6i
	 JlpFBQLtYrNmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA36FCD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874323368.31785.10596974083099756663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b1d61531b3c611dde0e89f325df681e7613bf819752c7c6e04d117eed679cd
Date: Thu, 14 May 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778743233
