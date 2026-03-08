Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0C527F195
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773009894; cv=none; b=QQPL4CpUAUMs2ddiMvMOpGyaB2pmp7W2DPS5ZpWTCcsEbMYfZRef3Nu/4J6bPdzbytH8FDNSWMZOVFuDiksIpaZ7h5XLwZXqSE/il3GuveX2rUY4L3wqtcbs43cDxuwppNr/FRjy39NRhGX4VGt1jz8QddIPVk5O4CoJofKueAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773009894; c=relaxed/simple;
	bh=96C3bN9qjmYsaNFQRfQ76E9xH/s6JllyGUFBYcbTHos=;
	h=To:Subject:From:Message-Id:Date; b=qWgnt4CA6JTAZkkPj4eMHdT3JZEH9oQhdbhTQthSY938Fe6BlSCdF1BRxjhXg0BTIcGPH9p3I5rvKTlIp4Jzq1oRQOXEMLxIOg/BBBXlKZxs9Rg4D9iJlvcBypFyOGAxm2ey6EMAFCgo4TBLn4w+B3U9eAocL/BapanARyLBR6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8QL1saX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8QL1saX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2F9C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773009893;
	bh=96C3bN9qjmYsaNFQRfQ76E9xH/s6JllyGUFBYcbTHos=;
	h=To:Subject:From:Date:From;
	b=i8QL1saXP0HGMRA3XmXvUvt/ydiHxaSseE1RiuoJn3pcGYn5VjQ9TxKNx0pVucQi8
	 DnRX5eHKJXEArtlNNRrbJs905S27Hz6tls36/hKnJhOmx0CxIGZOZbUGDRhI0gXSiH
	 pM5rzCGQQ6q8YU/q6prJhjB3ZPsBYZurdzpogfh1sg8pMcm00TUpNkj+JsuWdFue3s
	 lMjxzNyz97v90xLGxC5EcL2d2wBcV9pJouY7EMKFBxn1LWQKD9cGnWbKePosnQlZMQ
	 eaIkf+ff7hUyfKYaoeV8eHLoamzODTlupw20GRRK1YsyEDJCwy53TZ5HTlZ6f8FqDs
	 Nh2lrFBUzjaNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983B7EA8549
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300989359.8271.5672446757838895103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc55e9da22ac149dcf2f305a07ac69ba7d3e96af133e721b8a54d51f21cbbe4a
Date: Sun, 08 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773009893
