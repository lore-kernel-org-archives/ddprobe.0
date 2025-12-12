Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20881169AD2
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765535574; cv=none; b=Lsag4YKtEIIujImse6O0/7AuW2rtT2Mh8RxvXYVcSgsTofX/8cO+kIUQvlYLkJia8drgm3tVJBlgqKdLlhrgBYdHgRYSoUOzlGM/vOZADQuPfJVh4K97j7ku4CS+QtV2xy0VK7oAuxIVs5iZoVAf1utQgBd2crf/R6+RY8i/FLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765535574; c=relaxed/simple;
	bh=fKgb1bQB1FXkx5W77paps8Lt7tI+9Urey4/KG3NBSPQ=;
	h=To:Subject:From:Message-Id:Date; b=mduvwFFdHULqgj8BNWEm3uNCKkKX0jofnbFYre+gscGfDahWDd1/PcdY3V4+OEKrj0wrolgSdSrCskijNipa/HOL7y3Z/YpiRovZubLR29wSr8ApsSyCW5pTrM1SaO3w5K9ujfZibGSCtLMDkJ7Sd1W7kgqQqiYnG7e9GQHFuxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrGfpUyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrGfpUyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DADC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765535573;
	bh=fKgb1bQB1FXkx5W77paps8Lt7tI+9Urey4/KG3NBSPQ=;
	h=To:Subject:From:Date:From;
	b=JrGfpUyj3QMDuJoGMukb4xRjL+Bu+LOm1ZZ+cr+12w1juxGSNNjUlxB1QUt48bWpH
	 hu0uQJe9tmfBiDoW8RmBffYDx17qqWIYQESbIJR45zJ5cxdAxvM04LZsHuCWu+yS7g
	 2yCIaXNLO63JtzuLe+8NOVNlw8kihxXbPSYuKctdS2fD85Nik1VbCttiERJVaH662D
	 MR9wsy4fcD/J40IrOrJ8IHdqmj3YxpTrS9AmJy8DDvbBr8OXCY5PFghKgGqqY1uZ38
	 IHT8Pi6hGOr8gmRxP8/4/7gaeijvkYKwveqiTSGHtSQpk85D97Az6xW2Mm6O5B5plv
	 ssUvoCnRPHVHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C7D44174
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553557358.31965.2545857871821573742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d6a5ec4ce79d95c2da92f6456e758a87453916ef257c622dd8aa4ff4afa2ac
Date: Fri, 12 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765535573
