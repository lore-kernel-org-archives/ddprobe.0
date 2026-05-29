Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336603C1992
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780047154; cv=none; b=cb9bCIJ9tY4Z6U6AzyCagWiMl7KkrW3tNnkvsKSSFFzH/AaK5uePLVMFJNjkmzi9DcCMlkZnBgS8vr9pKLYzCjkIQ2sSKc9O8wtY6ma+5OGiYXkCh8bWksYDCroz9AxqSc3Qjr45r3OFbRnDH9DPvSnRoCFlkxkr0emdSZchqu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780047154; c=relaxed/simple;
	bh=DakGKNNBxdamy8hzgc7BBcCUKBJ2UlGChOSnJ2MJzFI=;
	h=To:Subject:From:Message-Id:Date; b=RsVxEwYuhNdJmyhJTdDTd+kJhP950UgvQYoSxr6unrAEvJfr7XIiEAKmy01XALKe4Mv1yuzSpq8VHDhqpADZnuo32WL1J7YVOPQkOEheVD3ZuZlZCu7xMLC9Smvg3+TUg+MteMvzKDtqmBAtgA0gFhmuuvJAAKohvncxIla70Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCf0yTsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCf0yTsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D29C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780047153;
	bh=DakGKNNBxdamy8hzgc7BBcCUKBJ2UlGChOSnJ2MJzFI=;
	h=To:Subject:From:Date:From;
	b=aCf0yTsPwNSvR97vyQHp/P2VzgID7R7XXZBARmRubVfCA90cNaKGNOS1I8mX042hs
	 Xp8H7HaHQSVtWoqj1n8zfmSabBbIcXWbsbB55drMARxpPgCFncd4qdDg/4oAx8Z3tN
	 A6MkP8xPzj1xcUkPuuPd2FUfqxdAxkKQBj7SRJ2fT31SFHRpfXZNVHIOOMxbsid72A
	 /RCDV6FkQ/JSCsEZr5gh8JqwXNG/X8L1K8Qn0MN+4/4ctS/+RoVbYpo1C1LE5YNezd
	 9ASTDt+TIJAWTvIANHdX8uE3t+WuVZqBTytkvIhfC7PUz8cFQabWrYsROdaaEd+GeA
	 7FLFuoB0+ECiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9177CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004715368.12526.17338733142557038205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30778d4544bcc11e2549ae9ffa016c6c56e3ec1dca9b8420aba03ef1457698e1
Date: Fri, 29 May 2026 09:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780047153
