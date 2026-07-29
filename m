Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346E824EAB1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785285034; cv=none; b=QPgugTcJtcAUznTIlXPs4ovQr5J05dyfTHHj1w1GiVUB7BdncfquMRLib3rmiogLAOY71iBd3hcxnrEEagvWJTPDnrTxHb9PiVFueTLkUqkwLobTqs7AWtxQVIaAUSDIHrKcBdw4if+n8v/iJ+qWDTxro1u8xfMNAiLA4nQu+hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785285034; c=relaxed/simple;
	bh=anvtNfG5chJxyTA5fnR/98UNHeFFjcsoQhHI2lkhtUc=;
	h=To:Subject:From:Message-Id:Date; b=L5ji32RWN0cNIHDX/txiAKgpx8XT3mH81yegA+yuRmwb9edKNzrzmKdEUo9bl20V/3MIuGS0AWlolPJGFhVHgVC7LK+kBGyn8Vh7GM3YbglIDytWbfwX6g3r0ckLwNaQs5dDUHRPPHuXfN89wqOttKT1XSMK1nhuK2bnEXRfTY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqnGtdiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqnGtdiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD45C2BCC9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785285033;
	bh=anvtNfG5chJxyTA5fnR/98UNHeFFjcsoQhHI2lkhtUc=;
	h=To:Subject:From:Date:From;
	b=MqnGtdiP460qd0HKWHJJrucZGYsFPqZRFHpPdanNo6FU1u/9r5l4WSq3oQu0ABypO
	 3mLF05qCIY40+oee1hLsYftS7t2Oe2hn8ba3m0kI/f6Dr9bn4vZXK8I8ZF9r/wWgSK
	 9wpr3sd2hR9Q/pA4FkEcMSQrJVtIko7h4pe9cw76WuoXbmxbJ1FbsYTfm0grzkJYg5
	 NomDd/je93jOqXdvVOKwcjtZdh5DNCqbAb44B8Yc9hZqdnHSOonfT4WTWzYCcNWLP3
	 RwrWTQMkIIXCo34f1d4Dt7lY7ySL21HemGcDhh5o+8uDfebnJUiDVdquQxnNgjzb+m
	 CEVHcQkqDcZLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC7C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528503368.10395.1636468348522671812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ec0b381b1186087d25c6adffcc3b42eb34b03fc1fe2c49d2874f74d1028934
Date: Wed, 29 Jul 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785285033
