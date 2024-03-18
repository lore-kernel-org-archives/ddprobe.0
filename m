Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76AA3364C0
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 12:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710766097; cv=none; b=MEc1Koy5+Hhpn0T0gn9qz2y1Kl3x/1SqijNfF9jBT6/PcPNi3H+qyj65oGb6PNT4H4KIPcIUn9nijxr6X+O3wMGrwI4UMawte66bhLRdDNn1tyE+/NTLLqmbKVHXypQJ4dGy/nuUqGJ2Naeev0BFMyCio57FnRpLvJLH0xpmOj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710766097; c=relaxed/simple;
	bh=a0hhBr3G+8VOkt3KoGEnvHPY8LB3k0Y0tmYpChvpCrc=;
	h=To:Subject:From:Message-Id:Date; b=bqwICEUlp/gotYaghyTVlBVOR8+/cXkcZhsRnYtArOaT/0b4lfX6oEhbE2KmVDhkxz5nzWYvyqkluAyVfVTe8IKzH5YKUpppszGLbtq15X8IcaCyyi1SsE8ecx6Dtjmnb0+B+Aul1ZDOFJJgEZ6hX0Idyq/kYoIVjwkz1XTeWH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDpLJvAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDpLJvAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 712B9C433F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710766096;
	bh=a0hhBr3G+8VOkt3KoGEnvHPY8LB3k0Y0tmYpChvpCrc=;
	h=To:Subject:From:Date:From;
	b=hDpLJvADdo2rpHZTxqAK+vng2GSgY/9MBf3Tiq6tq96odSFFxQ9qBux4MZFgwvRQS
	 QrdZ0DHMBLIC2v4alOLuERefwbuL062svLRbDcb37Fq9xIHGhFiPA5K6JX+oLeISc0
	 tgYwYsuInAKSNWTXm5qaIDJLX1pRRM+AivjqUkerc8ItoftIBIrZMVOwOqEpHABldq
	 QDnVSSMdKueUI4FeTlmroVh/hCJuG7rf94rR0pIh8LCRhVavNv3xHNLSD8jn1EL/BJ
	 748wRfQaFGVZumvzX1KnKXPxJJfsy88oVlD7l9gAU0d/t3HUwYAo4qGxtGA4GqcSpB
	 FtljSCStWaZrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6308CC54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171076609639.17520.6831093792980528619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0d9ce6e8df6e8d67ac71c58661ebfdf7e4642d6bce6024a099aaad44c0c6d1
Date: Mon, 18 Mar 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710766096
