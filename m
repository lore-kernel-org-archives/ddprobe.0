Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BF83AEF57
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781502994; cv=none; b=pptrg4qBzl5F+e6oCwyjkQUDP4dC1vqzHoey1mTZNDRZsjSYbLMUTDTLEHYpoHDT2tfYkkybmEqJeepmv7AWdPYNKvB+DQRZBlX+yYueZGQuQ31EJ5vH4GhQV8R++p+nT4MhxHt53mydayYgUkAxke20RS3SBmvLLoQetcYYnDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781502994; c=relaxed/simple;
	bh=i0kHVV/fAaLTtWQhraipZwtLrOVXHCkCOWLWeQniVzc=;
	h=To:Subject:From:Message-Id:Date; b=SUkwtmJSn4yxE7wO6Xp5N6GUcUnWyxyOf/tdc2FTIXKokHgQOuooG6/e62EeIM6easye4qfqDvXrQVayGmfFbE78PgQvcrMpN53GkQWNjO8E6q4GnglsXUx5vAOKl+461CZF1nM+lT4MxYcUT0+vmWyripLj9Km8NqGOWYJ/Uog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTbgXuti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTbgXuti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6896C4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781502993;
	bh=i0kHVV/fAaLTtWQhraipZwtLrOVXHCkCOWLWeQniVzc=;
	h=To:Subject:From:Date:From;
	b=UTbgXutiC3wLRI+40IWczsOlywOoxapmQSr+7AWr7irpg/NyVv83v0LMRzhFsrREM
	 JNcpgC6n4TuUwf9eNO29uGQIYRxVhgQ4Ux2gJwEaUd7pCK+RsWmDJ8iNZtl3IEo8Er
	 nit+LoRTA0MdT/YHO4VQWcQWkTkcifWvv1rrsy0ZvR/tHSrwft6G4hE225gVb2Ivts
	 EGSfl7oggDD8zYWhMN9CUps267WbJ4259X1qiyOVd6hB+BtDQMhEGLktWh6sQ1q/qs
	 zqqm3lxRvE1uYW8/hk+8oOnDL3QXRb4VQFfrXVHCNCmUvmGPoZ6m7GTofWLoAhQvWS
	 9PoTn3UVLI0WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD614CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150299370.17232.2236484145172452534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9340f096fdca66b81ed469450ee0f85fe98b6e1ccdaf2e50377c946ef87731d
Date: Mon, 15 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781502993
