Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CC714A91
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763854914; cv=none; b=mrO/M6DQAF1K18ttsHv0ZT9hxHj4jVn3eBCIPdQokta8o0hoqWRg47kW1YYEkZi1yFchTgWStxicE9a91xQh7mQOt8fEn25qYTG0Moat871UEKz4OUc/8ugpzvT+s/OQ9AbMU7epPJctvwMv36Cm78PWq3wCyTU0NxnUmZlYexM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763854914; c=relaxed/simple;
	bh=/gX6qHIToRl4kL5VZa4sbLV+HAbR8OTi7ZHxM1fPeDU=;
	h=To:Subject:From:Message-Id:Date; b=Kaz+G8oIqpRzTU17Sny8gP42aur2fpYAT3w5d11UzHlGKUKTm+rUQD75mHWLgPb8T2+slPQiuC8oSeM3OgvHFFwCSr9D4OrBaGn46RSQa5+Fbj0aFFEMld19GJ7FKXYnijQH43Sys6y2do1/eAorn/wGKgTc9DJRbXDStDokDPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNBLYlcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNBLYlcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B117FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763854913;
	bh=/gX6qHIToRl4kL5VZa4sbLV+HAbR8OTi7ZHxM1fPeDU=;
	h=To:Subject:From:Date:From;
	b=CNBLYlcQB2rwPOuRaUGJHfYnKZr5hTofq2UMc8EAhbGeFRbpqbbCVWZba1ZSRDQ8K
	 FqnYcKJg86p261h8yHZouZ7/uyb2IH6HVkyj6DJjye82k7qiyt9SMSlkBHOf7m+XKb
	 JaBVrwamNej9ZogNuyfI9MpQlQB/6hu4rsKHBibF+rfLRi347Ifi8NUkm8MuJtyYZX
	 JIzmG1OPSVcPx8GPTNgz/GkF84OOU7u1O21ku6+kGM4coc/s3eSKH1Ud4Y1nGIXhuR
	 kPQBryZ4nS4qDfdUVf34VUsdX1KDnwMYAhX0GCi2wGKBbL5NE2e0SNHpajZu9HsMBQ
	 K8GQUi76rSA5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96259CFD2F9
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385491359.30360.3135001882729314344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ecec72143c0e49c1b7f2e68c5cd1cad8ef0e9bc502aac392e2973cb7de1aa4
Date: Sat, 22 Nov 2025 23:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763854913
