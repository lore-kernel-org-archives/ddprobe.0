Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FDB62288D5
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758235194; cv=none; b=oa/SRG/pi/TTkgiNKB7mEg5lDKftIG0mua6HhlWJJ03U+Oml2wSgjfCYEHKHi0SwxzNZLzddOReVakoCT1xS+D8ypde0ttSTgq+mKDBO7/gh0BGxMjuJgtOaJZq6CufjscgzvhhvFtGxDzxn+wumaOfCoyBg9EIi1KtF4U/vVvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758235194; c=relaxed/simple;
	bh=B+5txcIhtYjBCqPFgc2juENVudAanmL10cdhvkcz34c=;
	h=To:Subject:From:Message-Id:Date; b=hVgsfn3CBpmnkVC+eeid5GU6i1oQOZ+upnsCyUFDQwrdnJ+61+rV19m3nSVGaRKpR0X4jeyJFQiR+7z70pPBn1nGfgi1BaOxlmMb4TsCL2LkIJDAe0LJiBQhIxJ2ZyOK9pWThry1Wp+YtH9buaLwqMzvZtKb8votyMGlebhjtvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JS39WxRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JS39WxRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2778C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758235193;
	bh=B+5txcIhtYjBCqPFgc2juENVudAanmL10cdhvkcz34c=;
	h=To:Subject:From:Date:From;
	b=JS39WxRgIH1sZw3L70tg72X6eBNQq3zUxHthJYFW2kkJy/PnDhkD7hB3ghHPRvTvg
	 IgMVEC7ObMrRNNL/Qj2vY01o/yCVYON6npldNwTspPuNWZWRIG2uj9LbR4xniIW8lI
	 vS5RH8pLtr6EmcuLI2f/uknZREZGP17VDDpxCMiGhiJCrRItmJrmd+Sb87zq0/P0hu
	 QkTG0qRzpMOztiKVKmD+AJ93iPJZpuBPXTAChBmpvGz2/bOgLuSDvnxI3ALrId4WUR
	 kB9X2ttEX0ArZKFrZaSCrbqB8lWRjnK/s+c6Rs9DnEW0vZx3a9fkJmFvQr5DeHLxyv
	 rXnvEidjuiqmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9079ECAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823519358.11093.9743113884151141001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0a81f022d72ef9075858327aef1fa8c99b606d2779657ecbe86e4ea9872cd8
Date: Thu, 18 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758235193
