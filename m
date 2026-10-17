Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78953413796
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792219834; cv=none; b=iFuiJVORWyITKWC0J/L1T37U7eIDjATxJP/rkLFqiWzP/oPLoAK1bDc2CgOWBUn4CfRKvAirTKgip6QT1LN/NdiG8IBOwHLW1cDjErPxe8Fm1DIDxdyBqXWVW9J8dtQ9iwXVpao95006Mlke85glVvnv01pZBED4XVYbJ7DSfj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792219834; c=relaxed/simple;
	bh=hcoPhTaoCJH7T8xCEAMliwuDgwZd8vnt6gWMba/Rrk0=;
	h=To:Subject:From:Message-Id:Date; b=bGZzeYBBPS3tzBStX6zZN0oQgzf8wdVUBfwSV9Y1peOF5vTCQzjLmm/qtJN/5ObeFQRcQLLX8FKcsbk23GvX4XZw5WmixKGgYsjGyMGdnbNd92pUyEhyQ9Ph2WgXAQ21prkUXCmvKOw3kRNqCbguF3RzWm7stzwQOQD10FIzR3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5rwm0vs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5rwm0vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A00C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792219833;
	bh=hcoPhTaoCJH7T8xCEAMliwuDgwZd8vnt6gWMba/Rrk0=;
	h=To:Subject:From:Date:From;
	b=V5rwm0vs9gAhw3mB++tsq7g0ox1/iMeee4TS9tYXDLJTj/pgQUmZ0M+E+BLuTo6+b
	 2h7rLloJdXuJhyfh2ZwR3ahJNx+zhhnnDH/xqauPXFPpK5Sd6t8LiPYfm/HW2uWyR2
	 w1dPQraltY0d6ww5+8WW+znqGNkyXoC2mvE7r4PbxFP/vNenXsL23QK5vX+LtsseJ3
	 P8F8cSgQW1XW52sMasIXn6P+WC74/n7AJLoL1zd8TZIELbiJ1DOE/90PHkxyPp37jo
	 UGZVDNTtLDpLxnvOBf50sXc9oU0bzLtg+AVrZsxf3SRfNAQfAB9jk/oEnRWI30Pr9y
	 IdndvUGODnQyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA28CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221983369.9272.18414069632719598730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4bcd2a2eb9580b9447fa2b9bc030c54745283e83985fa7794eed1fd74ad52c2
Date: Sat, 17 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792219833
