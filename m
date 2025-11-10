Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B7D31B138
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762801794; cv=none; b=UsAPX7EzbEDX7wYHxBtxrZvCVpNBTq6qguGnyj0ts7onPi8PznOy/KYl5p0nXdd3hNW0cOPh7Gy5QU7yh0O+DXAemWbf7NIxaDyg6oS0FFva1jFRILPGpXxt/nSUlCx5T1moXVCv4AHDWs7oFeGfp4xrMgYrWyzvtqslZ8wVvn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762801794; c=relaxed/simple;
	bh=J/evD5+f4zXea5JWyL9+0xLtdT+/NO6kDmQa7w6Vejw=;
	h=To:Subject:From:Message-Id:Date; b=G7bS9pcE/atQkps55ENn83O2uOFwvFd7/Om7h4nHyhcsw+TRqMpFaE17Rru4TvGRjpg77RoXuAr95ZVIdEdHFgTmOwbMdEdsxAVO23CBclSw2MFdg15WwCpOlWk6SuQUeWeaj+8rDZYJcjUj5ovgMkszp6KJP1drv7oCCcYEYgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZReiEbyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZReiEbyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42FFC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762801793;
	bh=J/evD5+f4zXea5JWyL9+0xLtdT+/NO6kDmQa7w6Vejw=;
	h=To:Subject:From:Date:From;
	b=ZReiEbyU6lEEM5Q+hR5Kbe28mMOoOea2PIXiakmix7eU5cxwnyqEERCTiU5nuzKwV
	 EnDM/PGucPjcTdcV0Uncp5SbBDe5fmK/oKq2Ef969FQfMuA1NmTz7jM1ZZp31qFprU
	 Bg6GfZfxAvaqgX5xhyQ51iNoJuYxLs8aZegoDZHVSxxbksufP/j/PnvznbtFQvYBRq
	 5vw6emPuZJ1SCAAYeGW8uJ5EvPjLy4Q3QanXUkwKyv4qKbBqEDhj57uGhfnuP29PPO
	 emTCeUbZoMdOV7lWQS7cwCHwfgo9SqDnEIMBF2a/tBgHg+uhyAIx3zqaRm1zOumzZh
	 jBxQrhiQjk8UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B09CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280179361.4312.16724633780363858396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158d522873f0fc0f7a8db5c191264c6c3f9d9ecec426e026f6cd2f78bcbbcb9e
Date: Mon, 10 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762801793
