Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F03A3CEB8A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775577335; cv=none; b=pV7TCqJJsNU0K3LJscXr9p/qZaJEIhmIlZ98I5TIJzkyZ+Bv6+nSsPac/pmsSGGRJsGczeqTwfCLVIo2m9P0QhclSg5HSZZHc+ze9351XfOJNuI8iS8VfwI3qQ8Bd/IYm+gjReaMsw46P3r2X4TCb/CnEkLNoTOpWDqjKpvevD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775577335; c=relaxed/simple;
	bh=nU8INs9VGIgOMjlB1rF558+F0Emm5TouRBLz1Gm0q9c=;
	h=To:Subject:From:Message-Id:Date; b=k5Uf98LhLd1vLvfMvy/ZVSeasP6Eni0/z8Xbe+bKPPMzvVTZZurzUn/QppHgl43a08JuFNANhNvUEsSXe9n+Wyci3wr5uLhYSmhbPgE1EzJnsKwmDhK2SB5Xegj8BKWYGSkT/oLDFTB3Kqu+slfSo01kOAg9LsZTLBdLm99a11I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPnqv08K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPnqv08K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC13EC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775577333;
	bh=nU8INs9VGIgOMjlB1rF558+F0Emm5TouRBLz1Gm0q9c=;
	h=To:Subject:From:Date:From;
	b=bPnqv08K6PLnaByq5SNM+yQ1CbNF1h0ehKsiWjVGNUmze1efgoWdRAsc9tSxeIUtl
	 mTVxW1l6T8meDTZz64Io47zqDjO0W/7CdkKn3x8P5p4NCB6C12jsiLJj7zxsWpwgos
	 xS/6IE+U5FNTn57MyUJNlyiYf+PyFcSh6fkLaoox0CejAweFu5luYt7aqbQTLMsvWt
	 MLhyqHE0bt708qIjKU8kXzyAjv5kxrB5Uyk6OKN7Qko2tLV7QExz7lb0Y/LGagT+qz
	 xt+aH2XLfEIx+VvFBgZtoVoMlnoHy6h3KHU2XG9SNpfhNSezMm/KtshlphkxqnhENY
	 G17lO/xcSNFlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8B7FF510C
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557733369.32741.7859955933070185095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce97ff1e921d6b9adc1b3625fa6f8196d77ba8a1dea9ecd375a7c185c9bd821f
Date: Tue, 07 Apr 2026 15:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775577333
