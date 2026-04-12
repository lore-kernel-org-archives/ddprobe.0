Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE074C6D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775978854; cv=none; b=KIlmMqUCNcze2cuUkmB/ONlAHiUODk4qHhs/M5VEnPN6v02Hg7reCSxvWGzLUpfeDPxcVodSKj4IOPhSDc4yzcG4shHCWzsk3HaCtpKKM4lhD7shO/LWcD7KSRDsrhZDAzUwwV5LNCZHBakqP2DIbg4BxitihxV30oCe+Tfm18I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775978854; c=relaxed/simple;
	bh=VJRJd+GjzEUZudZ7QRSZwK/djV3keaTSSdXDEbJDTLE=;
	h=To:Subject:From:Message-Id:Date; b=RZy9zukqrcwenaC7P8P2mNNdEKeXtWsdcWt9wEVxt29zC/ovu/BY+gmuFkj2NGBKEkWO9mjTpZUIjCU1UPVP8bkb7Ba9RF/Q4K4e+sm61hqKtCOKwPYBW7v62IqmXAhmiIbXeobKMuRZWxLsFEULLeheq8Hdl77q+k55qiaitzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMlcG9Lr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMlcG9Lr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEB2C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775978853;
	bh=VJRJd+GjzEUZudZ7QRSZwK/djV3keaTSSdXDEbJDTLE=;
	h=To:Subject:From:Date:From;
	b=kMlcG9LrM3YsiHVH84OG7DxwhtyJSJjiLaDnILZ103nQZGe4/Ev8HYJAtra5VCqFb
	 md1PXCd+GAqkNrBVyWuFTTtjAsX7Z5HUMlFAiVreYlJpDxYQuyLM1aLncHjwW2pUmh
	 7tzZZqvwaDV+Op10xQtxWm/Vv0w2Tt9TojYDSjsKJlsU7pHsky7Cfs9nb+HDhWPDFF
	 OHwCF7UFUn75RGjDpaVF5yVa5A0AD3k2ckUtMdN8CQv1fzngLVxdAnvLb+/fUoVKu1
	 fPA0HUq2wR9C8atA6+kFvuUTVn19E3eNpRhz7E2G7fvB4EVnXDaWPbK9e03nvwiAKL
	 GQgKxnFUE5xuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF469D58B06
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597885368.1896.15141128714323892705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b853703e89b1a2cea9f8ec1b8de59c47195ad5996484e46eb4c7888d0d8563e7
Date: Sun, 12 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775978853
