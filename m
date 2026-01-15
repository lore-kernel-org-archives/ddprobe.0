Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1C1361DA9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768478634; cv=none; b=Gk70+pVvQKgkTsYKy1IFxo7sYnJeeKYJrQjEiasRlbj3/pSO2zmrFpi7aoKpyDs49eYA1DFrf4JClYvApBUQBaJdimx1WExUjhaT0dSrM8BeKr3dlX3tQISeI9Cbs2DasAUJARHWcM9emgdBwWeys1Fj6WAnOLsRm1D7knW7MTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768478634; c=relaxed/simple;
	bh=2IS4TXnUt2d39dqz0+PS7w0Pk937zUWxnNzmV+xVvFc=;
	h=To:Subject:From:Message-Id:Date; b=ZQMXi2DHcRc+hoZwY39a27m4TmYZj5kirZCcy70tlXEVHuaU1OT4POkdB3ih745VnlE8zLUREahifuD5TKmevv4PDjZPmZZ7o8Z58nhK78M8Mm0BJz+Y/xL6MoQF1Sl47iArDt6zKro/0t1D3JZj25RbhmZRG0wB2umeKAjs058=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZNMpBKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZNMpBKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CE3C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768478633;
	bh=2IS4TXnUt2d39dqz0+PS7w0Pk937zUWxnNzmV+xVvFc=;
	h=To:Subject:From:Date:From;
	b=tZNMpBKg/nYWXsOGm63iZbYMaiWyEja8UmCyjMWgrPYd6L2t0wSI9fQWXFNKDG9th
	 f7nlAvEIqdA3Q4ZJusvYRNlbyc9wkQtpq9jTIbV1D9c7JxNnjT5KuZfbKdQp5DL11b
	 U/pVqBAL9qgME86FlBdbPC1odGJ6P0OmuVEgHpJXo2f0BoGEiEamN0EUD/KvoljZQP
	 4wSB4ZIEpzwt0KlJubsHh08rPtvqlQKcbIdxHgZx/wdzCEzbIE6mq/OG/ovTon6CXz
	 Mbvioo5fvwpeTrYwmJ8LcEeWwOiPXiIsu1v6bwWHex1kZ8If1RuJHnfQVJbAbsj/Dd
	 25zAZCE+RsLkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FECFD4117A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847863358.2806.15731557816770719518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1161938193957b5dc2b9da0b9beb0f88a3c6c72f7f2ae5e8ccf8cf87a8141213
Date: Thu, 15 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768478633
