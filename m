Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42109442C
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748322594; cv=none; b=FD0twQCb7ctiuFDeday8qMQtA1fuD5Q/YssOhkwE9BRL5gigTTCIXgvnK0WEaMVEVoYvQgxfVBk4sbYHtDpOAm+j5HYx8plImhhZqpsz1HozuKKtOTPc/wELQRzo6BGA6vsj+jZYTkcw1rKU+u/jH2aVxoNN0rwg4cDeVSg4O4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748322594; c=relaxed/simple;
	bh=b2vZh8adrzVPjkLQOguLnoe/1gy5ke2+Bjxsj3fOuMk=;
	h=To:Subject:From:Message-Id:Date; b=mz084+8Dr4KaRPz4U3E+chzf1uinm2zOnu7snHJ9vIgdPfwkG0prtDIbcJ0lX6L8r8E4ISJzFI9H5Ec6Q25FCWo4U1tY+zsLuqeljMbRY+XdZE1Y214B9QwRWqLrGYoOm8zQiz8u8bhsqAj097r734GWlVAZH/6zuV8/50qcTGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ox23jaIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ox23jaIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A615CC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748322593;
	bh=b2vZh8adrzVPjkLQOguLnoe/1gy5ke2+Bjxsj3fOuMk=;
	h=To:Subject:From:Date:From;
	b=ox23jaIoHr2V8JTY99mFEKAcg9QOi8KVxShyT1rhJ1G1VApab3dKk1FTjU+DgHIKT
	 kXDhfFRmDcqy9nsmu6FLR2rjX6k42FKJmHb7firmgcJ0GVhXGtgCYf4JbxI9T+YixE
	 qpYUBY9cMgBXgIBPApoWJ9nMroeqx75T9BaQmCJCLp3oZ4FAqWMxT2txHgvLHLdiK1
	 Qv4JxZO8hNRKcEBVsXOSLwPB+P+25DCffEuTwXB+c2ewX+OxHn3bzFa1tBqmdoJNCg
	 hGMFCawWLH76FztcFVs90z3qLmDSK12lW+wL4F5iRMrU8HxbfFzEfv6tiGSaAGMU2b
	 QUC40oWn+lkfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91982C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832259357.23770.16845143911632231483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad27cd24d903aba073d3701a6c394f66ad4c5d7699ed06a3cc7e10231793e4a0
Date: Tue, 27 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748322593
