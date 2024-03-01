Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313BA6A344
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709282897; cv=none; b=KhLcy4njG54pLuE0ApjDBYycWZyn2MQY1lLNrQ86L46viS6JdKtomeGf+Ap+99NbQzTwQm04zMBHJJ2O15m1tWmKWfcQRninL/cxIDFgoCICI3yLeCeMIZsTdCiBgm7YKrry8tL9+hBodgQ39egJlkblgDhwICiwJNXA42FpfDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709282897; c=relaxed/simple;
	bh=r6LBg/rvYqJmMBeCHCCF70ealA2TkZAx2Xl5TZwoGaA=;
	h=To:Subject:From:Message-Id:Date; b=fD2FHAUT3vGE5ichAlGZhMdbS7ByCHpXkZx8GLMkfWLDJcQbb6YJlmgGZ1FHfQVU1IgFsMgLyI8WETg0Ieqxl+5YdG7xtSpDbUZrjx9hDjg3xxR2ajYJ+UbPoBix7mKX2qs8wasfRizBmWAD+VNJ7Z4CtW8467mUoaGoXpFORWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVwFzALA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVwFzALA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 881EEC433F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709282896;
	bh=r6LBg/rvYqJmMBeCHCCF70ealA2TkZAx2Xl5TZwoGaA=;
	h=To:Subject:From:Date:From;
	b=gVwFzALApKhr91fKTce5MAH7FCE7G30GYwuE14zNBcHKWlMCOv9EFtTV6yROGykI5
	 wtTbM1h5inAc5TsXXONdKrimnv49qdUlxX7+1HKzeN2TTec5j3MrKvXBgo5hy6jX1z
	 hmLQnCQrMONk9+KxpH0d+w5pN44HOFHKkzd6/mlwvQqjP/34GS3tC4jkK6HmGJKPSD
	 tzckKiR+z0nRBSd8ItOYL+ZL+A3HbRa4H2fvArFOuU/lkLCiweMxDz6zYZzb8JZEcs
	 wRFcMFTB2fhHCSHj7LO5lIWaQanhiVSK9nPfy8JeyLxaqHll+yMh6NNSckBGyAYSS8
	 HNsGljsaseMxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668E0C5475B
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170928289640.26604.9579253836970389942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c3bcd3367ee9fc354faa306221ea565cf4d01d9470e2a8ff7ce82e83241eb9
Date: Fri, 01 Mar 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709282896
