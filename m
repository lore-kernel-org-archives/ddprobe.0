Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1024A3D349E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775170534; cv=none; b=d1nDXy4nu7uYRMsJwBcollFkXjiDf63EbBMcQC2nAhWLKTWvPQhDKu9DXO/RK72UL7aBR1Rlp3LmN4kJvZ983XpmRbZey4FmXHL1o4Wcsn1ERPdLL76/6q0iWsQfsvdtNvlIlLg0F4wGwvmIbTXJLdTFazwGVr3u2b+8GH1UYi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775170534; c=relaxed/simple;
	bh=gZF2T4KadFxsOwzPKKJnMNYYabuZTzdHMguUagOdsSw=;
	h=To:Subject:From:Message-Id:Date; b=j6fJu9oMUFlP5BOwijhZZJNMEthY2Q3phYdUPXRUulRNbfQEJHcEjezvYtEMUSu3hHhEOEcqQ1Q2AonGFrZ5YQNSqa/oOJmM7XSiMwC79GNZfiq/KGDa2BD4aVZ2YIQvZt2udOGP20AoAwrlYIZKEK3ZwLwP5ve1xwmhJnXiwI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shYO1N2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shYO1N2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9830C19424
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775170533;
	bh=gZF2T4KadFxsOwzPKKJnMNYYabuZTzdHMguUagOdsSw=;
	h=To:Subject:From:Date:From;
	b=shYO1N2/+pEGMEF61Oeb9/YChTJDXYzo18+z+kFHi9s7jZCPTCRtBh2K57EvnNaxJ
	 nihojMrmcRy+5BuGT4uPjJ4lm+Alno5Fr59XxsInRiioLrp39z/bBYm9H0GcSzf/mC
	 2iG8u6uZK2OwE65Vthsi1g5hCU21Pepo4aRTq67Ec47PrdPnXS9Uk+qxJ7ig/kki00
	 qxyhAepbpSNyNVb3PVZGAlEqvgkegj34vNej09ZtDlFyyfVr0OgxYwuOT0m1YRx6yg
	 NPYES72OIz7N0XNuOJSnIDd+zt0Gztt1O/MqOgSzm0qlzN4/kMU8R3U/m4zc1ZU9cV
	 wX3hbs9Exryjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA9CD6AB10
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517053369.25794.15253927422439833043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a655360e497224164a84d1b1d731fdc16ea35c918ac6446c65d880347bf1a52
Date: Thu, 02 Apr 2026 22:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775170533
