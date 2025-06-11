Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFCE6FB9
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749621595; cv=none; b=t713YYTCa+wh2gf/ZQDhpSC2KNet5H/0XlKhe5SK0tX2qvnO0eCdD+5RvYrwryRiMfuyDWJIlzxUZ5ncMZvHG+FKLBSMYc5a0+xWK2hF456WNRWCnTrLhbSpUzJv4kbqjBUgz3osIBmcR0L5pFocKS3e49yFNTcllhu+ydzPhmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749621595; c=relaxed/simple;
	bh=ogYn+EaX0meBerGu0WMoCo3SAeBlzLSwv6NQhrDBOQg=;
	h=To:Subject:From:Message-Id:Date; b=h7lRs4ics+yvJDtZsbYboIdcXF39nnqE7tqpqV5ET28lTGe9spNBYQd6woUeGHWjudhBdBf0H5OlpdkY2HBQNF4UB5BxG2HjRPqhA1qvYnF6zeyn9rN60ctHgrU09YMk6ioEUkXPfrZ05dZEOMvThwgvN3PkNFf1BXUSxhsTKIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiigLTXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiigLTXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EEFC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749621593;
	bh=ogYn+EaX0meBerGu0WMoCo3SAeBlzLSwv6NQhrDBOQg=;
	h=To:Subject:From:Date:From;
	b=JiigLTXMD9mdweDUvE0UGp9X+Wk+ysA6D+cLhmSFCxhf0+kayr72Le5mQmgiy/pSr
	 LNbknho/TASSpryj8NB1KP8JtYcr+qmew9g4GqEhVXLu9vG+e6H9MFT4AA9p/jJks4
	 eLej3xERDAKTe4PDPeIjVnzuexIi3eeiJh5TOU6vEijFq1P0wjzSYppF9e0keuA2h0
	 DjDzEnxi6b4A+x6qo/xeu61a9aH6LA8O09lW9CNo2rZ6Qk8wX+3VDMs+Jz5a8syYTE
	 AwI3LM93nGW7epaSNJc/FiXZZcHKjrwFbLkqqaLAA+A91rN6P+8cfY5Zay1TjVE0ki
	 WYL7sxBFMYV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF80C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962159357.6813.2947841543859507732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c238b4bb9d6e52a72e8592f48fd116336bbfc4d3105fa4a5e02f8a0a380fcb
Date: Wed, 11 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749621593
