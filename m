Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B400372B28
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781870794; cv=none; b=R8QtuYOD8Jx1jqHBLWvgJLm0cp1mtJu4RkwdOud/cdN4kAUZvoa3V87SLffe98IGGsucimdhyd32UWjCScVu+zIxhPON0uykUVBWbDg9a9RYSO6gXTv5UFd/UO8n9ztDTUBIuHIE6W+qHkmNdTGE400lg7qPUVunThah6zm9eBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781870794; c=relaxed/simple;
	bh=Yo+ykdek03XQN2VF0SQsw9R7h1utZGCqyRuH87UrnTQ=;
	h=To:Subject:From:Message-Id:Date; b=cXuJggpaBwoO/zhoRc9pS3M2nWkQ/SyvGFeZVzyH4XwWgyy36lNY9IufIvvBvCGE/tAQqakvBdQOfDl5DOoClbvPUe4ojZdrMbfSr9jRnkmAx1JBDJPBGLPSTmk3S22wOriPTi+Xe+2FPD7j/cVv1NLBKxKPYz4O2JdqOK5vI+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QctTgi3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QctTgi3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F38C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781870793;
	bh=Yo+ykdek03XQN2VF0SQsw9R7h1utZGCqyRuH87UrnTQ=;
	h=To:Subject:From:Date:From;
	b=QctTgi3GOpOGUANWsO2iIAkaGYHAQ0YWrln4EkhRmrqVgP9pXafDzj6ftSJZMk3KK
	 3cMU1bIEqkcQIrTGQAPoOcEJPRbgsrd4L6ikpG0ACGhcUm4gd2Mvhbs/y9n7JrBILx
	 15Ub1sJY+M9aeowiEZ7IiJUmkrZoWiClJjVHMdKM0mLr83TxDMcePM7FZAcr+WQeC5
	 Anbc9bco52l0EIaKeR8jOIjUM+qaV5CIcdeKpXRJvZFebZy5dxJ2QimSVxXSqfPX15
	 wAq3AbncxDd7PvqafumaCq5Sum9M4Pd73BvmGkTT4eL667bAE6Bv3JC4hd8LEOxopd
	 zZbOXVD87scrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AB1CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187079374.27893.14458247559934864482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42268da5f846c1deaff4851818cc3f8b0a0ff593182f8b96f0c3e894fa658d20
Date: Fri, 19 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781870793
