Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174EE21579F
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752053394; cv=none; b=Ap1plLeZcVEfU+8BMPy+cA2MIH6u8ij87YQEoXoRPXoGJsnXDBjaNQIio9Fl/1TZVbT9VaxpcessOWweb9Rmv+jzz8bEW9X2TQFGMGhfbHMa2ijU7FhUMUT00bLZAP/noYSxRHTG/KhWUFQNUFQOxais91zSk6EZC6GI0SqB81o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752053394; c=relaxed/simple;
	bh=f9tL9QmkjvYDKdrCqBeEPyekEJKXgA2yaJ0Wx4+h9WA=;
	h=To:Subject:From:Message-Id:Date; b=K6LyhgdFam7Z/tgDiwyWknNW5HBUeQZILgZzPJnjbA9hmZ4kmEFyQuvaG0xC29UuTekeerPoQ8szRywWwPnMiyS7U5vQxSniLomVyFgDu3SiLoJ2l/ivz6/jAut8RyGH4Co4DF3tTSL/+z5kVGNCbLPOQxgG/h5voEg82A4ADxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4yU6814; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4yU6814"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C452C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752053393;
	bh=f9tL9QmkjvYDKdrCqBeEPyekEJKXgA2yaJ0Wx4+h9WA=;
	h=To:Subject:From:Date:From;
	b=l4yU6814JR9crDd4yyEB0v/WxTUyqnI4IyrxjY59MYrn/vqWAiHsQYcGqET1WJErl
	 31PWFro42LJ+l+hPPPvwlVjGL1JKG/li6qqK/HyHZb5nWFlXp4u5nyaJM21uiacY0N
	 3M+6c4GFlaLXq3+MOXhx4Ax/g7gxmvcrvY3UNpBlZOozy11VK2dZYbeQrdUQInS5ov
	 ZpS7X92d2tVJQ7YPLamz8iXYHwUuxBiSwiUNUa/CW+24Tnivf/kBrocWbxI8tdylhc
	 fmdGu9QDfpZuFVC1ZgRfYzmfWX6qOLo1PbYGtJaDo31yg0e/auWWzwQoovDwrL9n8f
	 dNQM4ht39eaMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E60BC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205339357.4010.10728589448844331034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a0064d99ebc6def7b1d352a0206fd538c5f2cbf31c2698781f743559e0a338
Date: Wed, 09 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752053393
