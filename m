Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14227286D7D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775950654; cv=none; b=WiJOF15WFucJN+vQE/BdWyiETgWCJI5f+Ke4wtP6IV/PY4fRPcYZ4f4Rr45OQdEEbu4/3l1Ww5DrdsA7mrFwi5B0HknCOtpQWYygiHOGATu/C3of5ZqRNRrbBatNCJPU5fTcbMAItq5LYuMNz/dODtcnPzqEJVr/2KN7cQsb8hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775950654; c=relaxed/simple;
	bh=jEwX1uQCjTeIu21C9ELqcGLYoaIGtOmzEHLDP34she4=;
	h=To:Subject:From:Message-Id:Date; b=YaVH1IxRRuR+pnmLW5VNbAwyazOtuRWrKqeBq+ioSV38YUjWXGkmfZl1IyhYTNGhM9sGBz7SmecTNNHPxwwwqd6mItoJJRu153USiq1waPrQU/8bSEicoBBqbJO1MjeG7U8bZXf278DajfwqgjYiFs2J0lcTwt5D2T/g93jQnm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8advVTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8advVTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB03C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775950653;
	bh=jEwX1uQCjTeIu21C9ELqcGLYoaIGtOmzEHLDP34she4=;
	h=To:Subject:From:Date:From;
	b=Y8advVTsktl+LTXUCd9YHJrCCG714HgZw39kWVuEeVXf4SkRcP4/NMzv/rHfhYOh5
	 F2GH+b9XESo7shDQb6Ucmwk8bvJbFJWFutCYgz7TOYprkhj5g4TMp9SeG+waoVfsKF
	 ZFzIAym6tWhwyCPWv4TMFrRbP3gtOCzdv5xbrGtECF7wEFxcXp2OPkyWZOprCmmOt7
	 f9j6Aa39TqdhF33XMV/oEkJ0UfIEk8GB4QKGhG50Lwthh/d3+nSeMFNIBgdoHaAf+9
	 gYXFpNym4N1TTzBIxjfeyd3fIIEK6PUi8RTLI3uYTKt/IKocuAIUcNcHj7dh8LADtP
	 c/3eD9hR0/lZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAABF3ED6A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595065369.28338.3530491276272427621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7229f926c404b66965fe7dc2d194f8bd6ba5e24710df14a76f2c94605cd96a46
Date: Sat, 11 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775950653
