Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4588129898F
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785976234; cv=none; b=mC52IgzEstowI6NaOtx+zJq8NW7Zu5QaGxeZ8EGzWaLBymlsvpm2KA9/N9kfe507YQ5u2xkBaXTtzUEp9sy+X9NGH0URWKfebZStp+djl+1DnwPT4BWCSK2znVUrwu/gE/mKlwR7owwWP5y/R7qrLdeDV0BAsea1yrUG9NFIOz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785976234; c=relaxed/simple;
	bh=n+Emq9aFoqGevcnjnFN9Hn/NB+Rew+AURUtu68+Lr3E=;
	h=To:Subject:From:Message-Id:Date; b=rMvnBL7HZTukbfonldZqkbMOgmZKk88ENugML/LJysRVwIfT2bhZP/nrYSWZwjmtPcJWOsRrwIL3naxVj1OfBb1+6wbdrpq2M2atljvL3cbisE8yrtAB8EXuC2VcRr5Im7Lvkxmt8ycxjqRvSz0RIYL0uM6TTbg6o49yjbN9eFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5fuZePl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5fuZePl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3727C19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785976233;
	bh=n+Emq9aFoqGevcnjnFN9Hn/NB+Rew+AURUtu68+Lr3E=;
	h=To:Subject:From:Date:From;
	b=h5fuZePlexslTp5oYNywavxTMaJgvyOW37kyGQwKZvAm2HvByLpAI61teh+/ukqKX
	 KiLMCqsXhO6ki0pyFKlB/hcRGUC/YuDmD1wvRVFoglKr4MpxhFCsI+fq6APewq64B9
	 VzqgNC94gstgo+Null/lcyS00EcGh9RrGzPkTxwK1f0cplHGI1NOac2Mr4pzv9jFkI
	 zZxLqv3D/1w4cAg5/bfdNhWvyt3CwV6UiI4BjOKCyo9kphBdc6EHnVFxoNFeH7J1qy
	 uXb66WMTIoKn5SiLn4Rjg6BHKvknuygS1E0wSMS1r0ePHfm4ko7devk2DIgXI4GN15
	 z6xLHpuWLTBdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE084C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597623370.16727.10082491630444922541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4babb11bed69bfcc5889b01375f78576c3f092b048d49f9982118aff5d16bd
Date: Thu, 06 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785976233
