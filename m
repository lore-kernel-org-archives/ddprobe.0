Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8F149253D
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778574634; cv=none; b=Bia9kk01jUtb95xKw9h6k7blchqp/3eyivzS3Rs9HzFoVwD8Epexto1RKm66bLsvDyQjtpD2aIpBpCjTUf2u8Zl0+Mj4Y5/8+bL2u3hXla9pTmkzk39q0khxJtLPifyVgZI6nr/TrT2+maeuMGSD4K3JbNhqLdrliceTUNQaXFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778574634; c=relaxed/simple;
	bh=myRA2gbpztHaYdz5gdMkwBdSXesXmudOypjkkijhuj8=;
	h=To:Subject:From:Message-Id:Date; b=F9zMNpCWHMR30bfrKWXHS5g4gd1VsdfLEQjygcWwgedbh48F61mhIP/1OpJP1JxQRWCVl4/LJ76f9rJQvD4AsfY3jDBWebHPPXHJs+0k7OfxpI8hMoC44d5qH13JFmuRS1dzYqE/QIsPhGU+LiNLiChLRTjn09fqHVNFmOWXooU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEKzK00/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEKzK00/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B80C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778574633;
	bh=myRA2gbpztHaYdz5gdMkwBdSXesXmudOypjkkijhuj8=;
	h=To:Subject:From:Date:From;
	b=JEKzK00/E5ih/ZyDJhvDG2KkWxYK4gZAokFFKfLEXHVA55ywPPl/MxXAEEZOdiF0D
	 De/Iy8UvFd28+NNsTU92z+YguvLuKGphwaPO0sgz0ZvX+2laQfipPynyiicFAeTX+k
	 AOztxS5Hb6KUtG8LulVH+EdvQza3djL2bqxxudm0twiwfimKyTtInuTlzX6O234PDf
	 zZtaq/BrTeYRVlT0q0PaQvrqbQ/ad8A0oTjMZIrSn2ey+4FSIekuYprM7nyHIOTsXr
	 sXMPrBxiot0/XDEecKF2lnFMqVTDIJ+c4k5RASX2QiGurvO3Re5GAIlnRDfZm9wgks
	 7aS4NrQHPWBLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA290CD4855
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857463368.28845.15504220015477153898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c175fed83a5c399456752744e8eae18c192103fbbedcb19e133bdb491ad0567
Date: Tue, 12 May 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778574633
