Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2314825E44B
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755154794; cv=none; b=mjBslIUX6n5qYCJGolOp7WMP8y6Vd7PTZPHJyFC4j/TU/AOoZ888KWHmNg24swbKIBw4NjZ8mVXQ6RkFr5iUqgdokj6waRVh6KH6KrPM+4v/ulh/SNndARdzsJZkaQUsk3XYLMHcTCasVNX7UvaLbIpNC8jSjTV32/O8kHF1nMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755154794; c=relaxed/simple;
	bh=zsPQzvlSXwUrZkvBKwOEt5ir4Jxv5hWgjXP3yyOBHo0=;
	h=To:Subject:From:Message-Id:Date; b=Pck6nk0wMEdGSDWDp19P0xu5Iaoy+lzP71Qg926MYsZcrrmIfj8TffkI9dZuDMfC2Kqs//rPCi2yYf94BxguuByoR/qsqVBRYKysgfU5rPFdyUAYTAPOOUBBH0hkqBCSslm7xbef2ljDadFdvvuhEARBrUT0pCA2bU6VPeCKH1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxOI55xw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxOI55xw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FA3C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755154793;
	bh=zsPQzvlSXwUrZkvBKwOEt5ir4Jxv5hWgjXP3yyOBHo0=;
	h=To:Subject:From:Date:From;
	b=jxOI55xwZFexe6O1Y4VtZwvPllGLGKAvv2zAOJB5SzQ9E7MHfFoOziIlHF/Kxy9J6
	 d0arNcLk95yMy3uEJTjS4XSrcN5vpUdrbTLYsSDWgtRJQiQTGKLeTTQGflIkeE1Q4j
	 OTxF+sMBza4ql2l9o861mw9r+s+3Yv0Bi8vDJL3Yo23fNOQRYGgtHFgE/vCbrYC4rh
	 TxHXUwkxav2G+/AxpbVtzzP2ukZ0kYTZh3cpkz5GU1T0K6VoBH3CjGwfKlvpv3EITe
	 WxQexvVhjYlHP4oUm8Go4xbS50xIyLgvN+wlV52/+zCSKpnRtHlyw4tp1hbzIJZvMy
	 F4ZGOfNVvfGIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E79CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515479357.11280.215604217957703404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d255a718f6262600e67baae9a42d093e43ab262d27edfbf5d46c272c7b9f055d
Date: Thu, 14 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755154793
