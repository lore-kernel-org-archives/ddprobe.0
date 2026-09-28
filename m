Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5048D4B53E4
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790637634; cv=none; b=lsgN1aMJjrh+VnvG03TWC851fNqR+6EKFgkM6L74x/bBXn0mIIckCkiE1cFhHbP3f7EOAOuI8ZjwLZMr5AiOoLzLOcKEiNHEBZ6tJIDNbv30dt6BOFIyrYP0q/okGtD9+95tuhk9yNVGgsrfsgiAwWs/7Eq/XETKAv3+hnR0o7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790637634; c=relaxed/simple;
	bh=IP9cKXsrKj9CITZ8JjU26hHwHMbHUqMDwEpCOQu9+FI=;
	h=To:Subject:From:Message-Id:Date; b=AHWSmn0xDKVWLgr32HLmBrVnUdNZ+NwqvpFsBkbCauwLkdSrGiOS4VOYkJmvFAG90WYQc1uWHovHtMf6fal0Hbjpz6ysZD1odq2LLw+quh3xB3HwVriDdadF8Jd37yuaJg7je3wZKrcLWf82o4Kadj3RihrvjfG3SIgW8fRjlSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1LbYtnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1LbYtnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D312CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790637633;
	bh=IP9cKXsrKj9CITZ8JjU26hHwHMbHUqMDwEpCOQu9+FI=;
	h=To:Subject:From:Date:From;
	b=M1LbYtnHo8zDMxeka+8638Us3Fy6wbO5dSdKVAZR1d7gkWVpQ8SjrrlYy2/A8zXGK
	 gXBIuVn/SoIQQvFmo5F6B9/Vo2Kxh4cuCh8pXhvFc1kw+UIsi/NBgzsP93wXpN+U+j
	 6oLfApcgB4a8vg2VIZ6tCGwJMhQPAK16pyGbr02QRqe7FZ4AYQv4Qexst6IQ9ta5Fi
	 0q2hWLvLZXfyM44YWoZCIf4AaVqbBx+J+Af+Jg2nXOk6ls06MTMJ0w5gBGHW3P0EHP
	 lMheBW/9BAP4IrSBYaIwzA5qd+fdE2QRY0/7yfvYoOFPN7ZH9UBzNV4lfzMOkiCg2f
	 6NL8mEqFW32yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFBBCA5FA5
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063763368.9350.3961539057668630606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6a5d209b6a9f6e9fb5655a83c499c8ec204a6077139463c1bf6166db28b83b
Date: Mon, 28 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790637633
