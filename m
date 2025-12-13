Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C199463
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765609374; cv=none; b=PIQb3UhtSaQlPinHVGINYTD2pyzzCLC0YZHxMEPe9M5OvdzHPWKfkxnRhAKTislAW8alDxlD3qAmRPwOO6+Kw2t9TTvnfjjLK7H2MBBiPGZr15mPoGsn/R1dqahpeMMhQ7B0evvAVU4rDwvgdmwfDg8etzeXr0o/Feg9Tz2PXbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765609374; c=relaxed/simple;
	bh=Oj7hOnCh4S0zJn8+TPkBOzKJkgmCCIoxC6gdGOcHxWo=;
	h=To:Subject:From:Message-Id:Date; b=KdXHpB/zgitep69GluHFjQ3S9hLGf6YA0TGx8MvtNk/nc95KtxsBV1Wh3cWlh9XeAPLiwiAFV0+s2MaGWIc142FeBA90hs0AaBAVDJCngR2EAQuSFIh3AYhVh1V1YBNOHa6TL7kdPAajz59VOrjddLifNgPrao9ewlKT3jneYdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1+zcrsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1+zcrsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F0EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765609373;
	bh=Oj7hOnCh4S0zJn8+TPkBOzKJkgmCCIoxC6gdGOcHxWo=;
	h=To:Subject:From:Date:From;
	b=R1+zcrsdZczc9Fj41Mpd9RqUFEXC+hAJFhywMMlhvVcU2DsL6WS2LY4l3hqzpYeHC
	 vEzyF1hsARFOjlvwazKqicchZWKZMXOqI9S1FDf/ng33irA3USiuyEUY9BL8KEISDP
	 02+bqU8hUqU48dVG7172YXVBu0NLo7W4se00ZC3VXGEqrp7TCqFNOmpxiqoTKcf2vL
	 Ni6wojXIS1ZMMwPGRBPgX9+nlC7ttbnCFYIO5Bjvx8aWD7K3Nvybw+ICfw2voM2okH
	 CmK9qLwEapq6oADFg6oJhjg7uMqS1FOfI/haBfDEAhuNwm2AcV5RclwOl14eJzHmJ7
	 Ni7gn7+GxmmqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9574FD59F61
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560937358.6025.6223727678176089475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 186644b9b2f61eb9d859ea206f104f224c91aa85a7d4475e76566878bdba601d
Date: Sat, 13 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765609373
