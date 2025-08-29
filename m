Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2774335A2B3
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756508994; cv=none; b=n25GjRSXP7j9A9bHB1QmKa2wtQ3AYpEyZjde5XtTsBmEiAZ9vPNfOrRxbJzdf2MUUo2k2JkFJxBL8ouke+wZ44/DTlSm2Nx76WxBMt4sHoue+1P8d3LE6HAspy4mChB1XRC2cNIDMlA3PcirP6ZH2A7WQC1Uz6YRvuJ1qRXSH3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756508994; c=relaxed/simple;
	bh=vaqdrWGhgZNobG8WqKaWoEq3b+QDja8C9pKWuFCvmbQ=;
	h=To:Subject:From:Message-Id:Date; b=TzhiTzZ0j/Ez/VE8jbL8KCQeLG2ih9jFK7zOWlsKcjL/jGf9V9cDB2UUbopgeAQ0bsy0GJz6QgIQhaJ82AtLcdv2PFYUyqZZq9qztsWrAo6zoLP7DDRMQusgRiz+/bjSY7yR57w1gIkfV1ck/aWmT1oe/JSKBrXvysN+kkjYMzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpVFerWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpVFerWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A350FC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756508993;
	bh=vaqdrWGhgZNobG8WqKaWoEq3b+QDja8C9pKWuFCvmbQ=;
	h=To:Subject:From:Date:From;
	b=rpVFerWc/7ouprs3VjeALEShPsB7LczQ2jzp8xhuuURF2hW1h4G88NLZv6f713i2W
	 f+Yh41tJzDLTZ7jybiONNk6iqsKsN9cJ2rW/sjYCW/6YUKvLGu1PhFYhwUOUTwlWsw
	 +neyt7NLhF8zyBBRkc3TBjYckhXq03DfFu2161m66Jj0xv0Nm85AcJqjl33kMm5gXJ
	 dizRQpALUZ8OC8Ly6/e/EIL2HT3Hm99VbFtTr11+YRpxkT9cA3E4XXCAHve+MdvXgJ
	 GL5bgdd1fje59FinoxL4cBvYEkZdMI8wldIfmxSA+OBItp5+yjQN7OUUh9UhA7KZgI
	 Wtn+oIqw3cW8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A3CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650899358.8398.13105164705338493977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273883f6b65a9154d2314e73fb0fe13e0cb59285b24a553a1a099d7f76e63571
Date: Fri, 29 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756508993
