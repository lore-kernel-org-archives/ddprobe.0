Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D1E1E230E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775023494; cv=none; b=Va294ZeggX1AhkJHhs+OYoR2jrW8YHJ9aZa8LHOv8HZCzcWGfCQnIaVsf+5vEDXci67CySoqLklnebYheb6RLPDt1u3UZrdQfoj+jMFzH4U5uphDbM+3OAgALJrE4JVOFvee9W7t+sEmWi7Dq7hnhCnsVuTkma6SjfMD5RuaLYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775023494; c=relaxed/simple;
	bh=QNw9b+j3IYuleGAD9j/5a+yionvzAYmt9GmMgfLu7sI=;
	h=To:Subject:From:Message-Id:Date; b=cHaR26NKHW1ik2Vx79PCYas8XwSHzTdVrEb1o2Xk7yrH2ZD58ghe6q8s9sOs/PMuXBMmHgEp85XTxvl+nB1mLO9cjxrPqeq6TB9bO2XJX8XmDibnvizEzwxqA+Dqk1UF2aVdXNUuvQUdbDbOxwV8QNiOjVpUQVfvuLli4QQZbHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0jpnFhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0jpnFhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B698FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775023493;
	bh=QNw9b+j3IYuleGAD9j/5a+yionvzAYmt9GmMgfLu7sI=;
	h=To:Subject:From:Date:From;
	b=R0jpnFhYfLg4jyhIyo1F4D9RT8C+PFCThFHNnmwj1DYL/4MZKiUr+DLTk+NvpJhMf
	 mxfGBnEIuTETl2/X5sYNOQhi/wRlUt+wxAcMiZuwwzzzX5DF3J8LlJ4lk4eRA8CTEM
	 yZZ7kkSR5Rq6dupmpHp8IvDkJI1HKUr6rbBuDcTWLdxNcq21mjI1nhAa5sUYgDzhbY
	 NJrp83HVOZHzOaqGZ1eaRsH3M+G5eNgRHzMRITEbp0QfexQ8z5IFs4GfyNwg6GkJRv
	 prCLLOBwgLBX+5yCDcphM6GK4d9e8TzVcXKdwaMEbACAMTc5Edd6qpT0z0+xzdEZii
	 HsapiK82+KaFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48581076371
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502349361.1061.10409462509895114107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c52b9da5657a6e634f09933b786767f8ac3bed9885c85bb3b553b60de4ca15
Date: Wed, 01 Apr 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775023493
