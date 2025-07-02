Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2863B244EA0
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751454594; cv=none; b=naLhtsItCsB+n/NF09kY1QKwKmZQWsK1qNvJiq5GfSEsALbBGWKWEYCqrkBqrFGnZdy3JlkiTcoVlGVFfLMmUgBzXGUj542yP6xuK4L9gDpkSnbWsx+nB1frALgxYYG3ss6AWO6ZFz7GhwNPMuPPWOAxemOgPvzT/r7ZVggV2zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751454594; c=relaxed/simple;
	bh=xNWqSsiV3YByd3qVwmDYvaVguPg0Alkt6E5NqPGrHrg=;
	h=To:Subject:From:Message-Id:Date; b=SiTFh3/cKXgGmU2924H1bb2zKZE4n5NT4cT/GbWlLB1M3PEgEkUeQstaZbHfKO9kKZJxvgNoq3gHKtg+22bKNOgCXVtZoXiSDzNDDInmKO/+PFB9eTCmVb5AZ+IwUNYMZs+IjM1Lfsf5lTRhjCUlZ4YHiTyQVEsy13Y0/IqLrfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBiE4OXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBiE4OXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D823C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751454593;
	bh=xNWqSsiV3YByd3qVwmDYvaVguPg0Alkt6E5NqPGrHrg=;
	h=To:Subject:From:Date:From;
	b=lBiE4OXwtxxz5whyMLwgi6xatjFIs+yHf1qO+QuvRyUlaVHV4DCTQUNvStzvKFXLG
	 gX7nsHgpaJ78ZCIQ4s5RuqpiMBhUdBnOe4JnompT9mn0wKSrs8M98Bk9GKKQ9iOl6k
	 DreAvwd16K5PAIVAW3m+OsYowldThY8RgbcDylS9TIUkNYeoU/D3CJKcYMt9Vpa4JL
	 CornsiIB6SPWIpGXfkegwSsqYlFEYODR49ahdo4/Xfvf7bIBPiLVh1b4Dw/IHuerJ6
	 D7iybz9aJTnCZGpH1MrfTaAvIlsdHdzDjZGlp/wycKWM0pzhdiyfaK3FJcYZdpgADr
	 HUa8NoUr9+6PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E948C8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145459357.7965.1557893537639358505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f1b4272c9b85970c886cdb69a5182343daf14cafa952732e398979859db10c
Date: Wed, 02 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751454593
