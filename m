Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F16182DB
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 08:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716365003; cv=none; b=kT/g7wYpCWahbvm/0weCn1/AZU58AiMf2akmnUs4DqqVf1qAKrm59boWzByFuWhvqitWj8wv1m3GYn2sLvkomqyMsAZFtEgftQPVps28+mv6LCNWrqdGAT9uRKL7BwnGH9ZRYyjbNjYEOVOkIe4kxPd6vWtzRfE/hhzk8/UCBSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716365003; c=relaxed/simple;
	bh=RmeK2J4LMnqSx8eClSY4N9hNEDTNRD7w4ge0BRoybwg=;
	h=To:Subject:From:Message-Id:Date; b=pdJPc0DzaAy2dNa1ijHWhgge22z7W3UyECbddRbIPJzllhG1rEUJIQv6+8aoehfGShC0MLg1QTsjp22aMDbyJWbL7ASBs05ZPv9BBolubRxG5GDpPSp2vjK1LZ7lCZMdo4nfz/7sWOU3EjegRvX3AfGUQIxY7jhKxE4eopcjaWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqaqAeM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqaqAeM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED85CC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 08:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716365003;
	bh=RmeK2J4LMnqSx8eClSY4N9hNEDTNRD7w4ge0BRoybwg=;
	h=To:Subject:From:Date:From;
	b=OqaqAeM/D1Nz2HXXK5R9fntSuXfV2kKbcWZBLZIgeGcWM+AuOY+x79kF6ppitLbgh
	 BGKQOucEHQ0wDUaAU0rtl5mWUilv8tHt8UWsDclkVziMGBpvf60QnRX+PY3RFBdRQv
	 TXhawqR8ScZTUMiMBv3gBMNwLlr98ITy73LYSfNXNdr7ZKmmgyXOQWoMY1g7FsvtYZ
	 CWHM3pdSq8i37CW86/tm52HMGJ9vlPphePbBaojNjxq/qnsCf5dVpydfLmAL19MIrH
	 4sSXIfpin5dWfJ24c9uxHT4AlsfRgIcUHREBN/3CQIvn7YuF+2z1HH3qwfquBvxX0K
	 8KN8/eYOfb7sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5AAC25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 08:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171636500282.21495.4588772038690229907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e931398780f4e77b738487956c0c22078ea66c7dc0e611b7da03f47b7ddcf6e2
Date: Wed, 22 May 2024 08:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716365002
