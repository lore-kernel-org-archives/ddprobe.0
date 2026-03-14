Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307EA42050
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773491694; cv=none; b=TNi9QVAYNBqox5o7eDkynCNSD+9PV7QB0QmI9lKu3lcKbRPcCBhhlF/5UvCKqJHL9xUdGnGwfzX80Qu35vkqVUakqIxsGCouL7V3jSGld3lhcp3cV/QZGydAEBITYJYvVxTTqrFka1JTCgxTmJx2CfX4SwAWqNDcjsHnGpodoik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773491694; c=relaxed/simple;
	bh=wTbFhDFDNyJZInYLuZE2ZpGIR4M52e5427fI3dWhtGo=;
	h=To:Subject:From:Message-Id:Date; b=AYnoIn2jvO43vrM1X7tfRP1arryeuL4nXvjcnFsc2UtKjYuVV3Uy4B6QkEYWvEJoxvGPc/1gGpj2uMK/oC5g7bevtuhlKAc3MQn73HcpkLitNkl8QS5pF9nX/BpZwnKyo8EtDeuWt1ubTWMJyAjB68pp7z0zpCBoDbs6oLZoCtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAobx83x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAobx83x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C7BC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773491693;
	bh=wTbFhDFDNyJZInYLuZE2ZpGIR4M52e5427fI3dWhtGo=;
	h=To:Subject:From:Date:From;
	b=HAobx83x6+qoOVDkK+jGDM9K39HfEqSyr5Rh7M7ZYXvGfFkDOjL1DFuWua+lqwodM
	 Qec7BDw67sI1fC6ng97lLD8kT3pinNnr3Uw1zCnFHwJtDfdpPtZLptRl/Qdta2KYxa
	 AUwkgAgod1f7DX0iTKJyVPwdxmn4A7WJ7WlSs70aWdJmmxNn23s74m8O03JtfvV8nr
	 p6l2ggp6KJU4HQZEIZ7m3KX6Cqf4gZb3sSm4oFura3ZJTm25wwoTOUhpLDLRRMNKSq
	 IhkvCCh19bnT9tUXfVipezaK1r6yVlaMnSEhVwplCqm5xOkhu99qA5hoPMjdbyockY
	 qdm53Y0WmVKRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43F510706D5
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349169363.24677.5640486581693908289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 787b6365a9376d588903d8fd3983edd49731dbe1c628f4e0b3926619ad35fc91
Date: Sat, 14 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773491693
