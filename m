Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F03922D792
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789045834; cv=none; b=Bsii0memfofxh/dCFVTVN77Ygo4jwk7rrR9yeL60Krw3i0rmti6dcaoxGBluQPqMHi05bzm755kbQobKekY5z6sRY40gVTdu1YeaXW7RjnBs7zRB5i7mOwqH82zRJpRitQbdvxlEas+DQh3vAPNY19zYwNOGNHjJ4yKwGX9SrQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789045834; c=relaxed/simple;
	bh=xLH0ZQDOh3jVKbDPNXbKOwvyk1dgiSgCXeYeFoHzLh4=;
	h=To:Subject:From:Message-Id:Date; b=MiIp5nrv4qMhQrLM+6Q8UNPqXMHbP53P9CuZ3k1T1l99uHkeAc+/L0HvZubWkB+/K13IWIT3lWlc2NQ6ISso7Q9ihLiQnoxWTmA56rZT90cqCS7dt/94U+5HYn/LtRfd8FXkBHkYIE/t0pxEcFSmgbjbbOqapUK8yZKOLG2FBZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgL0YLwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgL0YLwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E83C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789045833;
	bh=xLH0ZQDOh3jVKbDPNXbKOwvyk1dgiSgCXeYeFoHzLh4=;
	h=To:Subject:From:Date:From;
	b=YgL0YLwTeNovNs6l1vF6lrQdFOh0tF6DIcmWwgC6wBSVSDuIb0flVsSFDiJ8w+Mq+
	 cgeQGHUhwiNrYzN8WiS1ZOPGAOm9qMSOsX9Tw49yWce0xkCaKkHRyDVg8NQQBHRWlD
	 mbX8qM4UMOye3AEj58PsIkCWA45KcGlyzOQpXnqJB/YTq1zGHMm9Lqu+2jvLRYdm1j
	 R2aEFx9ua6Aqyk7XlzsOKsj/qQPCG+TW/96dmOfRLuzfT2aasLMR56HvucI16hbdO0
	 yWJm6gPrvK+kyRrM4yR/Ht92KmFxb0Dkj3fCsi16ihc6TF4d9RueSIsYlbAEfoYrdG
	 NS0H9CJdikapw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B461CC79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904583372.21253.7870282943697057142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1fd21e0cb91e4c30f9a5ba1066ee4ec7d459bc2c52930f87e17929b0bee19a9
Date: Thu, 10 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789045833
