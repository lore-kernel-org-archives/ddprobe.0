Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D523F6600
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778179054; cv=none; b=C+hxMlcU0xhne+Xw4VZmx991uqR9JqXc6IQ9M5TRFyKVv4Y2hZDYY9oErtT8t0IB8sItTyjk3FMbEjvrMtYDd1SfEPzMSDO7SGDCsZUSsNLyCcfJrTh/M8Gl5Z7yELrNJyR8nkc/B+/mgebnNmpwfk5ACgWdkpfmy49ef9JzR0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778179054; c=relaxed/simple;
	bh=NvBWMW1zUQhvLW2knXl1M+TqWr9rZGWbAV/h7+pb1HU=;
	h=To:Subject:From:Message-Id:Date; b=HZvE72cd5aL6MiE4oD1WL1g6P32sh05CuJ6u1ONRgum5Rl98c+94AAxgeLPIfegMgFibjeylVdfAZ6W1VHJxh285I8zCHESNGMsUevewMVNjcVY8mRkS5yttOo65+M9+YTOOMtnCNayZ6zlt6QvLkvaph8QQtSaEUeeuaU/+DjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oN8Nxr2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oN8Nxr2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF50DC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778179053;
	bh=NvBWMW1zUQhvLW2knXl1M+TqWr9rZGWbAV/h7+pb1HU=;
	h=To:Subject:From:Date:From;
	b=oN8Nxr2o5Ly6HUMjqlB/AAJEshKgfMgcu8PbLb+5i8u867AJbjH9RTfPGnvXRlnk2
	 smgbP8CblaeKHYR0lnRfQsFrgJNfZzQFXpA4NS0/50unFyI3HmEHCp8taG5qsusfX3
	 qpIccHbYGWnCGKXzs+kRCivZ1OX26qOAY6X1jy9AaBtHm6WB9dcQCjDcAhsp57ZsmP
	 j8/wNqtxnegj58jGHv0kcN6dO7veTX5aVFIBCreRDzqlLw9sqQlnp29BOhVSBWKolh
	 VaptPAGDeXWGSaWBqAayW0tZwDLmkmmrV8elq61fRSNjcsn5gPKC2LmmnDoTqmisci
	 WJhGBGwNGKksw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7549CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817905373.13996.4274976486138579113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d575f24887b18f1c007bc21d565323b8b092c0bd15a30f9acab34c5dd89e16f
Date: Thu, 07 May 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778179053
