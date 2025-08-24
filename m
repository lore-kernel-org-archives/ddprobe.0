Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388BE11712
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756012794; cv=none; b=onQm/rUst5nxXemYaJeYTu7esApuzaEffdtwr0zbU7vqLUhHkzgP4xvej5I171jAr8iq8Ribne+93lV4dTuO/cZj8GE1XgGW9o8kF4utuZkp0/5oLXD8ojhnuo5EJ1k5odTt3oJA5UWi/MolY8KLCbwVozkJk0FG3dqY991UxPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756012794; c=relaxed/simple;
	bh=xyGnY6kRYEPOXbUUK4ODibmH0z0LuEBLdyYeyFRD30Q=;
	h=To:Subject:From:Message-Id:Date; b=CJ4Z1esSRH10gaP8HaU2epAODzjfEbh8OLerM/MpirSNAFNr7rVp3r9ZeN50Y4CFXQCyPMPmdoaEomr8JSpPbX0sanq5J+jnFLMYdYrSQaxYAMHG8+p7OCETiiIceF4Ku43ZK1n54BHgpckZcE5MzNzhD4IIZu7DDCGywvpgCZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORTw8R+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORTw8R+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EEBC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756012793;
	bh=xyGnY6kRYEPOXbUUK4ODibmH0z0LuEBLdyYeyFRD30Q=;
	h=To:Subject:From:Date:From;
	b=ORTw8R+7TFnE2clYDk6NSGQhVKFuyYcJEeNES/mptLiOqjglTJW+OcyNZbGDHYR+I
	 qMzEnxXeavOj1gSd7KRw8Q061L2Hwqw4usX+SU4CU+Am92Y5BgljtIJhx9lgBMKCyG
	 JMQ30tOUnvHi1Hhgt9nQgdbJa38rDtkiVmamU8OjVI5snE8zF82+gBoEFQr3lopCxa
	 Bl2vtRtSjlNoGNh6zEVx0s3r+5UdgyDnLkzo/KImJKSpHbPhrRvXLtHb837pzaofVb
	 7S0g73DDSmuKCL5FDdiAOnpNK8LE2lo2IUlUuTuVjtF5EkLjnoycj/SYz1u2uLv500
	 TMzrn5KgxvLAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92181CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601279357.28857.4041992463981716896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c1273bb3b8a488e11dfb6446538ebaec2ccd1b2eb871bbc09513bccd6c6e86
Date: Sun, 24 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756012793
