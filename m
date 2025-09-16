Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F90D1DED49
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758052194; cv=none; b=pQzJvSlXPpYhJAI/BihnjFtis1WwfKlQFTb4bquh3EQNKhriWllByzOc27NE4pNlQpMzQLLmV/cxu6w9dRT2SfGd82zSj/PbeGHvjkoNGyJWKVkv8TAzPKC3Tp55pMTWtJy1VjKtz9pVos/MFUXsncjndwviBJ8x7LUull2kpaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758052194; c=relaxed/simple;
	bh=DKiXzkVoOZCmZEiZ5eg4vTxh/8yJadmS2zOs+Bc/uPU=;
	h=To:Subject:From:Message-Id:Date; b=Z0O1oIbwvIgn8ouBWtVv1ufgets7WAEsnh8CeJVpK+ls8MmIlcpXeKCloMMDqpQOG8stJxFaTanjm/fbq68hCZAvgSgqLOq/hk7ECBCfuyk41PPfb1ERXZMalbebqkbExSYLPVxrah8Ja8V40ckyM/2hgHaITj6BS/TN6mDFsN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wy2vWVxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wy2vWVxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0086C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758052193;
	bh=DKiXzkVoOZCmZEiZ5eg4vTxh/8yJadmS2zOs+Bc/uPU=;
	h=To:Subject:From:Date:From;
	b=Wy2vWVxb0wyKdB3rpLffiItq4KLCAIhoTD+97PRugUkA7CFHO+70saAE9DNyL84Y5
	 u0oE7hkQ3wBNRa0pGvBBMP/p1Q6ySIRnbHus2uDZjIk5euuouJyz74OuKhaeUfqmzR
	 CRyHzdMscJQjUppgiwdc0wFn0aGwju0Q8eXHf96mjrJUoeiaI61LfOsSnZxAn2Gis4
	 SIQ9YTUAJN69JadP7Qgej7yYWg5VrzmoqvrikdZrLLMGw29RCLI3M1bGsX8q4WA3W0
	 Meo6ljIhDf1JoUFRYT1iU01LYxgYGWCNzluKM3mIoUrVPcQKcX1yuNQGSt25ybngnz
	 28nrr/X2FUGNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916AACAC59B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805219358.3011.5401182711165349981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ef398f74a1c511e6dfd358481af45002928987bab7b55bddd9a0964b716c3c
Date: Tue, 16 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758052193
