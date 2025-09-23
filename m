Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A7F326D62
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758634193; cv=none; b=NNR3y7UlXgYMpxR1TlKnqlm1y3gbQFRe/wwbLDDS5s1RloqJHMimjdP3UAuuc/DWMz+QOHXAZLT4ri5lsOp1x9M2My6v6IT7VvP1CIIMCDIAC4amRJwYEwnMDuniLdlhMjU8cPGYd51ZcKBZ5hnkDqTYLPrNXkjKg2k/drI6KDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758634193; c=relaxed/simple;
	bh=mlZjVB0LHzmgmXAxfdSZuQ1RMAXyZ+KLV+e71tr6FWk=;
	h=To:Subject:From:Message-Id:Date; b=YTcIAtfaySVrj3S19ml/gTzPdP+5xvHb2cjZEHqQnW62om+7WwxS91uzHiyEx3JSwzm0vTDzeF4PolIyWAKg/1/jWUMp1elcysKITjTjoJS9hk2GMj2QEXGyBtps8v4OlYWklutZy8N4hgQeEGE/EO3psndCWXFc4ZoAqNyqYm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSqpJWju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSqpJWju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA71C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758634193;
	bh=mlZjVB0LHzmgmXAxfdSZuQ1RMAXyZ+KLV+e71tr6FWk=;
	h=To:Subject:From:Date:From;
	b=OSqpJWjuR9F6hvgdwqiF0xIFMAJKiDqNNzIYAzb1DR1E6rhSoRCfbAv7VS2borOMt
	 JLQTHkN8d6XGvJEmsamb9I1x9cm8FOESUe7ZDmIn9mGCJVN0Mmp+xCHZ1hLKR2pcGr
	 Y4f03ho1hv2XJI8ZVE/q+JjmuuQ9EYQ4GKJnTblTQn4EAp3pbrOKPFxtxgq2xewzXt
	 cWPwnkPJQ9wbNkTL3Uv3reIR0qN9leDyiEvF/E2yBYko7H5/OtFECLIlE6O6e1hdzD
	 R7RNTvmBkcpXth3fcNfJOexRMioWGon2QuNdng7iVdk8ZPwhD1aDaX6PrDHCc/CFnO
	 j5XlSkorjqoQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF9CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863419358.15149.17871440699878535103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dafb86645abd753881a55db11b985af75341666ecad6e9a1d11c277407c73c4
Date: Tue, 23 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758634193
