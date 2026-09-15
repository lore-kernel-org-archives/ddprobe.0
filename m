Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3668E2D2382
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789471834; cv=none; b=jmWaaDeuQi5raLMUMr0nu3DrABCvPWUxLaX0yJUvXu9zBxhU3EfUGNVEFIeKHHssmITl39tSpbCrsIxnbWuJCLBtB04PhvQ8ufNA9MmT069FYsXdz5bfktiVQKgHLQeCsSoIzLNK9jt+McbqW5gufsNXeE7ZWObzha6THsl+BPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789471834; c=relaxed/simple;
	bh=uD3HWmiNAWgCi6R0XMft7DJNxgudH2ai3ckJ//hwDHs=;
	h=To:Subject:From:Message-Id:Date; b=r7CJy5Ayyta9QfiZ8zXfd2G/oGhvcOoyztz/U+In3qu8jHsZzj0Wq33sbx+ObIntG5Zysg7RBRA3fAhFz8jVgkMJjIBc/OQ6kACJWPFAwn3WpQgGw7cygOskHg8zHoOdnaMW5oZxqvdJ47EA2Wq6Y3Hs/pd2Zkf64aBzKNSgQxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aF10sNnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aF10sNnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F73C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789471833;
	bh=uD3HWmiNAWgCi6R0XMft7DJNxgudH2ai3ckJ//hwDHs=;
	h=To:Subject:From:Date:From;
	b=aF10sNnL321eYPN0FL6Yi5cI2RlnAeUdWvj+cCrozdPeB4alzQawHO3644/vds2oZ
	 eZOksPTNBqesnsqZp7N4Y/JT8wrkxssEqOL2vv9RY/MN8mSMJFstNUaAqe4sInu+ao
	 k0UcfzZQTFmgXe6S6s7lvqBLrpJROTApIAF6YLN2WkXZ6zPvni6I4x49UaGTM5qcnt
	 NJkKNHXoDWl8uo8HBAvhxeKRO2SrccJqxweJ+mWKGnLH7QLuFUJQmFfoSpYG0ygstc
	 Jm87aZQ93ucFeDqJbQcELzdMjaIgiQ891s68lvQkcP94snEAjeSGeD0vg1GkERFmD/
	 YUFN4vIg8fFog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9C5C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947183369.8912.17164462548330247404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63174491502dbef02fc5572b46663a01b472f4f2dacaaaabe7e6c37f7502e416
Date: Tue, 15 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789471833
