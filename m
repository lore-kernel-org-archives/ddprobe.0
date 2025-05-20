Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C57827715
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747748994; cv=none; b=h0Txy40se/UDRKVvet7vA5oMQ3nQiYRHks6rhymdMSdB7Wp4gMrCNjC6bi085b45yGJDTopmFmmCD3PUPqBTAmOsZ8TLrXzB0p6ce77CprgV0KxUUN4V1x++UIi/JkGX/TSNBV/Wz9jblN7xmOniCUX2I0IXjN8/fbxcoakzSKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747748994; c=relaxed/simple;
	bh=wvpQ/RXC3mu51/qF5vscgPjoH3/5bA6uIQkbdFKM6As=;
	h=To:Subject:From:Message-Id:Date; b=PmSjIArKcbXcMOBmFuo5lMmkBV696MAIrnymv/rcM6OxO72+nJVSfYyUQLbCE8SOE/tylYfNQjCSgav2VwnSsVRXRavI3PBXcaoLzQD0/G7HHT6zKR0rBFVru+WSsjrO25pt3tRxV+OAH3cbdqwN/vsoLScW1pGne+wzPMxsR2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPMgk5hs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPMgk5hs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9330C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747748993;
	bh=wvpQ/RXC3mu51/qF5vscgPjoH3/5bA6uIQkbdFKM6As=;
	h=To:Subject:From:Date:From;
	b=mPMgk5hsIfZBgDm83AoFSwgy0QTzxOcfqZWQbGxfNGG37oZBNTcGP8Vs95eTrKAsl
	 eE6Rr71997nn6kQoMZKo3wbMVzzbAPp7a+I8YbEBA1EoCiWtXKsZY/jAl7bzT/01tS
	 J7gyqy4JK2NfFpTB0iXy2jLAnlu0RJdmE0hpLIfG7tfdKGxfNA2IGaqQ3cFMZuFDbn
	 JLn94RENCL3rH2X3Kc2LwA8T31VfGC9G7XzhsvPs/fZlAtxCBh8MakmcU9l9eWcoP5
	 rS2IuhDv33gACvzGF7vnoPHJr2M4849Ljo8EiReaZRi1TlLfZaQueTSLDxKv3hTE1n
	 s50MMGlF0Lq1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91635C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774899357.12151.8923868786555013395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9bd84f36488ebd94911479a2371a55b3fba8020d8015f1b2753a3f48c3c4be
Date: Tue, 20 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747748993
