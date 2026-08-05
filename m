Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C34248032F
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785944435; cv=none; b=A5f5NVgEOmtEm/1lAyPHm4XCq+1/PHb4N9EUZi0W/+M6xlw+qxPrV7P/XUBrcnxp1OHnfW0xFywpJxE+J0Dr22aVSDbU7PSa7rrQDnrOG3Zg1K9DwhsDUv2oJ3qNpfn/lKtWzAtYZa2P2mLQxVOpW+motKyZThETPygEvnc5TM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785944435; c=relaxed/simple;
	bh=/QIPwZudEqbg8swJM3T1LG7uPig1dfKHoqunrSYD5wI=;
	h=To:Subject:From:Message-Id:Date; b=He1gqXgkyfm84CmPvhbecrQxflITXyEJYJkhYAAaRxseRNPNAB2SCRvqhHB/aqw3xkws+Hy2XGQAgjDw0sX3biZoQQnBJF52ETOIvBOO1TxV0FpNUqlh+DagaB9b4ATo2nvhLwr76Vx96FUBAXcAz/4KXjy5phkv4sbYKWJ1hRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9372evv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9372evv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E2FC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785944433;
	bh=/QIPwZudEqbg8swJM3T1LG7uPig1dfKHoqunrSYD5wI=;
	h=To:Subject:From:Date:From;
	b=T9372evvHt4WAzwWL8jcLJ0EVqPJY+2K5kgRSUVM20M+Qly80UXIF5F44Ai2yKIyZ
	 WHkgfuH1TNqtgCJMN3e27s2l9S6bomBgFPOsMSS1hZ2bRrUTemByN6+aGiG75PCtBv
	 pYY6mhC1TZVgT1hORISSDHqgLYXrdm7BYvp5wccKwaU+eu5bCuj2M9YeF8iGVDts0n
	 z7hJFX+3EhxD3B/tPH3lkx3pupM6PJA4sws2ZZXOquwczQduu0xOJXqf5fdssc1n3t
	 1dV5fDmOS88HfB8vg9aDXPcTBOXTRcngdWmJW3Mp1alowqJUwwNE9+I6pYjfG5683x
	 NOPS3TSYgoJkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF201C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594443370.5226.10917852274036974845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc64f291389f9f52444dd0d7f20511154a313acb4c5676b95b9db463f1c4f10
Date: Wed, 05 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785944433
