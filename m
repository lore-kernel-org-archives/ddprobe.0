Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE1433C191
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769090634; cv=none; b=PokN4jKvUjNCH4zG31o5RfT5BTnOxpqL6WQJUgb7ZHv51mG1ziSfdfDIi+ReTuWj2co04BqHNLTUFv/56TyZhHxp5u6yBLgdggl56xtDzL5ocjDuGCzVSPSS76NzVUoX7omZBTWySIFQrcvksLepl/QinSty7A3S5vQbevrOOdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769090634; c=relaxed/simple;
	bh=zLAsMm/P1qrQUZRFe3Nrawl8oo89EFrXin+JUnXSf90=;
	h=To:Subject:From:Message-Id:Date; b=YAFzCn+9Y7PxHk/o/a9wywuIR4m+sbB+UazK5r15IZ574U2ARy/tx3AFwhageawNZwrCu5XN3hzFjDCiQXW07P3q7VLgnuRGEjfDo3ay7kJ1hsKoShucpPHH8EsCdP/REaAcDTZ9FytyDZO7psjp8U3upSG1kY6Q/+y7T9DSb38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6WwdQ/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6WwdQ/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9DEC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769090633;
	bh=zLAsMm/P1qrQUZRFe3Nrawl8oo89EFrXin+JUnXSf90=;
	h=To:Subject:From:Date:From;
	b=V6WwdQ/HvLBVcbUah4vhy2GGNOuDXOUaREw9eOAT6YM8aFK6Yy/7iH31tGJA1TlVr
	 ri7ebBVV4SLpGFCoqQNuimcBZmOH1YlkI0XW67yXwnkKVs1utdvTvu6eOJGyFlHx8V
	 OF4bUDIsuIJdTvo1Cmrzgvk+x+wO6ov35AVWkKwlo0L/drHu8AkuQXhm6WDJTGJWaO
	 Up3YwBbLSeI9skoLw7EwuMh4OfGAZpiMhgc6Umv8VcekNYISsKFtqax757CCe6uh5j
	 JUjjEquO0vzRWS5yY/RiA4UI9pHGYIfuzW80SeLDayc70tWSAd4rvUwLvbRBQKeOHA
	 lqo5CBbKq6dyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E6D3EE66
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909063358.6821.8148272291530960046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67328536f6ece5163e0a376f16d97171d301010e06b285af7ee233c162abb9b
Date: Thu, 22 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769090633
