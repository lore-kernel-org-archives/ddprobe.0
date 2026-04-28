Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E74E47A0D8
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777400854; cv=none; b=hbfKMUlCHngucW1idpdyqzzJf74MwbX1hZ9ggbYshd2TTy+3elq66WrIPHJuhLZ/ckXtt4SF9z6bBKhHFIEYUeyRzyqg9W8EjSLcLTosAxsWLTwy5ya16HkxgHoSalX3S045NGrwLcCNHCA20G77waDmEoUtmn481FBSWxfJeXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777400854; c=relaxed/simple;
	bh=ipHQL/G8SSGQ4FRziQjU7Ggjj8bnXMAMztVEsnyH1T4=;
	h=To:Subject:From:Message-Id:Date; b=OmZ3ARqUH587XhT5iqI4pnl9V4s6qdtnk0/OlrBYVSRXSgEiwQW0WGXLKolSsnS1FoaWjo9tADFcfS+KsSQ6d5GCqWkZ20WUED/adwNmLmjhcBCPWzRDCt7r/rRcSUnvAz6+37GSNmzMNIaVqoPbqj/XKFwnJyYmI89oZmTv7gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxQcIjSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxQcIjSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93C9C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777400853;
	bh=ipHQL/G8SSGQ4FRziQjU7Ggjj8bnXMAMztVEsnyH1T4=;
	h=To:Subject:From:Date:From;
	b=mxQcIjSiPph3soT3D6XK8moDIsrDlPPo3toqX2YtWiBmMBg4Xw2UA8ul+pzOMu10p
	 1WG0K5yoT+ZAZdosVTVR7/y8Yh400OP8nH1zeXJG5GHVIb0OMeh0DAviqufboReSsy
	 dYqcnwgFmSx3KDWcFQwHwDprbI3+T5lKbWemj9LeijfwRkLb+838wMS0FnlmFW4q6P
	 fTMR5pGXW1/gDkGjfh1I9jDRd5sQB9V+tq6iVXybZAyAMV3jwXADpevvvAmchoVQ+C
	 W7RkG0EzbC0EiRdhYdgx1oNYyfzzMETJ0c5+ryC3+ETKw4J4ziGSjNYjhFSmShH2jP
	 j/qArAQKhU1cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB315FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740085369.8351.13235485619184393385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a598263f4a727a38ee05f43897f3ec3b4ac29b732b674d324ada0bfa6f87612
Date: Tue, 28 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777400853
