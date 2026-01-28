Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8C925A2B4
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769625234; cv=none; b=Pyfs18g++qt4IlLor3DfYe+oC0nJUDqI57u8xNTE0zSMmVDINKcppP5TEVuCGA94gc/5WsHDBMN21YzCuPbRNeKodaf8JguiJyGFL3SWZIjz05JTAUbl0kRKUzb32LDTPkWeK9teHXZ6GZHBfw3+XOffboCF18E4jDv8jl0dUHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769625234; c=relaxed/simple;
	bh=aXNmXNPtL8c/uqt1gdp8PLICyAeAtU5/xR3HloqqsPo=;
	h=To:Subject:From:Message-Id:Date; b=hwfwMdFu8sXvMRVynSK0TVuHvmzKFnd4aPT2PuKyjIIxMhYN8kUr7J9/AMkIS03EzpWK/MnrHEwKCpyIWDU6Y2i/XUrsCxwUAbuhERRSlSsSPD5nWfV14N6GnTsvhJoiZtVOM/UgZ2wIOw+49XO8Ms0xI47PPRGkwSOon9Kx3VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBfnUzUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBfnUzUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A177EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769625233;
	bh=aXNmXNPtL8c/uqt1gdp8PLICyAeAtU5/xR3HloqqsPo=;
	h=To:Subject:From:Date:From;
	b=WBfnUzUv6sdKGV6YoNg9JspNqRC48r2El0HKeonAbvl7GNKzNfra3/2/YKQBBFxYz
	 SfAhiid91AFVAL982pBrEX7K45sOCxgQo3TNceRUM4EBC/T3hh6HwKVcylkoeekKsn
	 2oNkuuQ+NK1afeRGT9O+BDsDj7/ttdfZtzCVgK4Y6on7NOzG9nCmVgXniJV9pkYzpv
	 dQIT46lYSxM/AQ5pzdsJOxuf3ldXoKUsPHbhcB0lE0Qbzs6MJ3vq8xfdO7QxzOib5Y
	 pcQRpGvksgoCx7GQUtHxcM78CqSluqKExLac5g0GPzAIjKmC13uSfLDn/0Oqr4wHOg
	 kQVtK9dyWot0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CDD46BEF
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962523358.20029.11465061660537951808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819b28dc4985d118e32f6643d928ff39f9486de78b2f64cdedf720d729dd9293
Date: Wed, 28 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769625233
