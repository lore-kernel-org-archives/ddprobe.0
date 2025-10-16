Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FD179EA
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760586594; cv=none; b=PPcoDkr+70+7lKqpqId/C7MshJP8KHvOh0a2LwpH0zc4kVahEX+f6TeZGjkfeOQZbhQmB1LIb3aPPC7OmlyN9i+brdhFT92ATGfKIrfKU3HnDaClm8IsffnvZg4UT2t7orZrAj/utM7U2m18tPz+AbMYh1PcLAfPZpYIeuWxSMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760586594; c=relaxed/simple;
	bh=k7cK/mTbUgGH6zW/2jKrmidhPayjOn1jeK22xZXBehs=;
	h=To:Subject:From:Message-Id:Date; b=hblct9MGZmpk25I0WurR17bIzVbBx99gNGYp3neplLLlMTSe0gdHx4ydAOlNRG4eiJSwz6ZA2fYxtlB6t2jpAVw2wWQDeYIKuG0WLjMLaDKViYq+ayaVdhr6bBzaTB2HGHw51/qYILdURGefeNlzlR9hDoQ57SAE+LiQ6U+h2qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTHzsu6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTHzsu6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8536C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760586593;
	bh=k7cK/mTbUgGH6zW/2jKrmidhPayjOn1jeK22xZXBehs=;
	h=To:Subject:From:Date:From;
	b=pTHzsu6dT9gymLm15ogCXFLT8433VV+kUxhT3Gqyjnatkh/PIEsBzsoeALZwRar9L
	 snM020r2iO0pPGgxXue8Xp14jpEAvW0SzMlrEN4bGX5iYJo3sXF+KPhWZ9KhNQrAX4
	 Df3jfwRgtuh8qMXEhrbfWk7eKIc3JpDnRev1Jt3J41omxz9/l9ManC0zUFX2y32XEU
	 RxatWkPdt9c6khTZyoy14iRhefKTQJp4Abj1h2L3k9zzvAB43vyBDc945LPQyVtSZ5
	 pn+AEysvsWDMZZsWAJyyic8tbfATPGn+MFrj6yXMg3Xx2zo/Tj4z1o5oBZtEIUFCOm
	 CO28pcOBfRX1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9498DCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058659357.4283.11638272089742856081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63b00f2dad02173e0cd9f0a7fc89765c56239b3fa7687c0f6c400c35527090c
Date: Thu, 16 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760586593
