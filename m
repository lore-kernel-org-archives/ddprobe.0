Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42ABD126F0A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767439434; cv=none; b=Yzs/BiQheHGRYcbWDksIRxOSrbrYOaOG8WD2qGMhMlZgqu3B+P/EirGex/O+c013DJStjyrqzt+qI3ctUGemRJBpMpFgSfnnONnwd05Rfqhx4RRzOxNoBlHynBTuRfK5EFdS6R9H/RlDaFyBirPN8wOUkjLW3J8QwtIT+Dz55j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767439434; c=relaxed/simple;
	bh=unMd/TYfNHYLrx+pFxcY9ZpNESl+lpYKJUiKw2AJJAo=;
	h=To:Subject:From:Message-Id:Date; b=f8bgHVnb9vPZoPuDMyLxIHPzUXGBAYNGJtJH/WkFuYImDdDTxt3rn9a4d/WxQHwu4aWm1u/RtXrozB5fDH4DKzyU4jYPCS6Iuh5Y+KNBoljrqNxNk6CEyRfpCEWU6EmsypXTK1VljQvZBuZoyNDnG9ZVZ0B1oVFObeX+X+Vfd24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJgsIbzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJgsIbzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5851C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767439433;
	bh=unMd/TYfNHYLrx+pFxcY9ZpNESl+lpYKJUiKw2AJJAo=;
	h=To:Subject:From:Date:From;
	b=dJgsIbzANR56h4YNMJL+A3TJCx9+wzigniIur3/vnoAUg8XD35DitMqNiIG5Sl39p
	 tVpngkW4A5pyw/5CeSNmwp1+sWbT/7g7xp/HVdtStGrQloGR9SMICKLCC1f5jBtQx8
	 d3LQcgAlaKyL4c7/pkvmpTm/xXnPNY3KQHyck+IqxVtsIwf/GHgHgMxGDGURqXvGaz
	 W9yKTz1d8QwjFeAQ+oJXTvWO5131ydVwps3hAnCl9cGda8AaYm44utkEDmPOmnvFp7
	 6F6JsMGwo0+RdPJzVsvi8nS68GPeD8vmT6P764/DCdDu0hCTuaYsHHsBUopJHA/r6L
	 DIGdCMTE/Lcdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ABFFA3750
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743943357.21308.8011357517292988828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b20f5a362c822d84437b9a541de70260d417d0023a95c635f4480ab2cfe738
Date: Sat, 03 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767439433
