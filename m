Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4686E153BD9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747544994; cv=none; b=Txmwn9StotXRvuLi6+SLQc+EwviV+snkuNmftPe9ll/bTLjboEoc+Ht+ib7ddHB8pe/ItbDyzgp5i/aD5lgiB75NQb9YfW0RCNVokEbItc26x+13WYMH7AGUveP/7mAWP1ZIowhWaiY2g25EQREQpOhyhVqAgN07IfgisupZtuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747544994; c=relaxed/simple;
	bh=5eH9scWUJngwYEjREolslzlNZSpX/s1b1PLK1Yn9cPI=;
	h=To:Subject:From:Message-Id:Date; b=qdBcCkij1YYq58et/WNeyJUefrOentQF/HydmED+soVFQOw/DvF9pfu67pQIc/+z75RRPC5eGUNMzZoSw6vPe9rph9jyak4hn1m1c3StPi9j7qCONJaJ04GslybTkUuR1Zyi+a5CsR7ZeGQE4LN9H2j90vGHtO2VB0mQVJPnBJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUIain3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUIain3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC3CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747544993;
	bh=5eH9scWUJngwYEjREolslzlNZSpX/s1b1PLK1Yn9cPI=;
	h=To:Subject:From:Date:From;
	b=eUIain3cabUFHxYMEny8ge1Mt9rgzPzEKydsTeS2EJVNBwGSdKdn01uko6nfCum7X
	 D2n2NGNELeLAPIw1VT/Ibz6nRTBkD2HL/mxjtN2gEBVBo71dNyPwuRF2tOVPOgw+Nl
	 9Wf3Nr05YtB/ir9uUIBuaYDcgmKqGEA9blrtTm9ov1RqPZCPkRpaLiXKtXsBckyzt5
	 /lg0/rwl/8kcoRmTCe+1w1OOzroYzIda19jZiUMK1DtqWmjVIjDCEiRFgbsKl8PaZb
	 XMl2AfHhXqj2tUsIKlP4sgAIGgjbiB8LUgkRGWoy3vXY5mSwJp7eyAbDx61JchBq15
	 tPlC7lyvKVo2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD2C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754499357.3102.12574716342444831647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5971530840d492236ff0ea09a017b3658b462c7056751759be51d8fd05b6b8
Date: Sun, 18 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747544993
