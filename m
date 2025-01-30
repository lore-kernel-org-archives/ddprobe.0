Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E24F12C499
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738278354; cv=none; b=r1qxDlqC/2Mo9SxjYM1li/WtmknecZXmOTA0gAlL6MVNd0sG0Frla4W+hP8N0Setv2mnZrjCJ2TIKX2lbN8rClHl8K5aICM4yBk0gjZjU2dRh8K2JBNH7cZ9mBDryjPGYML8/n6xZUXHj64/uIchCrqA6zLvrR9Ido9z+bKTtt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738278354; c=relaxed/simple;
	bh=VQScxHgmQT9W6NZJiJrsDDPhBLypKs26MMb4B3hfO4E=;
	h=To:Subject:From:Message-Id:Date; b=Fv3Q1TPMZtt9614BRk0veg4aT4TaQ24uzuixctAxesr3zGOApo4Pt2CX44OhB2e4mEIUSD4UItp0VtXBNjFZ86q615t3X7Csogp7p4i/hD9iog+RkTYzZJg5woAKqnLt1r7GVdrtSuwMlU/uWy/hgtGngXvN5FuoNF5tHganDbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0afUbQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0afUbQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECB9C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738278353;
	bh=VQScxHgmQT9W6NZJiJrsDDPhBLypKs26MMb4B3hfO4E=;
	h=To:Subject:From:Date:From;
	b=A0afUbQdq6KxtoPYqkD0te8oqKeMDxqTxsifyXBbKfrT2BTUrk8mJjuxhNL8xmAzc
	 2gep+bZeDU//Fo3SPIkTdFgiPFVb1ND8AMEvMG/CbtvyzV8zx+g8VeZv7DaIf3Cejn
	 d+TJ1RG09KFjtphSQ5OGgxZ7SiBUrWlkpPgVpuLTF/rlNBQL/UiWG9UYaSGNEy4YtW
	 xSpJQkkWN97WPDRC3WPT3kmZuDhZ/GQXYtdtmy3VKEaWvQ0U7vZkEpOcE8RHbZFGLV
	 lse8AF01lzWIlE7frYUu9ahZD/CaZ1Qaruzmeoza+ionUZDTfYBF4r1ElizdjwnZZx
	 tGk7qlMvBwcaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E0FC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173827835358.2489.13897444201090764455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1905ac896520e3a58f5d3d45b868d0312aec33f5664274dd6414091bafe724
Date: Thu, 30 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738278353
