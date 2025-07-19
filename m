Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2052454654
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752932996; cv=none; b=ZS0cEFVkV4GBYPKNOS0QqDHY8IUh9+WecFKxyexqMdc9VSspGDeb6yFm2+TyxkNb5Fwqse7BarDeE1tDRZG2JES5raie+qHAAYfLCNN1qI16mn8OwwjSg0CnmB1iMC/X2cyPqHWjSkH2QGRATrRsFNHCf50cQnK2YY5beaqUM/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752932996; c=relaxed/simple;
	bh=RbJ8oyszF9hMWkJyOpul/WCDBtvlL4fw6IyiTGGIujU=;
	h=To:Subject:From:Message-Id:Date; b=dfbpxboV8jBt2Ta94ruLYvAkTcmR+3ODBdHSAf8Rz4DAQ3Xdy8Vj0AoOnFYMsTZvADz829pIhlnJDk9CzJFXJcDdMGZzztpZL7MTOs3EHsm41Cv8lHVWx27DToaVlEFJnKcpJX0ZHxD3zsCTktNwxc7jSXMByfiwX6ilr47ZLkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UO4ZIep+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UO4ZIep+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60AFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752932993;
	bh=RbJ8oyszF9hMWkJyOpul/WCDBtvlL4fw6IyiTGGIujU=;
	h=To:Subject:From:Date:From;
	b=UO4ZIep+HWGki+tdy37k0B166ygDySLzxBB5IfXFS16DBGXjgcx4wjHZMsMHvoEO7
	 CwK/348+naG3nQO8qRwkB1DStr30+au0bYUbWBgGPfAgYJrWF72ugC9pOWT5MdoWLA
	 bWdLlVMKPob/85Mdj8W0xItxaCaRTf5FEvLAnvJuKnqIRqlVrth4bT9h6aODi3hTzD
	 oqQhn/Nt3EbfPlhHXIjpDxMwhYDwdkoC1lAHqa0xrf9gSZ6S6iHeb25V8qhEIUfXZD
	 FI0+s+IkaR5Qa4fschkhBi5w2TE1m60iuM/hFQEQQZZemOda4+jA0VbqPh7Mm5rW7I
	 GvBcHhvEUfTgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9410CC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293299357.10441.8696070489149156050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33fd1e790e1f4d94bb82bbfb18057acd2edde29dfe14ab6e1566c4559eb67cc0
Date: Sat, 19 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752932993
