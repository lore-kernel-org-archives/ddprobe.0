Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CCF22D785
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791601834; cv=none; b=jXEsP1gBxDyjiba8vbw4L+tw0F1frNTQzMuBa/DCh93lQ8jRMg4nLUCAMkEWsSrk/D5AtBr7qTXf2B7hZqF1AANPhq/uS/QrE+4gfJi5Hz5uTYikRQ9ywONAGbaeg2IDE7MBiibAcw4XFiquOSFha2pfsF+sgnisPeF8OdpPrfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791601834; c=relaxed/simple;
	bh=cHxKBw6tHP/Q6XeYhU2p+wjdazBUxeQAw6EmMqbnZFU=;
	h=To:Subject:From:Message-Id:Date; b=t+/hkpQKQFNngLuBEgLwRX3MdNGTHHAk3gpkgkQIm93GRE5vH4OnWw7AnLHK029spsFzk0emAvoacimyVPXOy8qzPaUqohBhn1ngNF4gFl23txZ060n2KDjB3Yenu8obkIKLDjiHEV4Uzt9Ym/PmDc5dnZ5cmRNA2oTB7+Qmm5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkMB8kJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkMB8kJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF3DC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791601833;
	bh=cHxKBw6tHP/Q6XeYhU2p+wjdazBUxeQAw6EmMqbnZFU=;
	h=To:Subject:From:Date:From;
	b=qkMB8kJkOs7xSl2ahadFIL2cHf7ba5AO9ec0xkA5WIv8gqUqfLMSLjDx5qpWW0auW
	 dCC/3bfNy7O6xtXHCfMhgySzzVPbiTbAo+MEFWEeczNFuAxBxjfDhIgq/PHAhTEW/K
	 Sq2wPopoowMcA970jS3Nl1Dmnfw4+gldn0AKx7FZHx9nJ0bK/euzoO7t8ETExCsu8V
	 CpFEASi0af00UbpmwYnnbtS09p7TsEFIRqU1Jooyt8OtWkJCr3lgfMQMJGdw6UVp0d
	 6Wh65dzx0XA8DjjSJxXPjRd0cAWiwoEG36PC2ZX6L9Sqr0nEZbQbz8p9VJ7JPMAQKk
	 Q+syX/IpNbgbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9964CA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160183368.27060.4451463029639041365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07711ab64ab16fed4d9fc95fab3a135f8d04b8b00f83b4a8429435e51ef021f
Date: Sat, 10 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791601833
