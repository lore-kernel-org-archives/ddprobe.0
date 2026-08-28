Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDD02AE76
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787875834; cv=none; b=RQ18fAjw17wv/jYOzghb5j10PnQzfu2plfxPheB9kBIDr2+4oVWt7tp12cm8OPnkXyXOwXOUZsvtVz37xAw+E9cmxRUqF6NgqEqC0Zas34ONgX9PrNVBJ2IFqFRRzVqdSOncYLtXHA74hcvugtHeaKbGdVdBaOpak6PIGNa9IWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787875834; c=relaxed/simple;
	bh=I1W9eLOhYn997OUFD72hQg216jC5RAgLMFbKOG+mrcI=;
	h=To:Subject:From:Message-Id:Date; b=jVqSlmNDIv2dxmzj2KFtIG/pC6iVmhdamYaSfsqxO8/gindbTQnoLohb424XD40XZXohEO7LZKFshIb7VHRhalhsAodrKRKwlu8nEc74yul+L+dPOf7WSMl9F5heHKepKGMtQ3my008wx4PeRQA9VxGC2RZq17mW0CqZTyTIsUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSsuwAcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSsuwAcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DD7C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787875833;
	bh=I1W9eLOhYn997OUFD72hQg216jC5RAgLMFbKOG+mrcI=;
	h=To:Subject:From:Date:From;
	b=sSsuwAcmNEfCjQug4nueCtPd1kPodCYiZTmSkCnz1eSxzfMHMaxgaDJNJAlfAek0f
	 lBcfs4beZkdrh7Jm8hnWFcLUAAaNlOJxr2AYC2nUCPYQMF0ilMpOHpwsI9E677uY7G
	 htN7+6ALnxMVYXt5wOjseEfWTL2KRgnGk8VjMBxZk2C34sybtB55BNNEceSnHVXsgP
	 ffBj4421/OxIyDNYnO/ifu1l1KoMux8mMd2ZSQo//XVo0DsBU/Ns1jvhmr4PXLIFoX
	 6mKOC7/OdVUzow+1WA95ppp0zjNAVUxDi9Wolj9q0GAgeKP1cxsSou1SSejhc9bFdU
	 1FqTqUlG0KGcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB943C61DC4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787583369.24083.14020347881168491196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dad74a8cb472add66c6c90b4af464480c58361d437125ba823056b0fb36ba74
Date: Fri, 28 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787875833
