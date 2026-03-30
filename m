Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1479C23FC41
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774904094; cv=none; b=bc0urlMbV6A07sG43Zdm1GI/8eyia0r0/NRmyKm5/nvJejku8bn7c7v7vgZ/NfegOpvFwH24mSEtbJhpojcHuy3ZsfycHy/sTimLFaTZ/y5iR7uWZ08ediYffEwpSBgFNRiFPXUJ7nqLhxk7qjHtEJtVf5DqKb/mWCiB97Hfr2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774904094; c=relaxed/simple;
	bh=qzWv9VR7CX4DJsOI05cu+jaboWtpdcsGklXcB2zFOXM=;
	h=To:Subject:From:Message-Id:Date; b=EEhwuSahW11/EPtWAQnMI/kVE9+EIAI+VSb4+pic46RcOWLcqsFpj6ERXUQOru20WcwI29Ce+E4cUpG9Hxe59pWpOOeo0I2oD2SsrmQLh/GVvdvXAPEq00mkSd6Qfdkg4q5ATwlx37PtGfaHDkpJkoxe046zdagGh2A5tw4f7R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgaFHwDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgaFHwDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F31C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774904093;
	bh=qzWv9VR7CX4DJsOI05cu+jaboWtpdcsGklXcB2zFOXM=;
	h=To:Subject:From:Date:From;
	b=GgaFHwDOInx2E2t7Tmj0rF+xlms7KK4WOPZMv3hWRn2wiQJ2dJT4WcLdc9ppNRuIm
	 TUne4rOyz5Ix/RDbCjV1ia5eCTtqTtHoTtoAnceuN+x6dIeeFJmMtf7PnstJno4xA1
	 6x4/zq2/NzXGR2OzM3AbXfgJB9z34n3SmjK4ZcTuqsgkzfqwWrB4Rt1Zu9L93LQfVN
	 R57RUccKxQZhbiuP2hYv/MDfD0iwQ6dD0eV4AtlTcgnAJHKLL80ORpMFBDpUoTyza7
	 ro0wib0vCTydVD6fXtz9E4BTIFjMrX8p3Jnwog3rbMa4MBt58k5XfLcabgyo47+H8v
	 IreWNsNLLESSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD71061B20
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490409358.13942.10457754885861817038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c2466e43a7a8bf285f0c3d403f4475b1d786ef3c741cf9acbcf825b72f1116
Date: Mon, 30 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774904093
