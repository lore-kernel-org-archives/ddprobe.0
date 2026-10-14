Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A2037B03F
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791955234; cv=none; b=VA8fluFZo3b36TOFE5mGD+MgcTdgzjsTLRQM+21TJ2tdsZ9CxlrKiogX+1c8OdhLefogXAAes/PLl6tNF793xZqIRrpBjERK/ZlMsASroBVmyHs3pUAA3t9SaHF11TEoSia64MHodm5QU4pqZisdZw2uzaiL6SDGWtfTKU4L0Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791955234; c=relaxed/simple;
	bh=luL+nekAqAuFX31xVd4cW7kh64IZbLJT1TPuOPst6JU=;
	h=To:Subject:From:Message-Id:Date; b=PzgDz2mSydEfmv2Zehd40tqZ5gtDLqCws6Nwr1teDIVUIwzcikufY51YHog68yghRYvCZNaMAVNi9mRHpavnWk8jaNTYnTGUMpQ5s10xKzRsqkQRBhBu1G89NBb66cJ4WDq4Fenytzc8tPPg02WzHUdoUBay3Z8GFGqfZ+6uJzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUNdwAFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUNdwAFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D628BC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791955233;
	bh=luL+nekAqAuFX31xVd4cW7kh64IZbLJT1TPuOPst6JU=;
	h=To:Subject:From:Date:From;
	b=LUNdwAFT28R076EjnKSjHjf+KEGn2oiViT324E0OgACy0X+qjMo8r3v940ZiC8KeA
	 6hdfxACFIo+07x10aED1r4f1kBCg4nP4a4tf7vGu1CL4sSuz+CJ67J8sMj1vVFlhOZ
	 vIQQKtTpFDKQPL9udMRM5T45ZfN4SATbvrCbMv3fyCYSRj4pFjmAowcUWlUhYhjWY5
	 yCo/XCALc54plGQFoOj1UNmRevhbOBa/EyqmudQh3mUGctE8ObETSN/3JPq7n/aVgq
	 tNtLwfDYByXFAJmJMw4aQ3ZTv/FYS3QAoy50+x55ncMIdpoX2jsBGkIGp2cAdD1Lzu
	 eQmmf9Wc76rUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B033CCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195523369.2754.14522382690341844187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648ab447861e6f8bd35a1083a8964d6b94e81585efe7b3d45d4d6198805ef010
Date: Wed, 14 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791955233
