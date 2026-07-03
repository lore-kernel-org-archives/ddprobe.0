Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453061F099C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783039114; cv=none; b=ar6YAajwfal36YB/t0AemryyKld/eBKQ75GaBg5zXY6NyhoddT2k3sVDuFsSsE916QOwkUmymdoo9VB+ADXPLYsnMJQnnqJzCPfCqrOyoHsTVFan5XtW44ny3N4UCE6u+b4aUTKtwoeOzydUFaTduVeV9CdHJEaS+HcOkYURXz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783039114; c=relaxed/simple;
	bh=QVk2UFhXCErSMBPcpmqAtDTYpqnhQx8Jje2THOJBXfA=;
	h=To:Subject:From:Message-Id:Date; b=gG2cMqThVTIlWAxjPOM3PKwMtPXgfw3ST3cjxYxetS8bwgdySomOoa1qObV0ZPnirnm73Nml3FaM+j5R7YxWdJDsnxrBE4Dmc+rN1rX/lmuDXHqSD2MKyTQ8Imq7cO+3b4kudmm6h0SPqCEoGJiAFOX/S1FEzfMXvTvR44nAzPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5hjZzBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5hjZzBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9FCC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783039113;
	bh=QVk2UFhXCErSMBPcpmqAtDTYpqnhQx8Jje2THOJBXfA=;
	h=To:Subject:From:Date:From;
	b=o5hjZzBnXhePya/YXcrCOObo6SmuDVZVco1ykv7/aPd5ioeTR2d5nSPWswB1lR4RX
	 q7oywPYnotw5+D7gE01PzumMdjB+qp2gCpo+9vc9x6U0HlYs6j3uFh0G5ZeXBS3zAN
	 O/bCVFbd21KFvHkgFgazVdG+ltU1QRnlx2Aqws65UCR95Ji6kaMNpzNbZ+T4sTtfG2
	 jsjuYBqLOjwBNM0JD8efj6td9B9+gUW/Bflq54DGsbnKSIxjRCZOT81UbuSMFAlsFb
	 y/0fUmGHZiSA8wQGmnuZHS8lLAWQjlhiO+c0qibEEQQ3em8j7PmzJjOzTGB1Hm6u0M
	 nBmWzP4YcLCXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB69C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303911368.31106.2909187423730113170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5209abe794a261a17ea9ac092bcd017f5a71e056c8ab17cd5497f77eb40c68d9
Date: Fri, 03 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783039113
