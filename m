Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4354241B8DC
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787575234; cv=none; b=pgp42CzsVhWrUfmIumssR8VMkaek8XZS8WajOXbRBcOOslXDS+2mMATQruf/Qx8sqgxdENv+OAy+vq3sDs/DkckCp3jy5W6gYFJmOb3maS1MDAUi+0maH3CiIA/OEpVmAUmgbUEFecJXP8ze2Xyt5fcGORL0KsB47byKpWgEuzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787575234; c=relaxed/simple;
	bh=HUXiKye5MvLwKMe1/sintDyycaVepJlRnbLWpTY8LEc=;
	h=To:Subject:From:Message-Id:Date; b=QQAziQxH3RAWxvELDOY5QQkTYIoZEPCU3DSeV7QXc2HouZLGZ6DjJNoIXg7nKdQ8IgNk0qogvm674EuHZQr4BTP+BNnqdR+FfE7j56fSeteF26rZL8znvuYD+aP7RAD86p1tj2IYi+IdJ9kgrqmVbkcPYKRenhEl8/0t7n52oF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWD5VmEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWD5VmEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34E8C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787575233;
	bh=HUXiKye5MvLwKMe1/sintDyycaVepJlRnbLWpTY8LEc=;
	h=To:Subject:From:Date:From;
	b=PWD5VmEn8yn0CJk23tIoq5bQxE7RH2DDRtF0FY76VfA1R3KzTYcCwT9FGc1r5tcXG
	 9F1Vyc5ray2dnrxgsnZEDGmlx84ejuWykO/Nug9Gl6QbG1no/Bc5IAOQWb26OpLWgo
	 FY/wcr6ezIiLrlGj3KJy2C/TxFAcW7Sy1xba9OF+pkE2jBSow87CPxRFAfKcvOYqfh
	 gVlYXh5DnmduzBz/SmX3SXHlFWZyMu3G2sewH8Cp29h2gTjWcyxVNDTcHgYH0m/xOm
	 9HE4Vl3u206w6BW62BUf5LiXPEGbifkN+Qbv/HhjPi4nvwLp6k+FXaAisplgAyqB9k
	 z0RUNSeb+IiDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE922C5DF9B
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757523370.11533.4467029257160735114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97d25e30a955cb67416bd012d6bd5abd006564eca95d4f8cd8c4fb6e0b344a2
Date: Mon, 24 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787575233
