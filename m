Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F7E18413D
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717757243; cv=none; b=S7/5c+n/gSYGMfW6N8k/jxNhdOO1Q1xfZW7wK7Ic/g1ZZN7IBkwOpZvHyn4tDhRqfe/v5zjqs/TNONlBfgD2joYAtyN1VWbk5vPuxeVFnsk4XRX9BiO2c7Oh76T59WD+nfIINgDP2ptVl2+yxPsWOzkgr9H3j/3sJITzL5R58fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717757243; c=relaxed/simple;
	bh=wegObLY/85x+hkiECrbKipoDE3bYDf8dIVG0/VgxCf8=;
	h=To:Subject:From:Message-Id:Date; b=Xnjamrld98pGusLvnthlsHE2dJebta/bvbU8pgQcpTfuWCQgGxO8RSiTnzo3YtMvtQircgxaMrYSEFvNU7gU8MqcLD0Y+5pGsDxUlz+EK2vLRdasl9t9wtyjfTd7N8dRu8TpVOF2h+JLkcBaIjBHMxDOmkhqv3KrOzLtS6Q6MJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ck9oe9e8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ck9oe9e8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D689EC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717757242;
	bh=wegObLY/85x+hkiECrbKipoDE3bYDf8dIVG0/VgxCf8=;
	h=To:Subject:From:Date:From;
	b=Ck9oe9e8YmOoiP43WRHJq1dwbHcQ6ICl1B0/0rwXLvdHBz/4FlsdqIk4pEBd4rggV
	 GosOoq07pROQ5FvzooD1LymNGCEsWZt3l4liVZiMu49rl/EXf3+i9cxT2ARc4EDBDB
	 mVRqJxs9nH5dp+29ApLz+Z0HN2Gx2G2UmZhZ5PEJkaXtZ82rLL2wrF3bSfxR/dsM/y
	 nXir+h3Ud2Ju5eRKhH5q3pWCQKqDQEWT+eBWa1nTcKEaRb57eNgiAdvC0SX3qqlTWS
	 19YntdMvCBv62OdfaPZhx1+egfjM8HjuRQ+sqJnvjTKLmcLcRoQzx60Glzc8ACsF4e
	 1lt0pmpz+jvSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F95C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775724280.31427.15513554708652761039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf24d6c34e97e0ec0076b118430c277735db95b7b2e9bc7cf72ea2be33e46d10
Date: Fri, 07 Jun 2024 10:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717757242
