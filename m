Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E633AA4ED
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773161694; cv=none; b=WTs+cPhDVz6Q3FRbkWTMPDE0qPKeRctXKxqXIb+op/2Qb39Za1QsjwROhuR8SK4SIP0i5G0exngQylyyjGBZi519FWhUDqEzy8d9eW5JnLIr+pwBWMnZAlG7pl+VFQlK5N2WdSrmCoUKdTW+mzjX/QC863nrLNr2/CE8w2y2UK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773161694; c=relaxed/simple;
	bh=chdGN0EQumstr7vuD6Ymhxgt2QTkk1FJSIoPu05Exho=;
	h=To:Subject:From:Message-Id:Date; b=ju3Y5Ycw/6x3CVmVeAuOvMeW1w1h+VbDmCQlaeQq7uMG6v210scGD+hPQ4JVVuwWpSvNXipb1wcU20fnE+fwpQh7Ursxjyis8SZGNfYOkRclkKNvWhdWr2rfUmWJu60R0C3EzAF5jJK0xPoDy9myWfNXKM3nbTqH/uDiIYVHtIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMF33vv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMF33vv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E93BC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773161693;
	bh=chdGN0EQumstr7vuD6Ymhxgt2QTkk1FJSIoPu05Exho=;
	h=To:Subject:From:Date:From;
	b=ZMF33vv/60pJ7ebjW4r2+kTcn2nJBnRv1Cebly8k/rfKj2UJ53HEB6j+dTkpB3rJf
	 BJFpvdc3H0ufTeTpidLJqH6o0T5BMXNIrL6GRwdwyS4+vF1PnStb04ZtKhkRhAnA2I
	 dbCAIuk/MvjhR/ZFXdVufi5FtN/8UHXO4a5iRlus3CQpKa634Xc4ivy1g/Cv9tbgKm
	 t0NL8ivb5oL0Y1FLnbAbe+YyD6GXqg4HF8tBEYOBEaxthl8X5qQSoXrEvQw5XXOVDA
	 vjdEpdPKmTW+iPzWT86pRxagVgN580xpT0G7LJbBR4k1Q6kGyu8AHMeCfeJoWJUhyP
	 qJUPnXYHDlQ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90694FD4F04
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316169358.16097.10445115069796396221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52ffe0d6ce3e302f8092d324b160219d8fe5356d524e335ff018d3a9d670e46
Date: Tue, 10 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773161693
