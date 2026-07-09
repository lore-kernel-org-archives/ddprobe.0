Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2911326ED3A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783562314; cv=none; b=j+q45TdBGn8nkSlIthBq3T6deHuyR3Yau1+TBz/SC/vw8p/555HKP0COEdtIejtiaJ3ur87zufdj6sLFwzSmZk37WasGlDIrpesc4bxx+rZBKDwe9xcGwhIlpfy7N3D0/Caj3nwzrX9UOD/2PpIgM0fJhwdE0OPGA9YLccwPHZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783562314; c=relaxed/simple;
	bh=nVlaWYZGRT2pS2bVUFnCuz3l76wlwMoYHC4N5+1YiAg=;
	h=To:Subject:From:Message-Id:Date; b=Y+crND0TbUy5CueIMGer5YuyHDs5f9RkuISZI2kK3CFt33GISb19QzX1hc84HsTvP2Jy1AIy/rpCLXKIfhZv8RQmgxcrFr0wOMgBOVJ7DUF21bRYzYy8RiPaxxFt/YvwQxAoxLWQoDOx6zvBri0TMZwoYbmf6l2cyAhW96S9dkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg4bsxZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg4bsxZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA388C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783562313;
	bh=nVlaWYZGRT2pS2bVUFnCuz3l76wlwMoYHC4N5+1YiAg=;
	h=To:Subject:From:Date:From;
	b=fg4bsxZGH+cSQcoQXXLoMr35kNJJc7xvBQz2ezK5yzJFcf6fIUk4WYz9NrWqfMIrS
	 I4C8lqn3el6uRvRcJL+vZQBYilMbAuV5KkEsh33ds8AO9NJeNj672c4QKe+pRJ+SwZ
	 F240Jr8DctOrbr1RKKSZ10FOmj8wLxowZVipITTajsIDkfbtDpS6v6mkTGkOMnzk1d
	 TS/OgnunfdHs7B8BPGCGAPCP3FfbA2m0DGmhK6GQk2Vx1QVEQSl/P6GYUz8lBb6q6X
	 fN2jl6wqtKqLbwDkr26dYu+YhZdg8f9Cd+YZ0+iTwicNqtOHzJ2/grd1iPOsU7N5VW
	 KjZZXtZt3eJKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA55DC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356231367.14109.18006802363110939832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3169883c6e5aef5e04978a39d416648132a70a6a1604f70a66bf30475b1eef8e
Date: Thu, 09 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783562313
