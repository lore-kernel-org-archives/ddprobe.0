Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1306E335089
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769629434; cv=none; b=i4mLolftB6HqtB9QKrVARIcJfk5VXPUas2Lv/WxBN+KXlscndBQiHXiV7DakX+YDZ+UZhLWSwMSn9BDgJxQEYIByBMPRZ2pGIQeoBp2sIQMO1WW3gFMP4kBHQ722DBCGr9KqJoxc2gYXXLsDhyfZ1WXxBK2CehnaD7JG9HrZdFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769629434; c=relaxed/simple;
	bh=ivUpQiBBMTDG8NKZ0ahxtuNdkguv4K8L6UQQ+/LQDN4=;
	h=To:Subject:From:Message-Id:Date; b=h95fGrGs8gXEZPQSkYWClJJyhbszq/Qiv0uyhYa1PUkXGGbMXt7v6U4qwHO1k6s0tLsS8gohXkuuzjdAo/brUa13zcNVyagQtXbnS4nU0IvYKzGd4smgYSp40lMS42LLRBngbtIQReA+lJHmdsyP9PVUPaP1DDJRaOI6R9IRkXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVpyaJco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVpyaJco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5BDC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769629433;
	bh=ivUpQiBBMTDG8NKZ0ahxtuNdkguv4K8L6UQQ+/LQDN4=;
	h=To:Subject:From:Date:From;
	b=mVpyaJcoRoeHSOxOsQl6gxcCZQd/JguOejC9nJpMBuCWFOH2f2kHSBqHEe0YyunAj
	 HNUiwg93kzW0y1gFz6bRVSVIU2COcNw3hHYMtaIjFfpfwHPIV0paqJbhHSxE6yZlNb
	 vDqT7VEmCdorD9JiWMRd8Xqg/JY13MSocprh2voF+SSrHMZfABeztLfMtP4tvPF2Wg
	 btsgw3p7FTvDqUitDQXXTUEBArrRdh3Jz9BTObOj0tgy8eMxeAUG74j7xT6guW80op
	 SbXDbgYt9mkjHME2xGwaJ0C094bryaVOiwXAq2pBRa0a3ua+WwjPSuKDnePDHu1Zmm
	 VXWrY5FeO/GhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9691AD46BF6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962943360.10052.2506581893934396643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64a8adc01d340f2900a61224ef594ee8d60182f8756de18fb24b87d26fe99b7
Date: Wed, 28 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769629433
