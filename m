Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B75136A
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 16:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739119555; cv=none; b=hzrJnYFc38uuPo21O24N2Bq4rgQI5htB9XvfpbFHtHLoHUICKh0D5110PUEyUTpow/E2mP6yuSyeemltr4cgSB6NtDuySIapNtxjcb52D/pPDQD5fEbytThf4E0qIqEiao35n1ROoGgQBBecTP+bqGiBjdKQr/O110Vot/rvc0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739119555; c=relaxed/simple;
	bh=EMbFmvLcm9kBa2snF5dprwPXUz4XmgyNl69L3Ij2HD0=;
	h=To:Subject:From:Message-Id:Date; b=gU9NNBbLSwlx9ffLUgHLMkPVQIkBAR802599bc7hmV34wn7tXmzcbn8NFhY9fFlVeJtLZurh8a86px7RSi1pHBacbiXYZAwkj9xUvW6tgIxxlGbFdAenIfmCh9sfZfRrSo6Rx+KYFwFWPYaN/c+pAW+nhNufe+EeUczbNpvMlf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukufT1/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukufT1/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3EDC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739119553;
	bh=EMbFmvLcm9kBa2snF5dprwPXUz4XmgyNl69L3Ij2HD0=;
	h=To:Subject:From:Date:From;
	b=ukufT1/tXZu4hztaMG3sX6yrc72XPIsaL+doptIW2z4oCut8ur5fQ+zyBdgLtNLsx
	 PiAy8ttlG1/AHzX48iUpOYZpMImDTX7wyJHx6aksL2K+Gjk3AlmBUaxrlwhLE2mO35
	 C3arJU1uI8Kd3tZE2qBAsIJMOmGmjJiPXYbh06apzd+zbS3liF0GxNowg/P64blE7o
	 xpCR2PYd06+sd9NNg6h20t1m8TC5WPOp7Zws2VDUPlZUt/ioMEOFmR270d2ZeD9tiv
	 YDzWXvgCZaUfnMUUby1/tpvUqjWunzxjRNsmOUSOupxt731YqVYWarL3NmuYJU9IOY
	 tswjnSP8x8/lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D8EC02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173911955370.11934.16826871884199276592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dfd12a341176cc4b6cec56d7b60d8ec656623d221160305b633f4051fb27df5
Date: Sun, 09 Feb 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739119553
