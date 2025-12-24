Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205011A9FBA
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766618634; cv=none; b=EFQvOxgvtFxDlnRSPl5mwu9F0Kn8+N1tdYZKo81aknl6CnpJ9fe+Uhx42421+7DPwmLRySXSrb7/L4XjKJbTrKc2eXtCbpUncOox2LFhkmjp8Ky7am8NYoak7aHQrVlX6h7Zh0DETmOubUWjSsowwbSOEcRSB9cSc2UlAwTy+EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766618634; c=relaxed/simple;
	bh=kbebvXvpMkUpjn7tMPdgtf1dn6dxqV2/T4x/5zbjan0=;
	h=To:Subject:From:Message-Id:Date; b=WgOqU863eI9tgcFDyRLN/8dbREWCKRCM4BoA1Xi+vO4w7WD1VJyxw/54j/kGi/82bPGgdkPZTLpDtuQv2Rwp7IXALCSDYgaZO1AatsgbyrULRE4DAhrELgzK82NoNx9UwnaXauzmIv8SzJzrJTQeElOM42uDaQFvLQPjcUrNBL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5b2vVH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5b2vVH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74CAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766618633;
	bh=kbebvXvpMkUpjn7tMPdgtf1dn6dxqV2/T4x/5zbjan0=;
	h=To:Subject:From:Date:From;
	b=P5b2vVH/Xu806rb7b68JeUK5gXk4URlorqmheWreMFJ4I6p1dfljOszweBlt0WanI
	 vINHd2YrlQi1hQXRohR7LXswv3fD0KrxFI/BCnKQEubnnMd+kuM04RFxpl8w3eyHOI
	 8RGSV+UMKBYdbg71bDGDAZwppDBm8fOmx1Kg/RPElMG2iK7OY9SfCcJiOm/A3/nAsk
	 OH8z18uhqezp8It3kaRLjSH0Xe0wixRVpJcLrcGcE2R8xVtvPESP3RRsXIapqAiQCJ
	 nh5PB2A02zGbmg/tIboy+LuFe2Kbjzeh73Oi6K7tTu3zGYrMNPdsA2y0WZ5RZN9Gt8
	 p+zhb+vYgaaAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9500CE7849C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661863357.931.12487410383353500239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6025d17b132c1f13197b65dd5e082c48fe51097ded04c675a1593f5afbc45697
Date: Wed, 24 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766618633
