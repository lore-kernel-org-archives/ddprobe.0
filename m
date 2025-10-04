Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333271C8626
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759565994; cv=none; b=T5opvUI7Bdmz1lMX8+Sml1ZEi5QoVrTob1KOSufk/c1DM2G4hnicSlr7i263Z/nk6PPDi7TLkAZtaQGW83Evk94B2ZKrQyXQNzTv3Fg1PcJSfObgSyjyiahzr5qJ4aCsqFUvrMt1KzTxHkKxqdTzyi9PdY1nTPcjd+O4Fd3YnRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759565994; c=relaxed/simple;
	bh=kR4/BdQGOpOvBRgG+/xAV5uEceZfgXc5uuyQdQd19kw=;
	h=To:Subject:From:Message-Id:Date; b=Sju+LFAHQrXvXxIzXJy9CRCfB5edkqpQBE/DoSI+j/2pDl8dS87kunVQW9Pzuamw8fYPZDd7OfZWkTFagc3fDODPnpyL+o6Wl4DTa5kShDvXOyMk9AZbIywrtpTFxoW7WXVTknS5PgCrZYlgN5e5ZPiraCvJdE61x7QiJzDNW0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJx/hA0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJx/hA0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AF8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759565993;
	bh=kR4/BdQGOpOvBRgG+/xAV5uEceZfgXc5uuyQdQd19kw=;
	h=To:Subject:From:Date:From;
	b=NJx/hA0DhY163lPVi3l9fHj6FCiedvlnaKKTjZ98dUTTwiFrR4OhVNTAoTngVc0wO
	 dySL+oLLEOu140nxK8OMOpgZ3mCrQCvO7j1px252YLcKkHJcuoZD7TLpnSaKMlEqYx
	 Bo6hUY/SDV8P9VqUF3uAIGi7xA6pNIAe2Swz9qNGvRjnl8D/j1Zw0adP/arkPqFb6q
	 LODvJ/afcoiIVyRoZsyL/WCb2UebjrtCAEKpTtcmaCrEkZ9068MlqzYLI0/OleSclJ
	 QnXbZw0g8KncP2h1uVc63XTpF5IliMryYZlbOIoVmpevnVcNxt20WXri64GbvP1Mvg
	 mOIAiH1g3SK3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94274CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956599358.9714.7469179633439256378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613ffe887850e6ba9672fd35b39d2e3ca2b549e31ff0736548f2b52c6b98d75a
Date: Sat, 04 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759565993
