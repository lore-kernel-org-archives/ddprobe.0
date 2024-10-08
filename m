Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E2B20A5F9
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728424554; cv=none; b=NpyVxYkNxeJ4WfXnGfe8zgOP+zJ4bDIDgd6rMHT5RprRbAHmAmVyTQN8YU50xUUVbovxRLgy8C79iry0Dl70PR1Q0aKsWFKV2Khyjh04f9cS8juJAA2Bs3Syg6b8wyIaNBO+JFw15ugmmpX2xSJneC4YGsy/jO4qzGLSmayNEvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728424554; c=relaxed/simple;
	bh=W5PZSTaN3w6w9Lw9ZgHyMivNbJjP8XlmoGwyGXphR+I=;
	h=To:Subject:From:Message-Id:Date; b=VD1oB9DxwNVVks0bWE5GqoXhQyWVAgmZRcrZD4tY+/hQlayscEVE/QjbFgMAm2k6KiUN64FXiENNz3F/weSsZHN6z+Pnx6QI6/f2jgZ1d2NugUflF16s7Z261LoiBwI/6acuulMkP/4BQkVf4NvrjnQ2hYYA71166uW7qbZf0Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bI9NPFuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bI9NPFuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A37C4CECC
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728424553;
	bh=W5PZSTaN3w6w9Lw9ZgHyMivNbJjP8XlmoGwyGXphR+I=;
	h=To:Subject:From:Date:From;
	b=bI9NPFuz9MjdpRNFIZxWY53RzGU3sJqYqvM3JfFaN7zlRiHVGuD/4z33sWzhKsLrp
	 tITfpGuo4NYxML7LM77ym0akibhApnTz2IFZlsoU2g38KnxrwsREeFH0nA9FeUVBGb
	 V/xE67H2TRf0Okgyz6YxHGDJPXGE8VjsZhFuD+edO08BFMBjB4D0WvYV94RXwyt1RK
	 mnnYF7+Nk+y3pzgcaAteOmmwSUp/VII+hR/e0iTqEjwtjueUvMofaCDIwmt9Ezh3us
	 6lmkCiJMR4rK91a0kcyg0NjlI4/8L6l15azW4WD0+VmtKGz7Nr/P/gaoj4Zct04hyM
	 xNWFQZXMT4heA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D28CF0428
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172842455358.23721.10195448582136292935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffad290aead49e46c4d5d1e96770a2b8b49c6edd17348b504db4c915fe74aea6
Date: Tue, 08 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728424553
