Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CA61878
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718758163; cv=none; b=bwNCcvwOnhgmM5pJYY7BQXvEcS1qFnw5Ch+FFr6qdsvspbwud6fHIRVfPK3c9LrYsS1mpd0ccxHix290R4okR3gNtp988cUY4lrkm54xBdWh2vnCKZ7QRpQduc5m78wV2PZE9eB8085qa/0tdr9LqrBpsH9JrikjVAHeYaDKP4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718758163; c=relaxed/simple;
	bh=+7BnmCLKRuFfRquEpOGDpLb/8SLBR1woTTylyxNTJOw=;
	h=To:Subject:From:Message-Id:Date; b=QzSPsxWkqzkgAAvmRenIkuRxwJOh6G5uldh1jhGi5dODCLqQZWMRH5nk1YuIITFlxefMx0T11fY7rJnANxexv816ZE82BwqnkFyMp/aa4bp1Nv66b6T1au8i/foErvacplMirXakmIn3TEOPhKzVNQobTgY+vqWi8kpO/VEvYJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DiZYidwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DiZYidwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB11AC3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718758162;
	bh=+7BnmCLKRuFfRquEpOGDpLb/8SLBR1woTTylyxNTJOw=;
	h=To:Subject:From:Date:From;
	b=DiZYidwe/u3d4OIBEdujk6TrX/ddPgYFDq72RA/zFY/eb0Uek91XUUHmSiGySvQ6I
	 sa+6uUtl03oZ+l7JgJfy90HwVaQpzd+9DtoFj1DWrsLdpHRMzmID0U0bcmN0fi1At+
	 gje/eJxNqYV489sh0XaTYGVOvzNeiWes+nHEuFy8os5O/3hk4NLAKu0cLv3MELdu5f
	 0HtPCqjQ7y16zjBrZVRRPPFTTvNe/XjLr/2+hRvGigxNAvq5wxshe0cfbjBOM/2UL2
	 TLcf1er4wi76PRvpCeXVt/v1GOUjHFXiJhcs5qCm2ng/Wx+4uT/e1JlpGa0mP/7wVw
	 Jdg1KIzEpKLbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D66C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875816279.12274.17373875449855779888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea7d69cd8710894dbff1dd3dbc1c1ece9882a32e5d05fb4035fb575236f1918
Date: Wed, 19 Jun 2024 00:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718758162
