Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EE9370
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724552154; cv=none; b=L2NcurlFSDvw8cA7uDEtUA1F3SW15rryQGh+WM/RIRb7s9FHqfSvBPCiCezuSh2Ua0fvMSyVG3zuZBPC1dGS+BHtVF5Tsy9X7RzG1d2zdh5zbqgVNv2MnstYVav68DIsxMmO9c/AYhw8Yo9Rnbg9fVos76O5eGnHUyDtP9Jfn0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724552154; c=relaxed/simple;
	bh=nIJaC/i2LtaDaexf1gqzL0HEdMa09M5+npHleZqUAyE=;
	h=To:Subject:From:Message-Id:Date; b=iX3lYARkdmz2w0J4XExGgI2GDwLx/egCHqiplVW3SCnX4v0hS5qqWSX859Ks86Ys3Rf83SOA5gTtOcpc1QCQ9RQ6m4wonLZScc55PcVInXZ0FLzB2gQWFIITY6xnMaEJEKaoUY8fa07MEHHxvK2RBnUmwCPvufUDFVfXdnfKEq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzCsG1PU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzCsG1PU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA2AC32781
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724552153;
	bh=nIJaC/i2LtaDaexf1gqzL0HEdMa09M5+npHleZqUAyE=;
	h=To:Subject:From:Date:From;
	b=JzCsG1PU/BBnbAFUbg7WmiMy5xHebZ80qGxajorM0uk/2agFm2WUbe7TyYGG2D3C8
	 aTQfoqqM4jaJDCcOqe64NoTY1sjbdSvsysN1bJu5FL6wQCSaMnUlNHUSyMpo0TbzsG
	 AjpLBFmgMYMPnU1qovEW3ITFjZlK4WAu+yAfphECJDCuH7VY6+yBWbmiFJbU48xEvm
	 k0i3LvY19RSv8MeGJiIOVnM7hDYFwjNPujbMP1ExwElYhhvwXJYQ9x4a+jQqnOr/q9
	 twRRUiUsObc8s6g+9jb9Qb+Xbcrc/WHKEyhDrHf43l39bmQL5lk5Nx1vEqikp+TV7K
	 Mr/e+TZZA8WiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D772C52D6F
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172455215360.15430.16359827782248987933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7c3e88828a37399c74a995aa453244404d9613414d235b29342c027e98b454
Date: Sun, 25 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724552153
