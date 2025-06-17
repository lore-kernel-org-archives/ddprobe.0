Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2949A28CF7B
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750189194; cv=none; b=klhJ6lpx0MID7S8DLvt16AbLzYOgirl+d5ig+pB6CpIWCcL8ojhOzR2k/b1t69hawhUk9az+haWjR+iG4sn783HQcBeQjLJtgKEIwFMm+bQ3cEFUUj+SGkHPWwJut7SSuAkYX7EJ89879qFxeLZhgZ1IqaFJJapQ4WhMpQnx6Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750189194; c=relaxed/simple;
	bh=iv9s6VcwwmPhwnDrx/PT3LUnsHoaV0CcgJ1lH7Thrrw=;
	h=To:Subject:From:Message-Id:Date; b=V88hu/B8z9JmiwRddPG6kg/rM3an9zYw2ZY0OvfjPtxX/O48NIZ7HzIOHdyv0E3SX0CL8Np/Q1Skj2bvgflR1WbY+rzdgEdrFBDh+mAuEcSHd+XtSWu/yaCVkMwNR22qOQXPSl5WoA35fLP/EuYQUXdZO/d5JHh/3sfes6bI2JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8ml3bhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8ml3bhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E36CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750189193;
	bh=iv9s6VcwwmPhwnDrx/PT3LUnsHoaV0CcgJ1lH7Thrrw=;
	h=To:Subject:From:Date:From;
	b=e8ml3bhw8eZihpyUEalAwCyNGgS7YLwWnqKM4ot4QMeaCwKCaPnxIpkM08EQTYlsN
	 BoClcmbS98MQiHlzMLj3Jda8iZKrSyGH8AGsTe+K1ZTsnX7RWBteHK0U88FVCwhm/q
	 +Pj+xub3gH2jYmW5rEkplOEbsvxnrLNtlEQ08Pmnj/k8NVWqquQTkyiecQyfnLsEur
	 Bc52SJUh3eDYMtstaZ5vtpX4OqrswzO6Am7JnPPZgUn1bjNS3TxwLASQdBAiCXVuI0
	 YlEyfr5F5/QgParZqvUHm1zc6aijByyJXeN6o8rX+DycndF3beK7BlSoQxSaSxBqsZ
	 HPpKwyF8QyY2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75CC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018919357.6960.15287387419009520222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2574a5040e5be777ece81c51ccddc4a6cae0b271e167806d3d361df70581a5
Date: Tue, 17 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750189193
