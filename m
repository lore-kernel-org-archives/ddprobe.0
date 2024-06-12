Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA07168C33
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 08:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718180303; cv=none; b=YW2uBVgw3xrJ+B2Q1+cTQzr3mIzrgaEJHhPg9tzKdoY/YGgKVNNt+eF7kunbP6n5s7t7+U9udqY/0nB4uCcidc1eAdb+Y1nXS58XkddjwmY246trmEnGAS8LXtAAMk5sMyHmA/Kf5Rsbt/kSQXwrhaymj92cDG8wUWsF6m5Z9oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718180303; c=relaxed/simple;
	bh=nSkeKTAsq+50489TDzLlkrAzH+O8YK2sdM6n3z5Fqu0=;
	h=To:Subject:From:Message-Id:Date; b=NcrEXE8rDv9WAUJAwiqOqLVD7Or5ocv7KQ0FUcrkGBlwwzDl7PGSuzqe3NgxKf0pv9/Gt/aim9HXwYvm6IbJL8TtA7hztsfcgDpvxw99P8um93uJ2aAB5QbQ8n1b95CgwaUX/uStvUH4Mlunw1oQYQ0MjkO414b3jQlapCFiPXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zy1qCNVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zy1qCNVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE697C3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 08:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718180302;
	bh=nSkeKTAsq+50489TDzLlkrAzH+O8YK2sdM6n3z5Fqu0=;
	h=To:Subject:From:Date:From;
	b=Zy1qCNVgd3VAugk8d//iG6g6jrBjv8Yy6X1Shd6CXnju8hwvVvj9jouU0u+oFdShC
	 K78wDWXhyjZf15oyQrTUYtNmDo6NljY4LwB/6s0RdKBEA5pL1V0nn9D1s3VQiNQ8sE
	 71WywwLYwugx7Py+stFV4eZ+OW0ELQuJl8WrboSdkrpBUhYlDRuQEU4SiwOsNW+Ig4
	 xmPAR/SBsMgH8plrIAOB3HaLWW5FZrP6zD43eQa1DCSg/WzQX22MzPUAP4Sx5iiL8n
	 pS1FTlKtIRxUh9zCf+C1p8QCQL+YDF68iFO4XCZIl5clVpxS7IqLYKnJlj/6A9mBe0
	 nDYRhWvgEIilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4333C27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 08:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818030279.17021.7578374984477394639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c585c26e5773c90612e12b4fe4898c7d0b054e71cd7ccb1fd7f0c9759debd663
Date: Wed, 12 Jun 2024 08:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718180302
