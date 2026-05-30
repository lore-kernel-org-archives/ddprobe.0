Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E97014A62B
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780161814; cv=none; b=L4JbtGbxZyGEa9Pg5yZrKMl4J+nAkt+mEoc1xCGjOzul652cdKM4/I99syzohiL3CkPMTfh/xdVSMY/j0AgF6vlsiUZOtLdZB2RAjVrmsQmNuCzi9D8Pom3ZcoxsREn9g/0D+Y6kMWo0ETNCV9PzvyVInDqQMAoC1A1t8ktWo74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780161814; c=relaxed/simple;
	bh=EH6ktLNCMiqJHwN1SMw3UCixYXeHdwgnklUtcfg4lQI=;
	h=To:Subject:From:Message-Id:Date; b=DRT74dtQPRVFPB2EepWpXzr4YB5jQJC3UMGjrfEnKra9Ptt0oE+652NNpbFOJX/G1lgd/bBQMfJ5G229uBKGfJfC9kONrLx6H4+nTSzgcu4B+ILu+2pxDI0F5ImRSCNp3HW779pddWCRt4BPFXJBJUAw4vkArr3haBomF+7H0Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLRH4mOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLRH4mOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C218DC2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780161813;
	bh=EH6ktLNCMiqJHwN1SMw3UCixYXeHdwgnklUtcfg4lQI=;
	h=To:Subject:From:Date:From;
	b=vLRH4mOTcVloBOawzUn+bpyuvvOv0vPPiWHO2J9IXdR/79KtimeKthjDbjJ5/J9r8
	 +Hq46YQclQEEGkHaqILltdWXphek3+3psiEiKyGuJmdVEUdCZyuLCvpZ96ATOB56I3
	 ltyPui8UqL4P962Q5veE6xBHCSh5Sh8GQFKaTsBxSKLpRmR9ta328GrkGnEDmtiD2I
	 5AiC69pUF4cLyiqrChExBvU3UMDw+BUYaYKo1R6vDtmofXcD/7lBdyMgFtGirhN472
	 u1LZ5pGZREdz8UBeq6y5nWvqaO5H/8w5IfED+aN69cLRcCRhXW8eoo+0uhw+IDjK8L
	 B7P+1JJPsT14w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0EFCD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016181369.8950.13937695276886438361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d75ff1f3dba30b8be9cb3b08abd6302a43f1532041c8cb835081527b3b8d055
Date: Sat, 30 May 2026 17:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780161813
