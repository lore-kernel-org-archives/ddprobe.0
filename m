Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACBD1A2545
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753451994; cv=none; b=ds3UjfxHjdH9hqlqFdvn1pLdp3HrDsQM4jn2BPEM5aYEBg54oQpbth1oZH1zoqbRjlaMWeGqFeE4EJJStSjMErW0/Aq1M9YHuHN0tvAYIyQry754TQQdYHldxv1k3uQ4vkBRTwNnmETHOwVzvHjnd7lw2bMkPy90NPFuyXh3r5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753451994; c=relaxed/simple;
	bh=XHIXppEsqbo+5aXGIWUdka1lbVLl3zyRzYY+lIIAij0=;
	h=To:Subject:From:Message-Id:Date; b=mpf4FDcua6xusqnkIZzK1+PcelgS/rZ29SiKrQPf45yx6pJRRA0S+/p3kzmA5hvN1CWnd/nBafEdszM7/QB5dOTH3sfLhNGoWeYvPRfQjk/tEs8TRVwsrH8WTAQ1gJUAcgZKyyMKznjqK4a5v7YCgMMoYUCNIRHBBV8L8JXFjGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzBWuCvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzBWuCvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F90C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753451993;
	bh=XHIXppEsqbo+5aXGIWUdka1lbVLl3zyRzYY+lIIAij0=;
	h=To:Subject:From:Date:From;
	b=hzBWuCvNFxiDaFhGT/ySlmusXvLTsQjA0httvcme8by5Ozvbejf1BFi5hHcwJs76M
	 gRKURTYf6J4/o2pEV1u0gjlYU6RWZ4Ak/MTneq19/3+YW87HJDbxxGRoMIwBLDcDsE
	 0ONNCHHgcRKArpXH6v9gC9ebhANP20z7uNEdqH2CoBV7eeyHvAJ9iKsm59dCftF4lN
	 AmSJoWQFqj9XNkLI/uKvo8FxfEu/ri4mpKVCj1Z0WVykYBNwO/Q+hjX5l7nmbV94Sh
	 Mje75poClPsfLYjuYoLQ7Dk7D5F2Jq6gDifhbMSnZJ7x1m3iqTTN1nA8nsyiMRPdJM
	 CBXAQpJ+OMENA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92109C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345199357.3683.18421153146105063430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0b17f9f6d033a728d07cf3732cd3c6efa95bfed4ff622b8004b4a47575d132
Date: Fri, 25 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753451993
