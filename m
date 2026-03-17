Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E4F239086
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773708894; cv=none; b=s7PoHkmZ5sn2j9oEYEm4Ig7gMZNT14c8RHwY7aLZF6uMig8yIovug/Ix0T0EVULvFI2jlf8uYkrUUFvQqUpvtBe95N56fCRJIjPl/59NfhD2zaveXRmIXlE/RdSLkix6A2gVaMAnZgxwlOMq8lIcOP1gtpgzmniNkA4jCpRznMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773708894; c=relaxed/simple;
	bh=1manF+9HeeD3gLJEnRzk56nwxeVb0eRc+B5cH3hSqnM=;
	h=To:Subject:From:Message-Id:Date; b=leEm786izcWImhNUbUJYivMXHKYC8SaA52gkwMKH2wsDF7O9WXr2R7cwKgBPTeFr/J3hegCwK9+90z+1ipsFx5J2F2UpmDjhfCoqhpjEeeSzEV7qNq/GXVF1D4Buv9UvtoKwQfOY9G/xVGeaBC5wI2IZ3rpIJeYrk03qUFNaGJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diNvmVUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diNvmVUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A991CC19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773708893;
	bh=1manF+9HeeD3gLJEnRzk56nwxeVb0eRc+B5cH3hSqnM=;
	h=To:Subject:From:Date:From;
	b=diNvmVUgJRi9BRCJf3/k5LqCKQ7wCUsj+fmlEK4IUpFQAf5sqX2JoSFZEK5B/0c3Q
	 +a7paUtx+2GDABpRa6ukgoRSEirEb/FWAy5d0ptAh+UZweh+HEZOcFTJph12Sx1ZWI
	 dtGndlvn9c10Jkx8/X4gM20XtezAxPkA3kebtGW1Cdarfjt3Ab2v0dae+HTOx+T+BB
	 uAeyuaMroN38uXAdBSz7sAIaZuONBrZbLBJ6tmeH30zLmv8V6Oitsu8JGMWpWEt8Kj
	 KvCLH5a+cYyYVKLdeYpYpuVlEgvu37ZUcIHueThP/9zkSFM42fTEIe8uVqRShXlfDy
	 XUrtUyCG8KGAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9524CFB5EA0
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370889357.15518.15710132894214394681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac2342e9a657af1c91be876b2e7491dbf975ba46ca12397e365053505705a87
Date: Tue, 17 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773708893
