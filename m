Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD5B223763
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706454496; cv=none; b=hu0uASlU2Uj/MIpHE42IH3ki831Re6MnV9YxfDOVgOXzjO2f5JNoGubMF8hi4m02vcGW6k2AWis35TiqAcfGXfUqvnSwYeekxsR2Kax4TNuMOUOrOK3EbZHg1HuwtT+6JKUyR2CfaVdtbgrij9MZUiqLua61VyX0chbYPl0JTrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706454496; c=relaxed/simple;
	bh=KCnhAdsOtOKP9A92Ikqb6ZZJO6Yd2wiQlDnHgEJNE8I=;
	h=To:Subject:From:Message-Id:Date; b=pmJbMIN0nOVkmBTCPKeEHvQ9bS8Ax1qXnkAUrw0J4NiyK1mDMVDzp+uVFwKM+EXw3U610+CfPvT2/Rvxe1Yzshqpd2pnawHdo46yCd8ietvbBE/OrfMFtEqEukiZ15burNInTMjv0NdggunYZBYdWRAhGRiuQx6mLqbvnhUt4ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLlzx8G7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLlzx8G7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83429C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706454496;
	bh=KCnhAdsOtOKP9A92Ikqb6ZZJO6Yd2wiQlDnHgEJNE8I=;
	h=To:Subject:From:Date:From;
	b=GLlzx8G75FEk9miaEnvQ+cl8C9swtjpiV0wv9CHvg3u7Se0ot1gpj864VLIWspLNE
	 woFL/J4Ift9GqrKFNcCcuuCvVcS3Otegu7yBy2AWezFVfE+pXNHVF3vgDfA6KrwR37
	 oU+jWt8BgoNIArsNuw5Gc5gMF2ZWN1s00jgiGel6l2zHX6+LtaOdYETYQsF77wMbwX
	 nVv22Chee0a6MmmzIaJWmmSnm57cAKapn18Ui15NOGt2Z5vS8rXXB1xVW5jZoVXeVy
	 IGLhZFhrGhInbhcWMeSdXn7XzpkIFZSAlP5sQ/K7NGnSZm8GXsuE3nHHiFngUaDBoY
	 QiugS6d67K+zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68425C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170645449641.8822.6528485336382421265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58872e2b3127a855b488a6be56a31b955d32164298aceed060bc38e118ba3af
Date: Sun, 28 Jan 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706454496
