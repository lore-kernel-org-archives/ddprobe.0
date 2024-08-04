Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC7E79FD
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722748554; cv=none; b=UPA1H15+OxghO9i37lej0LAYzClq9rPnV9/QjSPM/YN6W86zG9xcbIs/R54JpCWiNYdLw12MR0VAbdtrgfB8H1aHT/iw9l9TOScox9L+ndRNvZpIgEZYuIsE7AowAXbfZcdi6GoXHbFJXY9+16zHRm1gllzKBN+Gqk+r5W74CaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722748554; c=relaxed/simple;
	bh=rIV2C5NP7WLxu4msdmYlL9lPSVlFfP3wjaUQyRr5W/8=;
	h=To:Subject:From:Message-Id:Date; b=jXHQRvXmsALLeUGEhSEAM2AziDTcBaSHmm+aoR8jqW0t3aLithLTYnOHYNxZ5RX2mDEfFzGd/wMXGo4Kki7kLmeKWacbHKrloW6sL94YxNdXcdYrN8zIuVqZPIOFXerK/ayW370AcnyQxJvrpnOmU5Ob/H7gXEVBBiYNoRiEg2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5V5gDW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5V5gDW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEC9C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722748553;
	bh=rIV2C5NP7WLxu4msdmYlL9lPSVlFfP3wjaUQyRr5W/8=;
	h=To:Subject:From:Date:From;
	b=u5V5gDW5G/n1dzZ6T7nEZLgDuO53MenWzackJLKmIOUH0HHZZomlLFbsT7ayGP5d7
	 5U7gxxwyUHOWA8N2S6XHxMuZL3uHURW3XoG1Py6h3M8/BnH8x6OyaC3QGFGHGSUwC2
	 jhKfduGRS976swxoE1I4F6W5UvHz90XkNDmDIwaMPPZoZwsJCpJtHRCZ7j+KTMw5X6
	 dJr3ursu5u8PDr5Ehj9rYfV+9H9AmHSK1CXlE4zjqsOjbl9wAg1vGfLIrTlFUefVmm
	 8VX0vQKfBlmDRBM9evE3eOWVVKEvk9QendzyC2sHBCogB3I8wi1pCV5DM8WVzIPW8A
	 PYoXsXXHAtAzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F32C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172274855358.16219.2112051774421768465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb1224d35449f059f5455ec133eb5be5fa8765a053ad796135de01da2517efa
Date: Sun, 04 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722748553
