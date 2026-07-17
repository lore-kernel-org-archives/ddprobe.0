Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581F842D779
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784302114; cv=none; b=ElMmz3RmbvI6925JiCqVWR178rl22LmjM+F+HZtKCGnSKleTEm6XUV1WIJcOfUSaUq7pwPHxXyBugEuqk5ux0sZxNU+X+6LefMCFLyMx9P1wrOwCbajeCBA+V4c1WVO6TxvVabDOoICqt/hkyHwa74/vJOrCYg3yr0APdniEPTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784302114; c=relaxed/simple;
	bh=2dGBRPrfwkrblCaleDZI/0+ALwHZs9URS3jGr0Xccg0=;
	h=To:Subject:From:Message-Id:Date; b=DIVQboKudpoSycyNcfn8M84il/PwO8D4gOsFdbpm9I2g35F+vwDaHy0pIbBLRtrRzm2Hr50mMv6vGnoB/P7PGasQW5Fa8PZrtA2X0tGw4WU11Kkn0VErE2s68XlA1XDQ7e6yRBv5dFHx8rpuPNtE+6dTanXu8AtlCuqR642VRR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6ZC7nDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6ZC7nDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBDEC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784302113;
	bh=2dGBRPrfwkrblCaleDZI/0+ALwHZs9URS3jGr0Xccg0=;
	h=To:Subject:From:Date:From;
	b=r6ZC7nDUYUQXErMp6Bz/byB9DTStdWlwBIdq/JVq37iYIzYuzXk5Y731D2lrVci1N
	 chFNyt70yXZpQ/fkvfq91fHzZ93nUYTPT/yHA4k6LVDqf0DrKzdsfJ4ckQXVz01/zE
	 LOdvvcJBAJf7v0aYSxOa13+vevwjSyktOJZoodDBfHEeTv2Mb24m+/8Bp0IfM8dnlN
	 jELroFdp7L9d0yPgWLVv1IBMbwb1DPYCDr74R2bzZioO1mwavw5XsnNhvfhEXpewvA
	 PEHTiueoMnXT3lklAXwu/Ut0wWjFZKLEqxeLSET7iQ5Wzvq8YtD9I1/0k/anIdf+lX
	 v+PEZ+La1De4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BFFC4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430211368.9260.14104580539863112857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a9cb50074232eb8d5007211431fcdb9683cf380db9b3534e59e47716a99997
Date: Fri, 17 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784302113
