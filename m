Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357B32EF67A
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761562794; cv=none; b=iDIA2ePESOPHCpO/WYWuHKFfjtf3PfnODwva+Lbujpq3AAM6WtNbSnHAdQbEqZ44JAY56Sqzwtm/RlW4ZwNTW3hOm5iNSN8GpZKX6MAZXto4Q348p3e3EQvjWDplp0D+UQrhXbieWfdoY8U4RxB/XB9dULPmJViiMfUrddqs2gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761562794; c=relaxed/simple;
	bh=UP0GjRKH2Cu11IjUUbfi21jRZ8qA4uBFiHxmmw8kKcM=;
	h=To:Subject:From:Message-Id:Date; b=C0wDzYEM9xxWLz2vxUkx7SICBsgilBHCJp05h/v5PC3KzfmfJy0/rpnR1sbk2qaCzwnfivIFHVgdHhrHfm8igGQDltpWtBR9rCIl7Ir7vT+f8HDfLVJTj8E21V25k1sYY/sLCfciWMqplk9Xs7MTucMECamxcYbYauCjoyajfTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4S2cWzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4S2cWzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2838C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761562793;
	bh=UP0GjRKH2Cu11IjUUbfi21jRZ8qA4uBFiHxmmw8kKcM=;
	h=To:Subject:From:Date:From;
	b=f4S2cWzjlEIf502W5g2rKgkBmyWehDBjZ7vHRF1LyOd11mxltXpKwy/Vpcov9hwmy
	 5kf4od926ogIhxmruFw4+adbNBANlG4jSn0nd2SDfmO9zq6i5lPKv3kdfakdk8iqWH
	 kaSVSaL3MYj2mLDJ4k76qzC2OgHB1rKiYL2A93MM2HxH8JY+Ks/+PPUtsH+Dgq1Xmk
	 QBffwgwQiOq9NiHTFRDoY9sBcTf6fGRiEpNbC1KOjTbGYon5Cz8Wt+VaDSP6RRxdDi
	 eTdbSPjOvwT9iKxd8EGyEflHtDsVskQzEtwLluu4Jb4RQ7IByXyzDUS/7hXzBTDaZY
	 xM1QimG2Iegcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90317CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156279358.19762.11173761306498517048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4a7e664f382421a536d5a369439a57c8a5f4b7caa4889031826aaafdd4afba
Date: Mon, 27 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761562793
