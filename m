Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB723E1233
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792135234; cv=none; b=a2tLc1Ia77sP9V/snkaGT42If1iB8s9aJNo/bdp+Q0wweEbFxzX2+yhmVhqnTjicATMizUkM/QIt2V07Nfk5z871/iYTBkeffnlLsFsyfgLPpTZ1KMDPaiMS6ZQuW65eTsZzdlh+BdTalTAkf8fI6vaydYUBlBezuqQmc1HxgYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792135234; c=relaxed/simple;
	bh=Kzga6wADomawG2GaVF7yz2vnbVqqwrRo4A2+9FRwIxs=;
	h=To:Subject:From:Message-Id:Date; b=le91POWkHXzUGZOBR7QB7YUZlbfl5t1pQMD+T9JAG7KrBjzJxb74WVnRC7gR0ji/Guo88Llv9Dnnxl4owvq9lF1fruvcxmOP5ygUUuuSlzXJI5UEnNM2aWmH1zf1sAEPXx8OqLHp8YK/H0Bdw1R2uSKIitqlAsvafpCbiTY4IuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DznA7NsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DznA7NsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84F0C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792135233;
	bh=Kzga6wADomawG2GaVF7yz2vnbVqqwrRo4A2+9FRwIxs=;
	h=To:Subject:From:Date:From;
	b=DznA7NsC35anyyHv1/unTqVQGA1wz+UENu67kQJ/StXPxGLxxra4fT1raV7YGtCKI
	 9SI8UBDR2Jjz02CLcmAwlEVeqKiLgK90zQt8005kgbxND1sOq/63fWglj6z+Y1MLdK
	 AhlBcSmNggYi/okqxjboIrsmTonu9O41gKhOUiLc3Ant+cDpf0NMWQOPvQm4EcBBmJ
	 P6PeSmX5uKnaVrEjatGEX69K61PzcUZwo4nl0jB1BrMicFYSawlhDjf0mmVdi16Xrk
	 bVOKLevN6dXoEDtDUNXaDemQ7sw9lLbId3IaSTi2O6Nto+uqfwX8k97eqtEPkSDOTY
	 GU0MKWrz/Rvtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1DECC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213523369.18306.6398087982100183869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08e27eb1e83eb838eb59f3ee3276f7640466e5db9f69ad204ef026f53091de6
Date: Fri, 16 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792135233
