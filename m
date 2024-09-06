Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2167714B07A
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725666354; cv=none; b=sooEvjiPoTA8Vq9o4W6H60+Foi3kdtjLFA7UQF74LGLLckJXYXCOhB1pNrwEesITx5noMiJYRMuA01ym39lpMANTsrOnb6X97Nwo1iQ2nGiNUDBQaMxUxlC2vQab8340nekQ/pVWg6Oev1L+2KC2oy6EbpEynRlvDUNxWkbyPTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725666354; c=relaxed/simple;
	bh=iwZt44ogLQCBxXO2poFod5ZeQLmUB3OKanhvgrEYZ04=;
	h=To:Subject:From:Message-Id:Date; b=Kdq7aCeJLi9WrJW503l8Fj62xbJHvxR52PaPhtHRHOLmkGzFtgod03G0469WQ6unty0pPclO8adAVSGpDZGN76tJ3IjrZXoW3vgy+BhuRtuDFsggmtlnHNVaVB2gk2m25RSwD6I0XrZqarpwW5BpBRa/eEnH0C235ZBpRBLVSvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EF2C69TK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EF2C69TK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D30C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725666353;
	bh=iwZt44ogLQCBxXO2poFod5ZeQLmUB3OKanhvgrEYZ04=;
	h=To:Subject:From:Date:From;
	b=EF2C69TK4VRKf23zn3Y9Q/HDRMJF1KOLugs9jUClWv9YxiDXMFBD0v783KUftDVO1
	 pzkzBGswom9oQmee/54LhFyYz2PJnzfGfkPlcG8Pw6eh1Jn61xTve/KGyzl8m5fq8e
	 DmL4EBP8Ktyg82BJXWjMBrKBLIdq8RrpDEit+nwFGLFNOVy1jKY1H8hT1nfK5YfuSd
	 Z6UNKT/mLy5TEUYaFIDF40l2aw23hk9ZuDqpMPDxq9wG8hi18ZrcslOKo26cqDKTYz
	 OzKjf/8EMGkVIx56um71fhijjUHMwqfSDFiyFmRUNpZMERvgMe0/NH8UNwCdfndYFB
	 EdxjQHvskhhNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96887E6FE4B
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172566635360.21692.15249382233122812058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ecd4c28be07ffd43e3bd3a08c1da1bdf17b64351813285913778151a33a040a
Date: Fri, 06 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725666353
