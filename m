Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514554AB1C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789719034; cv=none; b=AU+QduOV3+7i/VnbkIZ+yNVIICqdBb3ClURIF9vCW5TgTYUIl9xh1CTikDskXqz9YvriL7ore9/kaCw6QCXkJnstk7aytDa1MqL5jl/yk3wH+m/3N+F83oQnkGp8/bK0B7siw4GmRB01BlBv/SFbTFPilM886PW5YWVN4iDz+AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789719034; c=relaxed/simple;
	bh=oamjYekWtzDhqc51t6GRjwscynWvS4wyIzWGHrnXkuI=;
	h=To:Subject:From:Message-Id:Date; b=itj/74JuhxArR9KS40dXdP4qYel4WV/j8utqs9O3ROHSbYB2MebCJh8QScLFXmjjcCbfBsIKbFS1srhJrim9Im8a8oNVcHzBY1JXVyGSLlpJz2+ANvMf3kEMB3PB5zAL/di977C/dIQDRMkPTKbQdqwRq1sx1Buyvk+ZQ2wsm1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQ/ARgDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQ/ARgDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D342CC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789719033;
	bh=oamjYekWtzDhqc51t6GRjwscynWvS4wyIzWGHrnXkuI=;
	h=To:Subject:From:Date:From;
	b=OQ/ARgDA3FYFEyfWrYa4IXsr+nbKZI8/Lddj9sXAXkt4Zk6k2gFdkCxnHoZBRFPsD
	 1d9OFAgtet1lWAR4d6orKSb+6ARklX1KhqMSjjGIrV1t1JPSZ5lms9wY+i6KdwntE0
	 QOr4bbhDbxqw5e6kRHYJS6joybX0YBW8UVH0AWVO8VGq0UIMyNar0EhEnbwnWOsD3i
	 65US4uu86RM0AoThIVewEsq/uGsYMPCHkVsBobV4CmTPsy7/TKDTnujazpPQT84hFF
	 /3ZD1PoQMXgwcRLGr/NU4TdgjvYtcV7VbORg7LjALLhzMj3c81sYy9PECBqonD3NJo
	 r2eiFQxSq1J7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B36C88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971903368.11097.13137457406591141714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5a2acc780065bd378b068119f21ad91f567eecc198e1945503a2c7b3649005
Date: Fri, 18 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789719033
