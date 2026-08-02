Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB091FE47B
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785628834; cv=none; b=f9JRDKtGYuhiQOu1Npd+WJHFNKLytUnYyJguxsYdb5wQXBpXacZPBeNzvfIEU2Rffi7DpyWSfst1HBmMykLuFywcJKvUWmEVOWomtXS5vEhNr1whOgWW5/Jd0L4INPbwacYuCCSyOJXUuhKxMAymB9ea9zQZhcCrgyzdsqzk1UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785628834; c=relaxed/simple;
	bh=Zdkr8cXX14mo83PAbqciZ8N3a+vVOj+tORqK6rfh4nc=;
	h=To:Subject:From:Message-Id:Date; b=dyN4Sgd4V8tzc6eO10T19zV9+AiQk4LsW2jn+RYoh5jRUqRu7MDK7c9X5Z2CBnLs6m5fAAqBKa/JLjAljTGUTjWQrYKEtEvFw38JLLiLvI9Q6FKfuFLIT/BXX5vPtfwvOL2gUFSEjWA3bI5X28hl5Mtem3YBZtd3b13zzFaZ+3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YF21tZSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YF21tZSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A7DC2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785628833;
	bh=Zdkr8cXX14mo83PAbqciZ8N3a+vVOj+tORqK6rfh4nc=;
	h=To:Subject:From:Date:From;
	b=YF21tZSHJ8phECIF/j36ADTrcRpdemsoJ4pXc27WeutdoXB7xhDAJd+ZN1QNnchv8
	 nLaS3p6+cbW/I0gYaXXXE2fsfUyShgX1S8Lsw33ajZYfwSaCFzfYK8JLWjb9XZI5sl
	 imQJT8GS8WKpI4IrSvlUIKk/7xxCwPuq6vucRKqj5ty+1Tyl2bM8SUpZT23fpSff07
	 +sa1AeThtzQAjtohzxjoenG6ruL+vys5wpQhaDGzLffgcNkrTsg/qVbb1OD20Wyqen
	 9Wo4M2gunfD1ttmuW2RHTN4lA1XH6cRA2wOBiRJTcgDFyJ0PUH69KGYumhUdrhYGWN
	 09OQs5xr9JO3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF00BC55172
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562883368.7515.5570648318927764315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0241a1f30a816a879f87d5814b80a89eb1d8bb7e6beca4fffdfba6ee657009f
Date: Sun, 02 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785628833
