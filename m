Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E75D13B5B3
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715304743; cv=none; b=b9L8Vk9tQrFaNRh/Mk+OrmKRwp/ns+LyYH2PaMBG0ugG2P2q+Ei7wMW6vSGBgPQm+HpJO/li1VnzKMU4uR0UCusEr4UfrvEOqf/KfKACU/q/aE1qTqsLoZhe6sS/V2COgZPq/ubnUJAY9vzt7YYiltOPvqClOzpberB45kbaubc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715304743; c=relaxed/simple;
	bh=+grbP0sk7f5YYaAUcuixSZTrcntSTsIO9SRPTxGQQDc=;
	h=To:Subject:From:Message-Id:Date; b=CKQpJ77i7y9IJLOXu2Im+t1qajnEEmduUtERsfPI35z6mQMXYL0XH84qOzG8fyrLOwtQZBxlLS+wSp3yZd1jrQyyvY/K6z/kpoFXr7HXchTL6R+5R4R1HNqItHy4spkP06DhWqdVSlzRlgIuLSMFKvT1oy2MirzKvjI6or7/olo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeQxMg86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeQxMg86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E67E7C116B1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715304742;
	bh=+grbP0sk7f5YYaAUcuixSZTrcntSTsIO9SRPTxGQQDc=;
	h=To:Subject:From:Date:From;
	b=QeQxMg86wqNu81QbpPQlqhta/RN6GjPcKUkUkBU7y36cJJAAef5GkSJ7E2eZ9kHCB
	 eH7RFAUGX9Qhr5f0xBlFOtA5/seseo3q2OATRdJi+qRgCIXaYSQf7iIXKdbDpWdZ/O
	 1RKrcHYDW+fBka+/rchAc5A4WyUEULp6OqNTlfntS/jgIQmR0eLb8ySFaZfpJPCRbp
	 wn3stB5IuU8mHaSId0efdf2vGrckNz/cEsiSZRwlfy70Mcexv6TXRwVDMnjJdoIzO9
	 Tj1M9LUFh2jo0xzLETxvEoYaiXhj4jyTcNr4Jp5AVEUcHPx2xFUhymcvk52W/joQPk
	 cDzdFd3QcHYnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D89C10F1A
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171530474281.26999.8894930661877045613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d048f6857439e69a6b07405f02c9c978d131dafabc35c3c942987e67063eafd
Date: Fri, 10 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715304742
