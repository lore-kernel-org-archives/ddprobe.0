Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AF83242AC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773347093; cv=none; b=f/sdcus0ngcmGvH+YNLZQNm+MWmbiGEzqPgAx7qYW7LkVMyVJlASoyOwARqAjeoPZru+ebM+exPKobIFfB1stEbUNNIQuJUnM/LWziFXTQBQ9JqpYliaD0nNxSl/nqAdqBZV66WU3czHxzq0agbGcwrsehs+81sC2i/VIpJpuqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773347093; c=relaxed/simple;
	bh=JNVHSF9uUewbS9ECyUScDKIEuLJkFDzyXnoFTTwwaUc=;
	h=To:Subject:From:Message-Id:Date; b=RJIG4FUUFOoa9z5hARKc8x3QkdXKn7nfMOA6Q//MLcvqIv/ORDlmVlz+qkULk67it6Weoax4G7Q8K3Jk+wtH+1o28XfskxLrHwB4yHAYSncDVV/Ub3imqOviwjanWmhu9BJWQPwIxP06HLOn76G8pp4/9nFaJPSKt+wUc4UNiz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYWrono9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYWrono9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D27C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773347093;
	bh=JNVHSF9uUewbS9ECyUScDKIEuLJkFDzyXnoFTTwwaUc=;
	h=To:Subject:From:Date:From;
	b=bYWrono9yVmfruH0Ak06BRLEOU+wDAI9LUbLUbppZoUpALnvUNurkCnY2TFhJInds
	 esu19Y2jybYCAGpY02KwpVA4gfP7l0AFhPyvzrppivz+4mBcn19dutwGHY2RWQlag5
	 z+sFjFiWT0rHaa2Bt6qblxAChMDlyMyEUPQdsMUHfkEBjiW9g6iJcgiykFy2pv0NuH
	 lEKM12NQ+yx/MHlP4QoA/MGy9CZYxcsQD6HKRuTFExKE3A7AY5DXOT1mXSsGR4AOZk
	 TvygKBIApyd6aLPxLPArpL+EAycKhMrlvtpUhF51OlX32zIXzIuISg2Wa2uhLPXG2p
	 2tyLcEFQbq1FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9275D106ACE4
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334709359.20355.5911277467959642485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4906bc8e4d73b6e62dc0e791719a110a77530e69fef36af5caa42c6d4b2fe0
Date: Thu, 12 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773347093
