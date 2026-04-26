Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25012271456
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777193254; cv=none; b=NImw2rC63a9P5QXqnU2tttIWu6yYtQAd1cVMBQ36hqHQXavF8trDUrlM0qtLfu+r8SJsPXVwsD/8h4LddOn4/J7/ZAqOcNbqL7eQBuDu3os7x4Gj76AgBO/lBmGapkc6v3J5QjyPGYsvFjHLhQXIImYc01m7Yfgbzl0nXOlktwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777193254; c=relaxed/simple;
	bh=Nzky5Ee2E3pAGsFqBPK6N5XT0FFL+fED4rZ1wTSzDGs=;
	h=To:Subject:From:Message-Id:Date; b=hbmANFNahGjA8/6+E5ugg0LCl4NRlbp7WG+fxMnYXCR/n+wsPuDJ1ug74ZzAuS+12eFIRKGG7/EabJApz+tBowILg5dn1hIp/i7B+ZEf8sJRjDLMht1he7Cu3Q1xXUyZb+JHgc1Wc+pSVP1OyKlaNab1/htUMB1N1iTrKr/TXmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuVgZ9Eb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuVgZ9Eb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE781C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777193253;
	bh=Nzky5Ee2E3pAGsFqBPK6N5XT0FFL+fED4rZ1wTSzDGs=;
	h=To:Subject:From:Date:From;
	b=kuVgZ9EbtNd6+x3QGdn7bEaoygzAkDDGdz8VV6Juoqack13tKTVeyAzQJwujMyBAY
	 yEPIBZ9qmMuzZfNqZn2yBWPWE5IGBI7uvy1YW9nyeabU1tNifu7JnBTbO2YaRt3ei2
	 4kS4jgxQUqgmVjfHiEQpiQnnwPcrK/ABGglD6u6Okek1IFLbIzvJkwvHnoYK/TU9fR
	 3XzLI4YQn/KYdoTO8mxkIUdxuMdktl7QtwpzovmnCYFIg16dHAUQsSYazzwFuP4taI
	 wf41lZz541mcoaWonMzRrlplt1QThj5KrIeJYy3v8fRcEQRUKK8VaUo9/5LiDURgLM
	 36nL8LGMrrQIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEF0FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719325368.8726.1960417848304797768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2295b2046c59f3a22fac0ca5a4ac09e2edc6192ed761db3056bcc3ba95cb01d0
Date: Sun, 26 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777193253
