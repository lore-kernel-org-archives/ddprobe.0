Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A08E29D26E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774095294; cv=none; b=pBlDOs5+54z94lBRtbwkT8ycInEpQv0Mxqh9TEGVT13VCUBMgM6jnsq3rqxloEk5NPg4GYAg0UiOQMZlw+4IItQABcd6X/U1EOtn2/qa6bUno4iCuTuTLPQte5ORtNssViST8XM5ytw70w+bL4nNwJ2EN8zuGORFiJuAyVPXpnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774095294; c=relaxed/simple;
	bh=2v09ZVp2gsj+be4LqT10oJiNY7MwPvdvVCjvWS5o5Yw=;
	h=To:Subject:From:Message-Id:Date; b=B0biZUAtWCSh7Zuuu5vNzlZZeoq7HmIrHSEQsmFRjdO5q3HsKdlCQaj2Xtd5Bemk043c8IACGFTyzke9oo8sZhWaKtRHzBx2Yo5rnItrGJPupn4H3U8MpZGXG5VNFg9YxA3KV5LWKX+RSMrv36ZZAyAC4tV9IiDzNQlbuVmEby0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/MsWbbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/MsWbbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7F2C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774095293;
	bh=2v09ZVp2gsj+be4LqT10oJiNY7MwPvdvVCjvWS5o5Yw=;
	h=To:Subject:From:Date:From;
	b=D/MsWbbqUV6b4L5JLyBcZ0Fb0jyexXy0HmderxfxMjNQE+IO8Hk9wjUqwisFv1fl7
	 Q8oBDpcMHLto+RekCosKgI3kRdUdUAxrv/7KffnDmbfnZStxIYMbmOyhRFqMuLLinQ
	 mhr1pGGjinmqvSbcwf8qxKVdGsYsmTDlNnJbyZNKQ6mo5JHgF2mqumyNc78dR3x6rz
	 9kZgBJHU8F/zF5mUWPBv4UCahN23zj+UBJWKWnADxNiVoErWVfCYNKzYu0K+tF07Fr
	 Lzh/jR7A2B+zgM9bPi+HPmJPlUpHUrH7Sv0Z/WVmlq6pGCZsM7oYfQBBaAvg0/a7DO
	 xUmZAOak8aWaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910431094471
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409529357.29168.12264156999657951615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b4b1d4d7176965dc5803682c628affcaaf3cedeea29227807b8c83827c0edd
Date: Sat, 21 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774095293
