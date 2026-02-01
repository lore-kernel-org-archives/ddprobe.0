Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110633195EA
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769943234; cv=none; b=rRC94jYRl0PD/j5+vcbIdLVqAeP4S//AcCMZxItdYM55XqkOcigjSqpvCpHqd0YbVLBKWGPVCOAwQ6xxqSUy3VeVOi2j6WACyFxMIozIE0ZW2LE8BMmosoYukV/DZ2Lt3TtW1Y+FviicvfyiJbmfyVvONBgAfRoftPfL1zFo1dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769943234; c=relaxed/simple;
	bh=w+7ouiJoCMyl7Yzap1TgoAJFE5Y/+FtIx61X/snX24Q=;
	h=To:Subject:From:Message-Id:Date; b=qoIlxdnov3edkXuwTRxcHuAmQ83knm0avzSeta56jMQKQJ05e7m+2P0BMTPds+qgPxNKepUG4/4GBYomyTf6QiJROaw0aHPnPBTvMbOyHNMBq31wuXHy9H5n/Dhhi4+Y4fdj4K27pNKvXVV8W/uGYu1mFLzDtJGk8W1uKsuKiy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PenEQEeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PenEQEeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE82C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769943233;
	bh=w+7ouiJoCMyl7Yzap1TgoAJFE5Y/+FtIx61X/snX24Q=;
	h=To:Subject:From:Date:From;
	b=PenEQEeQ22o+MIVovI3C1lOYrndTI8a4Z5/mB/+mN3KLZKGhM1l8nOaeghldUiUYT
	 B54ZB68zvRSvOCoNo4o5w+f3goKg1a7ZOo79vfU1Xurtp/mWWnsYwLaHlt5BL5JnaO
	 cAvqPtXi0DdIPsOqjgKzo9y64Phw3CYL0vkUIU8i0bGiT9zAeRPZCZVc9ErRkH1yso
	 y5oakAEldYCgnrpTzHnbBYZDP5wIk8fEb6TEAUDuPLkHqMuHCuBetwzcX456e6vx1h
	 zDY+vY0ip68IPCdNQorgwz8PukHfediH30Ux2mnx2X8TdeZkRYU2m2FFm7oTdehTYv
	 J5ooDZkoDFf/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E339E7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994323357.6239.17342733893768179794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0abcb2be0dabe3d11d5e2c36ed1e91bb2b1a0e34892b9c4004e7af019ac75a3a
Date: Sun, 01 Feb 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769943233
