Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339D319F115
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754937596; cv=none; b=Gn5st5m+EE0HnX7jiZ0DWPjQc0clujbzdiewop6pxzNNz8mm8I5j2TW7jU5YM0SVijN//Tk4t3GEwwwvNwOfMcucirdGHMnQQou1Y4siR9fiR1bzRYKm9NG7/Izgl2pAHLrI16VNEtaBZEvFHGdeIdpwrkVLR63gugDvryE/Do8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754937596; c=relaxed/simple;
	bh=RIaqjfX0h0CLqY5uwqkuqTCjawX5MGpq4Fi5dPPI1Fw=;
	h=To:Subject:From:Message-Id:Date; b=XhRDw96Dae91hiLwm9Xem4DAyEWN1AIAokLH2wY6/klBTRKBw8b3nLQ5MoUeJGQXokEn7KOYn6TJn6sU4ESQ7v76PEzRugXOCWdXSHCq017j5moa/O/TSuIomXs8oYFAsU5JiB+zyNExZD4D3+xi2UfuVDZOJOwlQ9og5z6xHH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmtspTJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmtspTJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30B3C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754937593;
	bh=RIaqjfX0h0CLqY5uwqkuqTCjawX5MGpq4Fi5dPPI1Fw=;
	h=To:Subject:From:Date:From;
	b=FmtspTJ1v0XNMUNKt/SBQtYE1RYH0rhj7QWKddE//wh0tQgVoZwI2KVXjrG3a6T9D
	 yFKPKyXzCxMXDOp+faXiFBzTUS9Bz1CaGS4PwafTG/pFwnDsBV3qi1iyO47Sj1fi4p
	 Imck5jxonrRRlGQ988bdeiYdWlFlEa677L6h9oMATRa8KLHlzF8lDlZdhKj05kiRoA
	 cMKKxlPjPJ+Zc26IxJp3pkrx2+AjqcJyYogcMkrn/1Zn3m1XmqxR8BAgKgy4krdzXw
	 ur5W+8tcLq/w7DHpSA0c1tthGgdRxbfYs9KNobOwEYw3soiunwobXyf+2SIrRVFmQ9
	 tT1M0litD8uyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B2CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493759358.5936.14592715293866259596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3680fd7948743eb313ba339d7a2d8f226c493682de005a81acc908082de0a2ac
Date: Mon, 11 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754937593
