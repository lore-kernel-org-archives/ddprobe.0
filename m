Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9A14C96
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 04:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713672023; cv=none; b=JL+r1mnPvq/G52ZXLqsaWyMipUnAhFyjHM4rvMSOMLJzVHUK1Ef4zazimbgVij+RpzAdgX8y8jGdc27fj+6LuVuZwNlLibk/wtBEgc3dOAS6A4+JQFEx3tTisc6FLGiSmIskb73nUpzvIc1uOMCSyTD59D2hNshlZYGFcuhwL4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713672023; c=relaxed/simple;
	bh=Qr9yF4u3u4gnS9trq5PpQBnF2H5P1NBwoYYQhlxR1g0=;
	h=To:Subject:From:Message-Id:Date; b=kjlGJhxpFmqK9iP22NLQmB1Zu7IQqDeUZanrhax4QM1t24V0X0hPr3eBcK7oSxpE5X56YAoXulXrOuP/0AMe+wTUs/iamQAIGeuCJHwNeQbsUz3mDveLJ3GVTl/FIPa8ugVAaYNhremvcIv9VG+Nz39hlfILETPoTIPzJx86MEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsKU73fv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsKU73fv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0230C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 04:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713672022;
	bh=Qr9yF4u3u4gnS9trq5PpQBnF2H5P1NBwoYYQhlxR1g0=;
	h=To:Subject:From:Date:From;
	b=dsKU73fviv5L7FM4XHH2QaBcedjz88mk42/mtEnAeLwqIdelRMyx88J6uaPGeL843
	 LpCvuVHDwHzGPxvaFBE22XcnleUMMPZELNttHTEKVpTRlH2pYcKG6lgF3KjoYUhXcd
	 m/9CKzi3+O926P9PlMh5kDf7Hy1DAWCP+gngydB6VYz0QJ+kiPkWoPsmYNeMsTTB/J
	 NvEgoht3faxiBmNNVFVjSaXUaCGk0RmANr8JLtPbDI9Ij+MnxH2klCUwkP/tWtCfJQ
	 jlW+Nu4ZylYa8E6/nCfbnP9k7O34BryKPZM2XDwiMko0t0fI96kKtQTjJMOEvtp4kh
	 TVngJSM8XUx+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA024C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 04:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171367202281.16877.11599923071001829479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83843af5e7d53636dde32a7c690bd6065f536668c058d2046c9de5b66970cbd2
Date: Sun, 21 Apr 2024 04:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713672022
