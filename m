Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AF04404
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714867343; cv=none; b=BaWSoAyzcfmiiLBz/Lb4FAXSwZubnVfuEInNLgvWdKo87UMGzxgV57nmL+DIzWaX3dcJ/48fe6GPeALymXeHR8k773sNGMO4wCp1b+2h5q28EgYqAm3Vve1rKe/XECVRP73PIs3FiiMu5xj0XUiTib9sMk6cVlLSg6Q+QQu7Gss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714867343; c=relaxed/simple;
	bh=UIWqac2ALDe9o8Jfwqi7w4e7pprFhv8OHpglz2h7thI=;
	h=To:Subject:From:Message-Id:Date; b=VulitvR6o8o/yYbXBE7SiA243DefG1hi58v92s0/gw2Ucxq5ebW6X5d/mN2cpk3PkZlxlxfM+g+60/QeSMm4T0Vpr2QBK6MZWuCMzyKnczuSxKqZfzznOlX5KSzEp3IcIaVCZH+0UfkfbNG+ewUVBbfa+LFRspjLv6w36U6htvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlVmObHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlVmObHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8766C072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714867342;
	bh=UIWqac2ALDe9o8Jfwqi7w4e7pprFhv8OHpglz2h7thI=;
	h=To:Subject:From:Date:From;
	b=LlVmObHK5RC1NC66BjB4TXR2I06a0eACewkdydrjOVWPGqjjzfyuRH02JRlmTM8Fj
	 pdNEu/5yl/ew+to6fxEtLnjWDc29qsQ3m4EuVuMFuY7RFWh4CcPMZHtm3GIXsxuSn5
	 8MSnYheruIxxU01whkZ0I4NfX7lZt9mEdZYNiRx3JaUTUhfnjE7XrPxlQASnCBykak
	 14L29cwFXAS1fmhrUfkmpfXgz7so6powGAlzJzMCsltkquUhDU3Rd1z+3et0PdohXh
	 8ZClXV+2Y6D1yFD0FuXbGTdaQFB4RQVuemJDOBJP/friHKV5I7cHLLwNFTL3qEi2tG
	 MbhdelVUt5RHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD79DC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171486734279.17222.6973146291109052173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b813154ec48c200d6c0cd58f9a4435cfea842167530c9a9c81c62e84f3b3038b
Date: Sun, 05 May 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714867342
