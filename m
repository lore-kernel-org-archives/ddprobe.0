Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF4A369985
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787797234; cv=none; b=VSfyf6Xnwtp49NMkGCb9chYgjxdI0xey/zb6tWjKsFRpwynkIGt0Gc59phCAruh9/99/FfY+0Bbj2XX1Xpw30fksbttJkGqX/xyI1K6+LJ59jxTvAKnQzKF0z4O6wlsyfhWFN1IST6ReKEesdos4qjQHYgNi34pXWegWG40fF5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787797234; c=relaxed/simple;
	bh=88rhKkmzZak2pJHuY4p/Njsx3dnQzHwksmHSKcjJiEE=;
	h=To:Subject:From:Message-Id:Date; b=pmViRlHLuS9AMX3bidkBImFDmVstQiKMYhkOl9150AYK/NPuYaJ2Zu3uKKRMPZHI2zyYOgROGtYmNEeZZHICkJnz3ijLHNY3hMxTNpey03snP/03SX5jEnfWr3DpDmjwwlTyR81rtVmDrc7CBUUrj6Tn6DY/J9lMDbSFz2V4toQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kx5V6tYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kx5V6tYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A9CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787797233;
	bh=88rhKkmzZak2pJHuY4p/Njsx3dnQzHwksmHSKcjJiEE=;
	h=To:Subject:From:Date:From;
	b=kx5V6tYnms72+/HnEFa4UrCgEQW6R8JVLG71wcuJ6WunqjMIDXo14JX9Oq1BEu/8Z
	 AS/pnU21LMo8ZNRFwssFdr39c5nqJHkuLpWpp5++IvhEdn7Z7F7TWtFp7b3JOMjbSS
	 9DRK/xH96RVD/dY1UXKHQym/QvOxC9FhuvdJBS3gKAi4PLVtJdKZsMqMYVrNWVCukM
	 IcbZpTF7YyvEzV+zckloAv3Hx/9bUMWAxdOX1ZzSWsWVcqD04pEQfhHsANuiWfMBgJ
	 sVDWlTwCj91/48HAO1RoTnPIroSzOqj42TJc2umShhoE86pDkgbJLQgwL4pKBC3NDZ
	 dYMRqNYSa6Hhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC018C61DC6
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779723369.12941.6741701994934958940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b655d1da8834ef79f6aa9afae8227397e659c058a8889a7c1f51f4c59459c77a
Date: Thu, 27 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787797233
