Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A83235C1E
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747931394; cv=none; b=GqDcUeKUF8dwrCO1pGnMk8jR3xvyv5XOJEaY/QS5fO2WKuiiOXDS1UhTbJDQgzyJX0VXzRRSFR4bCuNZDHZeW2KWGuFmquRv0kLbZiJHOpyHEWwRo/igxBy5jz5Bvc4lhcOhq+YrB2pEEbMnjMkHWWK342IEM9jOQwykNj11KBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747931394; c=relaxed/simple;
	bh=WGaRbTClRwTMcq24MCfhcGVlf8hOGzMmtycWBak2nlg=;
	h=To:Subject:From:Message-Id:Date; b=jPodH/mO6eeCFsHll7qWYfw8eXThrxcbWb+pvChnbfoe1xV87aPgEKKrOgjj3toGnpjRv0bDI0i1Ah7vgbboYkxNJS2Qe5s9iwAOYzLHm6erQDL/Hfw8Xa9XSXnBHCotMAHIzt4uT6n+BYE8nv2HR9WUqct5lj/UFEAGox2AD6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHk3eoN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHk3eoN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DFAC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747931393;
	bh=WGaRbTClRwTMcq24MCfhcGVlf8hOGzMmtycWBak2nlg=;
	h=To:Subject:From:Date:From;
	b=dHk3eoN0wV1cy7FMvYRUf1UpDEEz4Edl9opvFHRTUeKr1vvL3wkeesFra3C0ZGLB5
	 JGi0v+pV/In3udN4QdxcNukbqMZ5dbjm7Rd+1jRcicwyqJ5hrWc4UZOCwDVcfVYWHp
	 0i6Cld9YPknFKZNiYd7o88LUY8HawYMFTMNO0HK4e8zek3FwP7CFtKzzY+GCPlYmRd
	 2hWG12uunb4YEajvehNOF7VrzlZvcf4FdZWcveShQn6PmdN61xM6EV1jFVKU+mQcZE
	 aFsF/jJCA7kyDUi72IXwuK6J0S5+1HqjabMw7mO/jaCM3KTFFphh5WwA9eCBKMxRWG
	 bijXmsY4C+N1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE18C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793139357.20354.11271977499337332419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f0c5cd270158918c87d8cb601af4ef7e28c60091c0f2b7244197639aabd36c0
Date: Thu, 22 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747931393
