Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23CA346FAB
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763461314; cv=none; b=ofnR6zBOJLl1mvl4TGNEpFg6h3vlYnfgfqzbbCC2QxpLSihJ2Cw+hEwjiDouMdhlzSBqhJEzWLIjR1xPmCtB703f8rYiYLVFzBoNb1qBhhZe+s2VJB6R/YlYjFpd3WMzbArkvfHCTZPKYeQn4wBUh8MQzjoIM4Wmnoa76YtTg/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763461314; c=relaxed/simple;
	bh=HWX8Rm3ouKclss7i/ikmIUMJPHuiOy3Hjpc/FLzmrjw=;
	h=To:Subject:From:Message-Id:Date; b=CRKWAlLy5SueQqdpiPdf/D2eHhb3C8rzu4s2iduRQyBSxeoedugi1ey9FwN/oFJ6mjVymFIk9FVXMBWXAn4XTIOKqLIk+yWbwXig7/aUicdZPBgEEui4s3J4e9KM3qEyFWr8nbknrNXSRV3E33ex+iWY78bo6zA92obk4PB+PXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShWurm61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShWurm61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF291C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763461314;
	bh=HWX8Rm3ouKclss7i/ikmIUMJPHuiOy3Hjpc/FLzmrjw=;
	h=To:Subject:From:Date:From;
	b=ShWurm61t+fhPaGbFHNeCg9kld0QIYLHHB110ffg1vE2a2gXm+mGZusrU8w1lmCBL
	 OuwaQn3SinZUB9WBuf/PllPtCPqjWPCqov2HScDa8qXiWwHzNzFyHTg0k6ttb4WRdj
	 snF5tYA8Hl+AhWGFQ1F2UU8r4x+D+31JnVt0qcv6H9X3QeZfhT4qIUR56MC455e/0J
	 WXyQ8Zmn8nwbnNbvpAl/hp9luSCETOeTUoQzz3R2CaEGMo74pM20kjZ2R/4APC87bi
	 +9dE2yQGchpt7zDQqAdcuwgTjPnL46GfZzi/I/k90Orb8wXnaTY3wNG6fWJCTpuP9B
	 Fo1f/cSZHnHeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDFFCED265
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346131358.8913.12638927858557100458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573e5b7a39a692ed109ba9724766ac60874dd100838a7ca731a7a53314cc40e4
Date: Tue, 18 Nov 2025 10:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763461313
