Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D182193429
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734186954; cv=none; b=uVPNWT8zSw2zFuff7clCrJlbf/w9BlGooqlLQUU5eGtcl9AuYeHMC/7P4AJ67YbMPRrNBNWdFz2EoGWWbwsuOFO2h1l/FlD2kdEWsbiAEFmSMsXPN1D6ONy702bHyAoEo1v0jyL+bs6Yf6iTnVUQIpBuSNEMKhJWQIqP3drRZtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734186954; c=relaxed/simple;
	bh=TjSz4vcLbj9MK3EUGhQLtHdMnCD0w0suRUkkTDXGGQc=;
	h=To:Subject:From:Message-Id:Date; b=Ppt8KXktGgacR20xFPedFN10UdlMQt39WaSqKamquDaH7ScdM9tCVFLp3GEFY/TgaIBCZxT9WI6uOzL0SILdGuJQYzv04jBZWgQWVQoLsPQQj1xwKB5aAisTftQuZ4JxcsJv2pDyYvLqWGoJYeG8OFuT0t6RASEgHHt0jkHm73I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTDwJHYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTDwJHYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0130C4CED4
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734186953;
	bh=TjSz4vcLbj9MK3EUGhQLtHdMnCD0w0suRUkkTDXGGQc=;
	h=To:Subject:From:Date:From;
	b=CTDwJHYQNyES/SlRwpsjYMxCecoX8258tQ2z0wN6EQq9z7EDJvdjxEi9zYWo3Hw7d
	 H0FxDxGslyrCHEC9bJ2OiQB34Izkr6PO6JNSgMuzlpzrocm46agHuyEULLMjViHoBy
	 1yLBHGNa+ayfrTPC8wrlosBo3ndk2hH7K6KmFbwPsn31NoLvdfRW2p138TanfYAgyO
	 5lSLB4aiQ41FeppQFPbgQzBj7ncIEFA6mMEnynGwiuULd3C6TfwS2lT9z0rfjWrpvn
	 aVUhgkggOO8ZOjVC9BVv/9cMjuFJPW6aswFhZFDbre8yAnHkKX4zkFhs1uVTYxKSaG
	 m72lEQHgncg+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0689E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173418695359.8678.7002430529151298111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614473d915bec9dbb08e72a4124a21cf0482f45cba3af4d4fe7e20ca6bae6906
Date: Sat, 14 Dec 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734186953
