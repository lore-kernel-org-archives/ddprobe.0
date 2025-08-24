Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340D61E5705
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756024194; cv=none; b=cx42hL31JwFU32cQ0k7eCM/0UOLlwORceEM4HYlGrQoEx7tcfCV6KIu9b//DZbAqMgrqqq9xhzkBprjwrfoJb+WmhzuMQNz8AqvQRHknFTZjpdrXadpZsTplEe2mm+RnlpkgnluRUFsjiSa0XKL1ns6xCiSA6G+tWHIbnwoIXJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756024194; c=relaxed/simple;
	bh=r3dr9P1hP2MxecM89+f4DH/NV9raiHfPcuqeDkMnnRg=;
	h=To:Subject:From:Message-Id:Date; b=fW/53LSch1I4WJyo4neV9mYnkDjsQJhUMC9HrcXAIGC+3wu+kgekwuXkdpelzdKys1SVgmqpyBczYXbXt7GGGsB/oFRvgfmOuXS4w3RkspE43bgK4QmJlMc2/3Max9AL2UI/vEb31kdK+DEP808cloZEgMxtkpm7jvT4dYu/MDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDq7TQwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDq7TQwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A73C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756024193;
	bh=r3dr9P1hP2MxecM89+f4DH/NV9raiHfPcuqeDkMnnRg=;
	h=To:Subject:From:Date:From;
	b=ZDq7TQwmnD7jULfPVg6isUqClJG3687LN3qvau7JE70Fz0DV9ZEy38V+FAv4ANaVm
	 L0xvFUO1tiIVxTQ954iV6JCIkphEa8BxbPJKEjbYRVqIcM4g6wkXXFNQs+KlRgyNmD
	 v7bWMBjUYIAws9lVW5CLTCZlN5JxwVvHv9YRxfxfWLE3G/bJ9lx/1h9G3bR+b7q7Jt
	 NjV9P4rL8YD0QOOSg4agtO8cZ/oztF/pePRbniWFQ4084wH4gvH2nPjetXkTwUyf3G
	 aT8l0Hs0QUGFYHFR8C22Q0jYQctvkD2GvaCCaiQsGYeOzsjsyDP7FgOBGo2Hr6W3Mt
	 Mkk8lKb15q7nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93084CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602419358.10208.13942766456352569781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8dccddf089fec3890cb21889bf463356821d14e88cd343f079eed1c906dbe81
Date: Sun, 24 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756024193
