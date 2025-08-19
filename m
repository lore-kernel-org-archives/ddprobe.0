Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EF5212B2B
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755604794; cv=none; b=SC9acqbdttMScw1JCN3RXJh40yF4VWxmCPnBSFvJZIHtiZQ8zXGaZWJfGORiN0gpfsLECWxbNKBKsS3gYPHF71dlceZJzQq4eNm8bKMI0gsxJu/E/8i97t26K5RjWRS/ONZBCseXJ1nVeqTDfIldXmyczxGf26s36x9z0RKRRCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755604794; c=relaxed/simple;
	bh=AMKCwQXD0RVmLW34VWKwC9FrSmq9fX/sI2d92PgsY2o=;
	h=To:Subject:From:Message-Id:Date; b=m9lh53NcjIauScz0QDsUCQS23v+5dGZmGniaJ80hqUFgNkQhRuj4bVSu61HmR+IfO+cLgqqRsPIuBAPMmE12HpbGPdgmgKBeb9NDC2O83NMkRMQmC13xjzBSMDxppXeToSvg2nTt+uDOTKOw+6VXAde4NgvufTn1umlVqhauxMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy6cd1gp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy6cd1gp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA81C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755604793;
	bh=AMKCwQXD0RVmLW34VWKwC9FrSmq9fX/sI2d92PgsY2o=;
	h=To:Subject:From:Date:From;
	b=Yy6cd1gpbKX1P+isO82rlblAc19RFqR3krg86c8zBAmD23XEfmWWHMSPUYTDeXa7M
	 DC0Wq4bFYY2iWFP6ryg2kGZ/DvDxwj28sx8b8xZ3LNd6W5cYAia922/S6UsKGoV9Se
	 mJIJPucnmWGU9Xq7vf4YX98wlweIaMcbPBe8wL31GlVW7h74krzQhz4Gf88EwsyQDM
	 GRLINfBSERS/srXlWDo7CFEQph+5aI10GuALtUDqxm4iOQUdlF/CijfeWssbEBpO1c
	 bM9Zo8MAqKhMQRSDm3PpVIhhPW3a9eLPthG4+Y7pJbDSt/eVPKZj1fO73wBR6aXQiM
	 1/hKufHPEIxNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB5FCA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560479361.10426.6499892352541073188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264cc467ab298c22c49eecd983aece72f4e2bbef91278622f518ff9645d23c8b
Date: Tue, 19 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755604793
