Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ABF0331EB2
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787914834; cv=none; b=XyzZEtcF0w9JQiMr8mk6xCY+D3sqH2EWL+G3XW2hYKOQ7WGQQmFepJhmNG2PUazY+qQ+NCv2imoaAiaUTXXL2Js0gwgVM1RRXy5vcnPj2azr8363sHwJ2Z0nDMApGy3w74l/cqG8vGvT52W7ryb6vi8AX8If1fxsKtGOLreIWHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787914834; c=relaxed/simple;
	bh=JVm3mON0hU4FXYxtYKCbbw1diEHCq8bbeD5N84d4SlY=;
	h=To:Subject:From:Message-Id:Date; b=jLbuH+g+nds5o62TNSC6iAN2BGpPGlzL3MIY3ZuSerS5qUp2GHoV971I+MxF3Jl7+iQVmDlbSgMCofw7n9OwNGfhXzgUd9iHlQsG78TgbUZB/QVteINr53vBuPPnaa05wlB+s1G2RCHR0zLbrF9OA+M8ZBdwq3XR5XB53yz5R/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csom4m3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csom4m3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC38BC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787914833;
	bh=JVm3mON0hU4FXYxtYKCbbw1diEHCq8bbeD5N84d4SlY=;
	h=To:Subject:From:Date:From;
	b=csom4m3EGghZOhiKk9T7wm4gNAEVjVjpOHn2vzuZoyD1SFADyz/bNvyQlN3Krp5zO
	 pPP56v7f/XGbHQw2VOxkyJ1E5cyxcfbpPBic9UrTfeerArqwRq6569ulPm7rH62vkt
	 t/WKcD5bteGGFwOGe0+17b1wejmzzqXZdUKpdOGAemvAxVj802dGaAEXlmGmj6D507
	 6tTqBMHtDErjUdvBQrpMFCcCDdO0D+gVpvQJMY0wVh7qZmiufOIOmWU07mdeZgoWrB
	 sXNNW+s6rMyVES/QiW1jKMQJrcC7AsxOXBTpxdp+v9BNgClfrFmzAECdecP3rmY1Ez
	 aYg4reebHtgrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84D2C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791483374.13202.3083003615370208692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc5f32682326d7df4cb17c00f003d020555a4bbc8362e3390ce2eb8f08de823
Date: Fri, 28 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787914833
