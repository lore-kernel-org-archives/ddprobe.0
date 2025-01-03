Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BA11F9403
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735897554; cv=none; b=t4Ibi4idExp4ZtyQzBz6FrmzGyBTRXYbRt/Cbs/zQEZvmfKwrbfQBviL95fRumsAPhmAckJKv8l6Fr50N8XpWsF9npqUgt3krw6iXrdn4xtiEb4Rm3pq/wJTtQdeIFFDUPrw33Vvo4rcCQehZ1oGmrkdofiItshpnJFfkd2Yzoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735897554; c=relaxed/simple;
	bh=vz1saUAGu0NH/2LLPOQzqlrX9DGpqTI3qTq6kuKHZIc=;
	h=To:Subject:From:Message-Id:Date; b=ip9P+lt06zF3HhP9xwrp+sf+IoD8jIVKZCZlLyjoGUck2KjPdkHpqCXWpCqmwnAgosHdgRwb3IMzgjAGKvXLDKdnTWNuDJqxZQanat5N4YqFYQo4vH4FU5NMC0xE8ajUbkC5c700Nm8S1iZKKNvjyBcsiJer3Vy1g22zWhbvA4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q512uZOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q512uZOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85DBC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735897553;
	bh=vz1saUAGu0NH/2LLPOQzqlrX9DGpqTI3qTq6kuKHZIc=;
	h=To:Subject:From:Date:From;
	b=Q512uZOdixmQF5GO4FqdgVNA9nY+6wmd5zMiSA4CYqbdL42Hdiuvo7VacdvoXUfKd
	 QeFwRgQ6v8lZaWfxlXgXGs5+PAB8DHqlyhINeyoBxSuvm1yO+sxz4ILoDwFcx2372A
	 B4pN1/ZHMboghzo1+xMNiR4+YRclw8t3zdNbosyE+QjTD50T9buI3jMeLmsNBvyL8f
	 liN8kYW2Mq5qq0vXPsFGqsXTPRCN1IOYHjJJEKRXzp8WT79nIf+p4FqwubujkkYU77
	 4rw+PPM2g2SDjDE5LYkTgL7t6rGDsjtVpuKqTkDtrSIM7cAgGhN4a6xOSvyQJB2u9+
	 mzXhaOHSdyFpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9314DE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589755359.6180.5609605628657816044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8037ab896f79c91118dda00f2757a747c24147f2303e09de93a5d008f038344d
Date: Fri, 03 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735897553
