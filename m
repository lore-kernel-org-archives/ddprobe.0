Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79745107A6
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716648863; cv=none; b=G9aJoR5PDDtvo/ZI0yP2Ji+srnpLCFFHUKII+JOJy2P7DTK5nWz5IG5K3f5ggv7iyNvG/KlcIu6fqfgRVgzLBoA+OWW9GzAPcuIax+WhZPxQmBCICl1Gb9rPBVHlHrqmvtm/RgvWeTaQ3E9lPhamp9VjP/mie72Gh6qfGYpB6WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716648863; c=relaxed/simple;
	bh=YSbqHpwk6a1b+lw34ehzvQL88VBSsfYo29LKlyi6K5Q=;
	h=To:Subject:From:Message-Id:Date; b=ZhRCqL9iH6vo2En5LdgM5+vWHjPW+3ydEmIZX3oenbxhdpmYUyvr4w3SDkTy46sldJZ11lIj9UwSjgZ3SvO/9UWBzENIevRhHDJIodtKTxF0neFEwxOOZZWNnrmajzggrJgxdRx6l0hg1gtXt2x35EAl8l4RBAT02QL6HI8g2EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCRAGYJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCRAGYJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF432C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716648863;
	bh=YSbqHpwk6a1b+lw34ehzvQL88VBSsfYo29LKlyi6K5Q=;
	h=To:Subject:From:Date:From;
	b=OCRAGYJIuQNgDjzUTLD2POdd+DxCe/KUMOWDTj0OlRaTcaUHgVy5GLXUDzXSqp8tU
	 98965te4Szy6SeslaOlIHQA4OCgUIj62InpFwEbDRzdgGpCOpcqG/bHfI8L6RaTPoN
	 MYGtWMJTGHwEZezmVs+Pr5GBgVeHAvQDG7LSoqNZjMz7+AMZwcJKKgStmbQSI3PKxW
	 MCCIWa7hwXLsIQmKnoktAzLsEElJN7sot05Ru40NymGK+0Mf6ABWFulrF3/7h4KnqJ
	 bUu6InAcB4f+p1vxI+xXtJRR0CHxHGyUJvP6tgBxw670I11FF94IoDLrhAqpcuYNy3
	 xY6OmetRyRXiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB5DCC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664886287.28744.15835142823207131159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136f30597fbbd4c2879a5d89f8795231224f0ec3daf325ea0775e0b1c791128d
Date: Sat, 25 May 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716648862
