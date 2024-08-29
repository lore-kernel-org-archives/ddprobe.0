Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388542CAB
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724889954; cv=none; b=a98JiUhKyK7TmkQolx2tfM5myYde3WXHC4hgkUH+yZxKcBf+PIRj8D75i1ozRh0YMf/KoVeSJpTMSOnFBaVjko17dedUZTs+wucC3ln4Oy0fUSBTbm2d5+oI4Kl1VcbgmPpU2bH7GSRcyb/TZkwHYLyzzyHMQrSy4ic1f6YkEmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724889954; c=relaxed/simple;
	bh=PEy0oMrqSpB6JuJch/Puh6QGhuDPY+n97ch/LsurspU=;
	h=To:Subject:From:Message-Id:Date; b=g6afHUNOBkSF6wbm4W4cSMEmSqVfaK2POaKCqWDEQnPmJp2ooiseyKgVELQr2Jxqz8WWEev228YM86sZ5zKLkAuAardpSZx/R0blOApYUSzPxohBFEyMqbtX5cxUZ5Xv1FMY8QXB6JQViwdSoKH5ne3afPvXJWHaDIks79LbbBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfihf1py; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfihf1py"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1FAC4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724889953;
	bh=PEy0oMrqSpB6JuJch/Puh6QGhuDPY+n97ch/LsurspU=;
	h=To:Subject:From:Date:From;
	b=hfihf1py0rUo1kUWTICNjY2TA6CpfTg5JE9Xr+P3uiJw5mmcxgmSr5xXPfq4QxGeG
	 cdHnWrbkJ0RyubLzSarJHkTiB5rzqDfT4L3l0d0IbLrmI47vVJU24ckTSRLRAz8/3D
	 h61VysH0EznKNMLx35f5oI+wMGFK6DMzqeTuH4wjDjDFY0ncpKQhkze8WI75zLUPgG
	 Uea/kO076GTYNAWCYrJbTHv8L2Yj3CsFkTCvHGQXRBc4L6IoaT3D0U+0ARw4ianYWM
	 UIPur85831/2RIreHjTxMv7zmPsrZj83yzF+L1MjY3yZ+xvNK1jZLmeGaaxvJP6K6S
	 i2IviQJ8XcENw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B71C71150
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172488995358.28213.14484636723499555049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515b4ff108dd54cc9db4d3db3cfe9d60b36fd66b0c79ce7ede479b6a5e04bc08
Date: Thu, 29 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724889953
