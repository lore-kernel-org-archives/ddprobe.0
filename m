Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEFE7274B59
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769914434; cv=none; b=Yo69kY9m8gUiEJKypyAnphnSf5aNPABoQGgiVBrK4GRU3tedv2q1gIKmrHhkIVrowu4IQ85TVN9QoZsfNBqZYXDVMTXIhifoPgwOOX1NCoxs2Oc5bVtcJn529x+z7nxtdgepSvkzldyBJonbGspYiG2DncQx71H5YmtJUV316Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769914434; c=relaxed/simple;
	bh=TRHh0T7Ug5uAzLFU8iEG/7zBNOQ//TcpDSpS07ZtMuw=;
	h=To:Subject:From:Message-Id:Date; b=QAegz5jZFIBH+bwQiVJkdSW2JaqPwAK/M4i9l3Q2mDm/CyuxiWWc/Id2guTT1ryrdZxYEpRh9FOwWnDH9GagyXJQg+/OlcZW7swTwRuQK/4puTHJaXY/alojXxxjy1F/h04vpLNOKquIhV14cCU83P6CLIGPatpZht8Es7fs+TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqg18nfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqg18nfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E12C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769914433;
	bh=TRHh0T7Ug5uAzLFU8iEG/7zBNOQ//TcpDSpS07ZtMuw=;
	h=To:Subject:From:Date:From;
	b=pqg18nfxLwl6eToB/WiheQu9xVJoFQjI63L1T0+dOElh/h3pEgbCZj7q3IHQ0pnAV
	 6qHzmCLzELdI6GZthlBYfiz2BGZe4FoqyCO2RJFyBT2/OgdookXG2/kgHZ2CmkLQ2W
	 BEe5f+3hyDVwt3kGSUdoh9H8btY6k9LBeq4vukvNIOugqTL206r4JFUX2fOaDn3y7P
	 ndRVql++VRGnRGmNBp5wZr2TjQXyFbR5LzAFPnypJmehLmzV+3KsVrdTAF2bjONLaI
	 LWLtaIlQr8aMFlcQFasiGzN+S5Trf+bT9b7adL5kNsVwx3rimKkBn/JXke9cmZ6w5s
	 TKSHfPkbgo0zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90196E7C6E3
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991443358.19620.14567300419415484078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b783d1acac7d8f9f9f7b569c41673deb97d38c3d1d127ce325ccbbf8feac5a43
Date: Sun, 01 Feb 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769914433
