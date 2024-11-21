Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D922744B
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732152354; cv=none; b=NNHyiHv6NBQP7Zy2VeSfR3J015RjmQ97zKomNHI5o8hw6KaBmnYFaA9Lkcpg51xXyJjAit2CQh9LNqHLQiLXcvZ+xGUidjJy7nYqNJEOHWVGFrh1bg2wu/2ydlYWjlSA7612yOMXjPBd+/1T/ixLelxuAZ7ZKr8Tpxm0NPR43vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732152354; c=relaxed/simple;
	bh=c8mtiIkaEePpGBNy2L3y57xvLjW3lJcnih8QJ1XgaKg=;
	h=To:Subject:From:Message-Id:Date; b=qCxjQlfDp4KG50OwCW5cC2rbgbFpStYSxGJuqgtK2F7xNeSCC6ISCmyLpJgbdVYkT23RKTm8Fm+DbbH4udzJ/0ZQxfnyC2CMjyHRSH/dyJQzCzHIfkb4J5nSL0HY700X7dGk7O/GzYQ83fxd2rp3nHV1A3poAeEglccHWiA2PG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sb8VhvG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sb8VhvG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DA1C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732152353;
	bh=c8mtiIkaEePpGBNy2L3y57xvLjW3lJcnih8QJ1XgaKg=;
	h=To:Subject:From:Date:From;
	b=sb8VhvG1V7PhC8SJqHzGDuRyJdVrIJDDns5r7CsqIReSdl8GYGVpGkqKZfF8jU1lt
	 UbAKy5tIvSUGFO8CdMVgc6jDHGYmCCaiA4k0P8G1RDsDaXDDIU673c307yT0S4H7M4
	 eqNGGEt5oG9PcaTy6LFMcIfI9OxvuGCPHVF66pJaqaE0xEROwbIr3RmAnUfUNSKtQ2
	 b4fq7AkT6E4ln9LZSi9ICbUF97zAn33hJQGllSZg8eTjC8HZWC3mr8BySUiAOIjUSf
	 hFAZYrCjrXL8BV8WzFZJWL3qCi2XsTR/f+Ytwcq1Km6p/hXphE8uHA3pNNdObFNKAJ
	 TX043uZAdNUow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B52D743F9
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173215235357.16615.16248595021131940128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f30adc9e9560e5506e00a9f911c4e802da44dfe9a33d474960826f38a2cd299
Date: Thu, 21 Nov 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732152353
