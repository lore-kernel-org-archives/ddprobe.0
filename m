Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E0A1624DF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773508494; cv=none; b=puYfTYJ8xLLOQTQvKFvUhnGN812olMdig38rssEaKcIo0htN6ttU+AxcFBidF5Hgpy5wyzG88vjU68+Uo/tsaJbBzVivZMjgghkCjvmren0aYUuMzmhCaYcBIvKQymbQex0g6v8L/Cok0dp+SNHfNjweg1WqXU59ZtbZUOPLMoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773508494; c=relaxed/simple;
	bh=ecSvzkiD5oCarPJo3tTjmVNU6+AX4IZUO7gyKROFiug=;
	h=To:Subject:From:Message-Id:Date; b=VlihqsNPvAQ5Nv6voDqYtkr+a5Tgw2kirJ+k5Thsas+EvkE/qoWBA1V2W1iRWSxe7V8fb3mKr8iukCiz+vYglBtzT9uJXtUjf0aSFpQVtpf5uA3LC0RVSRy/ztL6Y2LEo3CNZbUeUkJNN+FTpOzUN/4joCQ28M3Te0DST7VROl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTgCBgoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTgCBgoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A268DC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773508493;
	bh=ecSvzkiD5oCarPJo3tTjmVNU6+AX4IZUO7gyKROFiug=;
	h=To:Subject:From:Date:From;
	b=BTgCBgoYuCDvJtuwmM2lPHD07YfPiplbpyVoHjoXZ7sRCYsRHz1MyX1Z5PE0pP4pN
	 pQsThxP50Op8JmUDf+hbr5Ij0uqA//ANUkGrKXpefrT1Jkqmqr9DL57fiHtsb2wnXA
	 PJ2xWqZrTrI7ZO/xdYIqGaGSoO/RNGrig5rqv1VPTBeegt4VM8G5WITmihdGQmIkBz
	 k2t/dcyJWTIwmJFUZwjx2ceZ+Vo5sB6T8BwmdmUk58pRRKTI4e9Gf1UQz95Zzrli6H
	 kNuSSvrXFUfQhZoquS7wKDSDN1ZUtjU2qcgv8jtGTu7Njggvky/KuE/IvGq00vxvzu
	 q/ijC5I2usiNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE7F10706EA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350849358.3047.16148868491875287714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fee93098ad8b6254ba9fac88e9a09db5d1e4c4dbb7e93e81cf4bad428607119
Date: Sat, 14 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773508493
