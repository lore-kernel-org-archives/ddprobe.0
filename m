Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484222907
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744485594; cv=none; b=TEFsOQGjflw18KGOuh/ZETXr/92KoTnfd/5jCWsSl8suYA9mx5oP0iG2G8H8r4VCU84hTxJ1tvcCbQoFidCGA8O5CZCTIfEm37ibh14DneQpyCjOnWrUENQcxxhjzTRV4IeC8xHA0E/0yIfWZRtixRoS2FYKYeRG0SfoVkhhvE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744485594; c=relaxed/simple;
	bh=xoO39WaF7EOwMM9mxmuRfYOyXmbkcm9+t5dqlhpBh5M=;
	h=To:Subject:From:Message-Id:Date; b=Xo0uBF/ZkKO9VRQL9lvvwiVLjd/O68oXxFk2j61Uzwg+kWA1XC0FVlubn+Ewl0vny+Pv6+/7wVEGq13UpIH7fYlbB/nOdeCsFM62iqtxrLs7p/xaIr6EUejnS2npe59ffHYTnskUOIdkguH4TRKYNdSrCHDc7m/UdMKAUO0fOXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6lPpeD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6lPpeD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2330C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744485593;
	bh=xoO39WaF7EOwMM9mxmuRfYOyXmbkcm9+t5dqlhpBh5M=;
	h=To:Subject:From:Date:From;
	b=O6lPpeD0v3CGZy8TbC9MxaxccXZ0GjrV87igwfRs4SIG/lEdSX8LFhXN88t76lGnq
	 zXcoRWz13LJJtk5u9KWiA3c+9ySuo0Co/K7zxln/x4o+4vumG93mccQlA2Q9d+27WW
	 9Hu+kIEnfVRITNcpyV/2gW7gwGlbbvrnHS3SV05lKQl0TXmnS4Xxb9iKV5dGStZ1C4
	 68xKoUJw0wW6ihOpbjJ8kkQvEtfmfq+2COK9SNEKjdf5AchQQOgSOmK11lBGCITzfe
	 AHKm7sR8YPk/2mmtSltINOWMyuy/FNzrGWwHiVU6MkfoUvTHLpExGJut9/nYXjZvHB
	 8I3Xa+ViSH4Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9850CC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448559361.2175.8737708595567332089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b914d2173af6766e26034836ff450ff263a685121542f982573e2de8a2845d08
Date: Sat, 12 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744485593
