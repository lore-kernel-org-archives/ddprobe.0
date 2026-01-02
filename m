Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DFFB672
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767340434; cv=none; b=lmEHX2K4QBOtQ1wgE6veB8R9clKiAGxeLS9/RNHTQV6mQdGyys7dGkMpCR2nBD1f84BvltLsRojcssJrjiJVdMPWFdTNrgdX1dBdGjrSsLU5ZwwmDSHNiOAFNEsaKGd1Xp2qU57Y/a4lVHhBBsnZkfP2nXwZwkR8xBSbQAlSf2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767340434; c=relaxed/simple;
	bh=ZB3fGqlck/t7zy4clrA7jufcXgyEmHraRmOUVm2G8TY=;
	h=To:Subject:From:Message-Id:Date; b=l7YJFG1pV4Rh8nC8wJgfCYD8snTN/Rh+fU9pqEmzSiVUv9+yiBTsONJ7RoSjrsjPoJ2hWu77JkXNIHoMXOicKTcF28WI0Asrjcue/nyk2Hl5jiuAiZXNsbq4TETHdr0fDCPDu7fm/YDQhdI1GPj6VUl1U3BtF6+ykNaacO3NIuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwT/SCCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwT/SCCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10ACC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767340433;
	bh=ZB3fGqlck/t7zy4clrA7jufcXgyEmHraRmOUVm2G8TY=;
	h=To:Subject:From:Date:From;
	b=kwT/SCCOTrhRm+cITBv7atRXqO0oVm6TWxsmX9TCVSoOMk4DKR1fYa3O4FqPlkRFS
	 Wqq0Czc8sC7t4zWqfFZ5HjwurdpK2Sqi+Gnmr/5dJTYhR66xwDw43U/0d9XPgmRog2
	 nUET2eUel+jBiqCATrw8CO8uIfYScet8DQKcONl/917P63vlfAEOKWbpUQxjDx1nDl
	 mejYYvMI1d37O7vmEVUqKfUk4OhBY+I/xN3XUwZBUG9SsGusKlZru5NmGa77Wf/LE6
	 E8WBcFOhRjOAy3W6WfMGUDiXfL7RKGGBR3X9roLx2KvzqX8nqARt8wT1urDLt7F0XP
	 +gvytKqgD41Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8FBFA3728
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734043357.13957.3620534129492090801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd55015a635f77968e7ff3875f7f53f665d2ac2aff592f33f54076608689776
Date: Fri, 02 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767340433
