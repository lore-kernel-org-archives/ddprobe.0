Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866CD3B776D
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789780834; cv=none; b=hti7wPLa9JKdLI1YP5nkSP0d3ZZGpsDNt7hIsHtU4eDFzbBkuvgsaQ6Sb6mk6KWNpTsZTigxDTpOr91jk1tdnYujixi2Sg4Lkiu8jYcfUBZE+eY0EedYeabWAvHFomMu1C+0K8U930A6YMD6pHC/IWEE8oaL0lEK/UV/0izDhsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789780834; c=relaxed/simple;
	bh=vCBqI2CDzr65xOo/36zptr8uHKVLt0MVilDSsISSebM=;
	h=To:Subject:From:Message-Id:Date; b=nNySvXtXAIB8YKVrN+0H42mFtsD/YZDBNa/3YBAiB1DVbRjoSC94jIsv7U3Wt5Ah/gCptBAsPdZ496kVPG443E095+AqteMhluuK/uD+XZboDxXLES/ROhy/H6ydoSZWVBQAKj0e6NLWiiXvsqIgVz8tf265B41S1ZQQ5W/fXck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtWxu9lq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtWxu9lq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD67C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789780833;
	bh=vCBqI2CDzr65xOo/36zptr8uHKVLt0MVilDSsISSebM=;
	h=To:Subject:From:Date:From;
	b=HtWxu9lq1L3xIYMei1pLpHsAb8QbtFpkm550ZBBWpJZ0nZkDywLs7vmGUqR4/U/b6
	 ZNFVgxoS5lQqu4MDDCveTgNs69FxeCwTSCFwOCxW8eeFuaaReP9MBI4OFDioxcb0cF
	 dLt6ktodL7TXj4NL+2LqpIZfp5K7T0vz9Ms3oEO8TSEYoqi5IC2Jix+SWNhmIjM2HX
	 Msc9c5TaeDy3+UvPyE/BISCcQ2x8IE1olUkUaqe9FzyetygB8JLoKmfJacyo+q5Ogu
	 9HVaLzwxTZ6/WJlB1ElpdofcAOowhKYX8dlgVEzilRVn/yWf/ap0OArlE/94osCaU4
	 BEzu5de53Hkzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B834BC982DE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978083374.27775.6862855020036247993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ccf2c5b16b464dc5a7537091da60e64400af237d248cc588d785f83ac583a2f
Date: Sat, 19 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789780833
