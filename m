Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D20A3EBF37
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770008034; cv=none; b=LxnUMcob84UL9Yaf0KTvzoC74lkwnwC0LB9TNbr49+EpIO7YPs3j7nn+pS/KPlOT2P5gG4pyF82CbM4PFaC9B5RWiLGI8fG0bbAgZxpZyeTEytuvkUBtd6CxSO35hiY0jpZMH9dseRj/JxNhs0CyJtLf7vRVypyn+Uvesp50VfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770008034; c=relaxed/simple;
	bh=/h25QRfuaW2x/cKc5MKZ5s1klmJn1nv+72pgPS+V+lk=;
	h=To:Subject:From:Message-Id:Date; b=Q8DWG/m5Mbvm+K6P+w9K+PR/5J+GbjsnZvCUxYClkO+NQ3tbAelZ0CXRZY/pa45ITD6qo762lBQJKJ/8zyMsiClpLJHANFmgO7/F9TSuHfgAfWIbOkhDvLHwjtVExEfSaF8KYV2bf5sFhQdPZomQ7HLMxC93qV2z+D4jWml4cC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ly3YjZW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ly3YjZW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EAAC19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770008033;
	bh=/h25QRfuaW2x/cKc5MKZ5s1klmJn1nv+72pgPS+V+lk=;
	h=To:Subject:From:Date:From;
	b=ly3YjZW4VArYB1JPzGrtyTlmreePhiE/o1Qm7/u/NL2DFTHLD70uo2Wzfl3+utrdA
	 SQsVWXjmXNgVwJYAjOsG1Lp/merutix+6a91M/UhzC9wjOuM3Yi4Xf66Eng4d425w4
	 EbK+IvgTGNXrJqfKjLDaI/EPRB62JqLKi9LuJ21UJ3BK03TJHl3d0xqZW/XI0CkYdw
	 fwyWAO5XXxR0IIJQMWREvOjqM3HQFYEa+ZADbPbFuZH1pfiZV9neUminB3IN4sPR44
	 WxoUJF6B183/gGrdbWNt1HpJos/xaHGJ8QbMMyOjXdKUHEuCNZZ9Elrc90aUqiAIom
	 RnVhgaOMHycFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05B2E65293
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000803360.32478.14613553060128963618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9193f249c7594ab2a440843e3262b3ed3c26fd8885e8ba2ad0218f5c27e0ca
Date: Mon, 02 Feb 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770008033
