Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27743126C17
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750903795; cv=none; b=F3zVNiZUvfA99UA+n6WXpMj9HA7AVfwLM9c61B95RLITtc/OVIwt3o2DQnohbY4bIcOwqeBUo2wVtXqCgLED+xS9EdIB5frcLA7dHBVCrZxeuMQyWkUIVMvoAh006i4IzMm1pHWv9p6NOWTSVPjB2eqIiJJzQHN+Q31YT7vWHpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750903795; c=relaxed/simple;
	bh=BIpLcLTqSj3sD2N5lU/XPTKSDCCSlEuZEiayJZvCN3Y=;
	h=To:Subject:From:Message-Id:Date; b=aTXlktcN33IpYNZ2JIBkue+jqC34scDXdii3xGuaLnD4mdasBfRSBKm92+mBwBEmBlJS5xJYWeeHqAE1mgFZzSIQ9YzPAcmufgBdJ0wEjwCF7xSWm9YPqL5IA5kpBC4UpV7qisFP9QUe7NDAgkQ9Oo0x/lCW2IWYfhVvFadZ0c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+HdHLmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+HdHLmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6954C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750903793;
	bh=BIpLcLTqSj3sD2N5lU/XPTKSDCCSlEuZEiayJZvCN3Y=;
	h=To:Subject:From:Date:From;
	b=f+HdHLmMI5wiQONEuWrZd/5nIpKsyFXE8vfh1aq6fyrqztCq44SnwEv05BotIB4G1
	 61zfKiTrwcCX4Ua9O8h/g4Lf3iN0m0nOsB9DSJn42UwSq44Vr360prSHC2S3RxXTxZ
	 JxVaGhZG7wNGKZRlu3BfwCKq42TayenUZhb81zV+TqjyCzh6aFkudwBg/dcQP0jgYg
	 7a4E18htDsIiWVOGJu3KzwcrFE+pRzrR0AX79X3Rt95w8zWg7azKgFMiza+jIVG7W6
	 0Oo/dyiFLRA2K0ov3HikJ5DBUMaOWXACY8GwjaauSTaJkzqmzRVvje/AgZdG/IesHZ
	 tITBlbtwNRKcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B1BC7EE2A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090379358.16738.12821947218208402931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b7987ec77c9935c7865d468d750fbffc350597aa02d53da43e132f859fc7d95
Date: Thu, 26 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750903793
