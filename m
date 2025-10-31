Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CEB350A39
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761934794; cv=none; b=jiE5WjoTiMWJIIYKxCeHaoG0HBasEtbvEg7L0Cmwl2Gtfp5U4cq3wXh9uKZDOAkytSRezKS8pGdLfcCQm60R83apU1a8yVs/w3ZpYSCVanzRU+enk9RYLxYyAn8zmDI8ZIaw7wkTDtq+WqEodsJ3V25HR0nCTg2IZKGVWvEtiRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761934794; c=relaxed/simple;
	bh=kuTqyvJQjqaAxWHhfBO7M6ps2BCosVOR443xLS3u6YY=;
	h=To:Subject:From:Message-Id:Date; b=HLf04ug5e8LRcn+YGH+SoDYa0/v4KtWGil+he8QkPV3/Ya5yxogHO3V8F88WwQg3gHw67zwC7yLkng1pPVShlfUg0WG4Ff51jaZElIjuMF+yij7MnITNoDQjvSfp4OBqJF+vsfyLxF5SA883P0Xclg3K/KmTRB5hPOKp8zlbEf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MblmJ6nL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MblmJ6nL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDB5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761934793;
	bh=kuTqyvJQjqaAxWHhfBO7M6ps2BCosVOR443xLS3u6YY=;
	h=To:Subject:From:Date:From;
	b=MblmJ6nLMvtrwMZsuf9prhJ76X0CwTG/FXM+imIrqqd3KUY64QDNIA4wGwiXljnYq
	 NeA+j+dsEqkDQR37QJMEbG4cYpyPwjMQi07JplbacfNBeQX8WoArAzCEdD0pcN3Ihk
	 Vc0ceFKJ1dwRg2eiVYtzWisobaRCVD3v2PupxvEUrcuvq5dzNp4qptbBIQ3KphCQEB
	 o3XMU3sT8ZP+mgnzSdZ2XDsEopdEntFG6CPPkH7jbG88Hd3IIw/Jb9EWC7c32z1VTF
	 2tDW8Qku4wAzjBbnk4vt8TP/Tnz3NgFY8SUvoxEr2UfK24OPu8Fdrabb629C2RJs77
	 0z7zr0fHiLqbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B6CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193479358.29809.10832040986683163872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f96859c2c746abfad663b0c3a920cfbbe293397ed497f7e685e12eadc8aa10
Date: Fri, 31 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761934793
