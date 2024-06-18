Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09CF84655F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718679503; cv=none; b=XQAbSZZ5LnM3xAj6S7whuf7KP1Gj/AfgpgcmCOP7DWzfHDwHSrDNNw8fKOO4D25RugVmjQjfJNrNCroyjulcKdNquCZQ/I3rtmQ4J/hZ9EqbjpVC8mM3McRDpUoMXzBwmKcXjBFEOCJa2lbXiLhJ2+lYTBK/6ZzOXduY3LJ6kZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718679503; c=relaxed/simple;
	bh=Yr2nQKrn3lNB9mauFQi41EX7M5/35dZpA8VWYPv6AAI=;
	h=To:Subject:From:Message-Id:Date; b=PEJwk3lfZqYxISMl3grhSSF6v+3YWz2MvZTZh+Z+ZegFBwuSueJl0P/DUl2AE8gQJQtukvhbmPra23oueQCs1MpX7iER6nb+coXJvOaU9XJMO5mQxnBD7C1yqAKOXPXPlpTtbxcf0KWi27kvPUG7WF4YPVoETgjEuD3GZ5XkL0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uht24xgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uht24xgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BCAC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718679502;
	bh=Yr2nQKrn3lNB9mauFQi41EX7M5/35dZpA8VWYPv6AAI=;
	h=To:Subject:From:Date:From;
	b=Uht24xgsjKFl6znLtJ/L9aBq40swA5ITzw3CG9dlqEZxlGFNsxXd9cOMyB8ygGfe4
	 CmNUmTn4kcQj0IH1EDlozjSRQPaEKszqPVHafhBe+FfUijP47MvzFqOS49wezeggN6
	 x8gU5GIp7vQN7dRP5SaoYmD7MEjAA1RqyhDicnAOTNhLS4RdxfQUNnT+deebFNa/px
	 KFTpT7gN+pDaDwqjZdspZ/BAMN7Jd4yLkN/N1uZGkNscw4G33GkZ+bv/wvDodFJ5t8
	 ZtClHVllK9utB6l/5ra/4gpcjoYYX0sDe2CjCT0v7nLE7LD+yRmMyxee9+tdjvrP5N
	 K+i0fvQbykw2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13BDC27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171867950278.13658.11828976119478526262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa325b8b7a1288d9270d310fc411873552f5a6df7e6d9a60e0af662914591565
Date: Tue, 18 Jun 2024 02:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718679502
