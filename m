Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8BD194A6C
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752347394; cv=none; b=FfxnzEGZ4IBzDig6m3n4umKbEg2oaI8q4+bgYhaXffubpeo1ct4ukEanxdmT0h7RXbZ+oBkoCSZjRWARZA1lip2PaJNBWApjLxK9XcDeu6eu43Rs8/28WpDnL4+7GdYa8Smgwst1uH4TbkfiOJedCYk6tXRhNeS7JBcPigqAlNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752347394; c=relaxed/simple;
	bh=jULGSs3hqUwyuBV5DbGLg2jJ+IXGvOLYSb83Yaw1BjM=;
	h=To:Subject:From:Message-Id:Date; b=Y62m6yW+CmEOVChgHR0DF2KAS3mfi2ufa9kVSBvRnQpMYcgLOKwCdpA7lg6Ekoqnx3dM9fx6LW2+WJbzpwdAUsKllV+7N8D6mXE/OIjfvo7YHIGfDhpBaFhdGRSiMVHENntmPPBT+tt5oVLrOwW7jY3JVGFbaexDe8I965Vqz/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNEUahB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNEUahB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A549CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752347393;
	bh=jULGSs3hqUwyuBV5DbGLg2jJ+IXGvOLYSb83Yaw1BjM=;
	h=To:Subject:From:Date:From;
	b=BNEUahB56fwh4f/p7mamEz9ddX/rmXR0u5nBImdYgKCIMX+xwfvHPz2qjzSu2rFT5
	 v7nUtkWwGtwCZlKSwz8ZCycWS4QZdtH8d/pRRGHmhMEh1QVZosU3FpWujoPnLHSHdL
	 LlwhId19FzCj73ALN41yAVlnaVRMbATRCxs5W2px00JKULFdktmF9SHKqZs04bJcl8
	 xHkVDv81iA1dMf3GA9gP/WDCAmHhapO4vEnySOJ7BP3m/HhSw1eJgCF7xo9iUZNpA/
	 sNnWpqtkPWK+saEcIOc5P0OX0rWRRHr2BUnmfXIudCAgCkGPLaDlQstWvZ/T6dzT3K
	 nu0kVnH+WtQRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924FEC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234739359.5119.3433245435983108668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685daac0fca062bcdea5889ce8cb62707d5fe6ebb5f311fd3aeaf44560307dcb
Date: Sat, 12 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752347393
