Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409472E403
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742959794; cv=none; b=bAnmJWHU9PrK9BPIwSijsL0vA2Mm+QtugivFgh1YgayeJ18O04IH6AsWJEjh4vKwNMF9bGwr2HtXVyuI1+yUZuCh4omtQPbC/Wx7qIgJmY5SpeSm0hudKB/ICuum8PkQqewdY5K1PZaGVso9dMtW0h0AW7DWZq68l0FSkAtIEBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742959794; c=relaxed/simple;
	bh=1612yXynrZLl6ueRw0SDZgsopfbApY2LtOqbXoBMk+w=;
	h=To:Subject:From:Message-Id:Date; b=rGoZadf8zGuMsybMY9RRe4K3Qo8ZNQyApJ4MY+FbNMkENnEhiQGMgZRyswQSn9wugHICC7TbmOsBi+hiPAJI0vIBErJTgUMbXSIXA10nDCmb4+wiczSf+ZEXQ88EhcZL72oLhyo8A/zOPwzPsfYqQw2uvrQ5sTGBZiVZJEdptzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eadFd24F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eadFd24F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD97C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742959793;
	bh=1612yXynrZLl6ueRw0SDZgsopfbApY2LtOqbXoBMk+w=;
	h=To:Subject:From:Date:From;
	b=eadFd24Fcwh3DKamx7uOaeVJYJaVPJN9L3UtbA3AfYDQ4Xt+W5zfB0O1TvhKrtMfw
	 Rpze33waQLj3lbM1nZnaPSDhlFneQu/WQ2eMSP2mWR/P52JlhJJqaYWqfPZ59wO3CF
	 x+yqdgnmCaNOIpV8x6jJYwF3NS/49CPUGjEeMGgalBzCd//kSxFfxY1roe3ZK1ignX
	 vU80X+9lv5J/0lXWbYEARFIS7PPad5oOyub2BwEIjkUHKSNTShK4lVm+8J8QD+Rc7s
	 nCuI79NzbnUxFIavhykIh9QWz1hgjum+7U8zGmboVoZSBt+4m+m+YsUxJBDDq3RlKT
	 0kCso9AOoMwWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F1C36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295979358.14803.9876449256790602103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1651f314eef3d9a5e402dee09242bbcfa6b30ef9a3e6d3122acb28221155287e
Date: Wed, 26 Mar 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742959793
