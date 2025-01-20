Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDAB54765
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737413754; cv=none; b=Y1G0FtnOmiNWei+T/tcyqIuernT6+7EIJ8GoMmBhFbPYBkYGFIEFIeT/sxrs3iKyNKA0x0PPDpntCJyK+RV3DgkajUxC+/L4qSnSpshO7v0qO3YAGHEnSl1Hoe/V1zv+wa0i0CUlL+FGwh8i0Vjh3TE6TifnVVLF7FTbVE5bpBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737413754; c=relaxed/simple;
	bh=UrOMD1ia0KPR/JjLSuJOH5Zoe0CmYIKnQ8YRNl0niN0=;
	h=To:Subject:From:Message-Id:Date; b=e7EREI58/GSDRueBXjHTCtHwNEn6Vg6lGriB5X0EhAUIVTujexj399BxuscHu5SUXliEVAgiUhhw8bOxy6R3g0LxSmuypOcdlpyJ+kMIfAZilIpCO0N8aaRF3W0RclVKQoUwOvOj8Ce69mySOIGwG6qVRV4I3lk/g5f/HxhrFZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WueLbcx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WueLbcx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7099C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737413753;
	bh=UrOMD1ia0KPR/JjLSuJOH5Zoe0CmYIKnQ8YRNl0niN0=;
	h=To:Subject:From:Date:From;
	b=WueLbcx7xLF82Dn6p6L1LeTfPnh3883sglz6PebT2VAE/hb1gYpPmWSfC0pnGan3c
	 7qrDL9qdXCNuMTn1qELbaB1sCptD4C+KeYsQYVfEnmqDdLeYkZsPTtlCp5NHL/faGO
	 EYXhMoaaiiqtRyoMxzJdbBps0uV/c8UMs96WRFFHlVIyNw5AMF7RIp6giDJbX4yozI
	 FwXl3Z002DF9YUdxLNHUoNa8qmGhpOhyTQTOX07+LwLVl7DPvP2ypk1/eS3CX1CZgf
	 lg3H1kfAx+kLcXE+KyPDN0f8sjU1zQz/Gj80NeNFZAgP15DnUtDZZqGE2WfjfuDZH2
	 XKXKQZx5uncXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916AFC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173741375358.8773.12885855585615565490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80868b01f64f1e9d326cf922c8f7f08043a2c296f3329182bb00b4ac5bed2263
Date: Mon, 20 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737413753
