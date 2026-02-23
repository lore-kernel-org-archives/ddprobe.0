Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF6F2248B4
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771842894; cv=none; b=QeeeDh4NdX2eMy/SZUv1Iwhgk6oBom95ECmDPvFntRxYSU02Hf1GBO1O3vrRSekysOquo7KDTw9F8zctkZUNqJQVNWFjUGMpa+D2r516WJZEuPBGU8gRzQC4QBV09Rw2u2NXRtG//xN2Bjim8IMSw7dpkK4W4hOy1LqlQqLS8Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771842894; c=relaxed/simple;
	bh=VD+7Mw31uR9VscibIeN0PLle1Kiuaz4TKxYR3qkp9Q0=;
	h=To:Subject:From:Message-Id:Date; b=LLvE1v/PN23z+aSs9VkP1Sb1zWwEdo6Ra9C6/4AGS8NWma8XVGnjzm70aGBOIeGGCtFnt3lCHlY017/31NNUdLN+U1Sv+rm2BP6biX6F23oO8U7fM9IlK5kLukp0U5hcW+A0Y0LEvp43ri7rhZoMxJ5NJ6IPu7X64z9AyKvCoVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwgAuPtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwgAuPtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38D6C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771842893;
	bh=VD+7Mw31uR9VscibIeN0PLle1Kiuaz4TKxYR3qkp9Q0=;
	h=To:Subject:From:Date:From;
	b=AwgAuPtHvC0aqwj8yVmD09ch7Vh/5ou+WfYS5FxGSz6pfdvvcPh4MaQVuVeUPSzsr
	 b0JVj4NQ1rBdPfbf+UUpaZRkQcRII6a8jd0YQ3I/Ra+aOLLAINbArqZ79kwK1wP1T9
	 up2+YrKYsdFZ4N8tUNvxOo61hZsAp2HLaLp5AL5Kqb/gRfA99TOE6G9/cHKIrTOmfu
	 OclBG0D4TxAv6Lxbij/mspo2C0I//YKaGQKiRp4+u427c62AuKsWo7pz+jiF24iCYG
	 yzsVHdMF5gmxYA9a8vdTeBXPv4Ji4Zaxgb04eST1lDEn/p3jVikYDUe+C5vs3PkkxR
	 B9kLK+8/04dcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90845E63C8B
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184289358.6692.17640630881568269131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c30b6dcb541a3b5f7ff4c549fe119e14a8794bbdff96ee47ac3c7254921833cd
Date: Mon, 23 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771842893
