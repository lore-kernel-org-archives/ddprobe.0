Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2479D18EFED
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726179354; cv=none; b=uBtkiUtsBEmgGZrNXOCNPL9mwTfihqmd2TkwZTMhT4laRhW01Q5/kM0tfb8L6JJwEguG0rQdNBZFrAOBwYDs4wwVRQmnD2SfgmM0UGRRr4NHX27dZmMaKyVxSZplvaC3Heh65IHb8ytxDdRziFVClfNbl3SyvWIMyqCC8pViH6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726179354; c=relaxed/simple;
	bh=unJ0dZtgIhOSpXIBI2LvFf6zlSdrQJRgwSXEUb6UO1A=;
	h=To:Subject:From:Message-Id:Date; b=HMooYQGWx75fjL0QLDytZRYRm7tGrIdtf7B6/UuyqSQJ3m4T7muta06s6z0bLBPbsKGrnzXSJetRiQs6Rq+xNnJjY7N2QyOfJMU64JmfOQMEhi6P/ntZrgHgctXo1JCRA7iE56/jURagwZPUxIdCC2ySJPZ+r6sXVmPgVFDpKq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hunqjLhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hunqjLhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AEBC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726179353;
	bh=unJ0dZtgIhOSpXIBI2LvFf6zlSdrQJRgwSXEUb6UO1A=;
	h=To:Subject:From:Date:From;
	b=hunqjLhDxsU3DlChxvrzQ6+BVKMzqJwEhexIsqEAHUhSrwI1LSejrcwevqgeD0elu
	 vTzZbDnV+TGuNm2fMx2NRrX1LY2fL+mKNkroWnA1xpAPysfC6hIV7QH9DjZECeEKSy
	 mVXHmQ7ib4PxH56bOypAN01G08WoqPiOQrlYf8rk2GKJ0xQMJ320/3qtO+ccwddoet
	 MJco1ZuCDQwW3InIHl8M4GH1hpsI+420qsRs1LGVBIbKKsERxOzReuHQqIIHDRmB4C
	 lUovS7C/aJexU7cx6u9qSceYjY9ef6TeVyKRmo1zJMhwJmbLokt56EM2/Am5el5iFL
	 AVYMgQzrbD9PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97692EEE26E
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172617935358.22523.8305599583565955020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f339e4faaa84601fccc30d383c0995c5c4def9765eaf17b8b316534a90a4bb
Date: Thu, 12 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726179353
