Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343253246FE
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765392174; cv=none; b=K48D5ubzh35Jqc+GkHzMDVoW7MpLWJnW8TGD8CGpolI7oCfaG+aKE2SDYf7QL0da4UxcmYNh+cq934Ztqd92Y8B6Q6CDBdP+FZtfMKc5mMwverLVTSkIqZNqgWiaFOtEw7cqzqyd0dlAuW8pyczvOyc/NJ6mF2jGT9T6aB8AV4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765392174; c=relaxed/simple;
	bh=rXD/6l5i+cKeyU/sHwamjcnpUT4u7xqoKcTaqHptCHw=;
	h=To:Subject:From:Message-Id:Date; b=lXwoWTSS+RjWcyasOC7+Is4c3hDTaLRKfNE2iwObSO44eYln8pXhlkMajIjhZ6BvuxxjFi/woPLqhFIPT7B8IHQuReuAC8cA4/oT9kjGvXxuT1Uh8+2k/pjnXrx5BGAi8uQJlxVXr4+bGy2OYmU8xRY7QL6p9BLEaX25upIlO/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRTmMkfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRTmMkfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE79FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765392173;
	bh=rXD/6l5i+cKeyU/sHwamjcnpUT4u7xqoKcTaqHptCHw=;
	h=To:Subject:From:Date:From;
	b=WRTmMkfC62fMUB6CnF/4/VE/zfo2InTBVUnHg/ynDCnDWKXGngBO97z1Wcd3MHEie
	 00eJUB0MiSB42g41YOGUT+Si+4NWA6PnYuBiNsaNMan5bIpXtpO4TMaArWvwF055j/
	 OVQLBbPwp3wOdQVEQYQ7OZUTPA4k0eiguUdp0bb/RIm37vxF8ETyAIJP0RAA++sXG3
	 l1qTZAJ5WE1ZX/XSuNEmU3xlm2QH6ogFIsHLVNeR5vZKBd8chth3bpPDYc53zXu6vb
	 YOgCG9cfSmPNe7B3g9/kjiO60Eh/OyKSrDnIy9XpU0rNFiDnBTmy0QMzaefJL3pyF9
	 c/H7R0wkuv4jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961C4D3E771
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539217359.21244.12260280069782534926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cce1b4cc5e2d69f694863eb5cd180aa46cde39ef3c216285ca4caa44e9c1690
Date: Wed, 10 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765392173
