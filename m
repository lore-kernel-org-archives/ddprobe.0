Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840FC79F0
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 11:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716724463; cv=none; b=aQGHIMC3qxfRkSP3Du+pLmcPRwa3ixOTEBLRnh45PbwP6GsRddXn2lCLrrTC9F45QZqYsS3RAKsJSEM8VW0jV9tKyJkQMj+xlW6tQvGia+Foj4LBUoEkMePI+g/6M3m8kvSJ9/BR+MT8qBIEBdZTdmQF7DjR9CyKGwZ+GTXiN2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716724463; c=relaxed/simple;
	bh=Dx+yTcw4akzQEQRSduCqIhs89hy7UhzxEyYTUPd/j8o=;
	h=To:Subject:From:Message-Id:Date; b=Dz60P0xpd+poYmeUmeMCewbclsIkC4IN4g3HVEHwJag8C/9p2nP6DSfCnMZ8MOnTHuXcZJF/bCTECCY+Zmf+aqqMYpvkirEIuhm5gX1mbsnQBk2PZgkUis4ZvoDAmxBx+JgH8eHynBtke+NTNHpdSSeiCBsVnBpREOUSqGWNwlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njow/kBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njow/kBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E755C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 11:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716724463;
	bh=Dx+yTcw4akzQEQRSduCqIhs89hy7UhzxEyYTUPd/j8o=;
	h=To:Subject:From:Date:From;
	b=njow/kBoM8U76EU7kLQAjyLK3O7GHVjpD+9g62lDLjKNUHADpO4yfBn2s2asOShCX
	 gsrPxF5udFcZSGrLaRge06JnK07jlYjV+xxfwF1QCA0HuCbWn0t57A2MuuRNwsLjFT
	 W1JmA9hflV+oYtoro1yVrfwaycqQ8Wxcio/aA3z/W05Epa+7HsGjH2b949JRZaapw4
	 nJZwrXrlEFRwzQ7+GKa6xqAtNHe+mLEhOOQ9hBtMPUqJtbHhh9VvaPf7KUg8hPOPZp
	 yY65QIHN1khYeORHL0w8TNey3fvePJ87wzIHuLudh/x5BSw+/8cjNJrFZJTuYEZL90
	 WcIhtUKvdE6yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D758CC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 11:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171672446285.7138.14131882364463867227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30cce8ec9aef7b401cfbf0beb09aaf85de881eafb4b0f14524c154fca81e823
Date: Sun, 26 May 2024 11:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716724462
