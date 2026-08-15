Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F944345CCA
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786782034; cv=none; b=ltF/tARwWgi61FI7R140s2twwDbn8oh4Snt+4VuJrh2X3j/qsPRSs0vhsxMz33fsDy86h5a61pAkTNyVZF066tAhXhDHjsR9ntjAXRKr2hiU9M8M7HRrgCEnrwDl1+g0vFkPTtCIld4R7mvngzrpf9xx9j/uk4nnubJ7ERC8srI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786782034; c=relaxed/simple;
	bh=dAYkQLiyfuJsRXiFd0YZyQLJwIGIuoUZHRyCQSYA38s=;
	h=To:Subject:From:Message-Id:Date; b=Eb5q4KgdasZr3Nl5Km2dwkov86ZzX6AnuFLQMHatGIjNSp/tNtHMQdpGMe+1hB3KFio68tZMW6dg89SRcCjF/cdUOECqU30Zzb/+2jX4lNdph1fXrnruJ3TszCgUr6yDK8GX+DT7U+R+jtrkfAClV4aHfSy16PGXAuCFj1bK5Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dy7WeGDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy7WeGDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D420EC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786782033;
	bh=dAYkQLiyfuJsRXiFd0YZyQLJwIGIuoUZHRyCQSYA38s=;
	h=To:Subject:From:Date:From;
	b=dy7WeGDh7fXMNU5EJaB0wuF0xwapbHRwVATH35TW5+yQ8PvuOco7JJvC6AZCiopZA
	 Lql7b5skB3fGu4dif9CLl3U2WsGxcAC6BCjdRPXWPyAwOhNNrCGU9bk6W4HuG3oQ2Y
	 iwRYPC50hI7Fh7c3BQk1qY1K4CKEw6HIcDaRd+pPQBJlB9t30pvJ+TPbbpQUvPBGYI
	 CImfX7cerD7XNqks4FaXYr9WZdlbzFw3Z2RIxFFOgbqoPDPwIR7882+MkyCt8Jl41r
	 +78rCxvEcAdBBwI4FLPZ1Fedy2FpI70+2p/QKCCwSlUTMKWkNALvYjHvZ8f9dtSFei
	 bXzPo6fSsNyOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD526C5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678203368.5738.14845841761475787606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214950cbd6a8b0f52675ee72b790eddf0157bbdf154a9bb53a4583e9fea1f41d
Date: Sat, 15 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786782033
