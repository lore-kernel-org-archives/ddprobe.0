Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EDD41C79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721036663; cv=none; b=JeAhyTrJsKLe8/dbnSmXwQx9Z6FHIoT1FCG0q2g4gUb7IUSi5zilpJhIbs7uIsj+vpYnijrwUMYvcwE6xopz1AKaKbW/iIJPgerjrUL62jr1BUlbzBunWPUy4Ly960kpyJHMz7mDWpeYnemq5+AHNqDYXXwpNHHPDMq7RlOnjH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721036663; c=relaxed/simple;
	bh=KNNaEVl/Hq7+No5RAjBQYucsz1bLtrEqCfAFoJPIP8w=;
	h=To:Subject:From:Message-Id:Date; b=umD7MC0TXYxoIJpUzS8+wHDfmzVDVZyfbZ4eMNDC7+gaigo9dnHXH371tAkDQRq9x1f/DYMSzR8HpJ+rr+3P9jVnr/40uTThcA3otoz/FyhnaoosjcP/EMrpHqdJE8FiFi/cML5VKrHXczFFctpvi9O3SE4+ml97eLoJu5hIygg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4dG71YV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4dG71YV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81F8C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721036662;
	bh=KNNaEVl/Hq7+No5RAjBQYucsz1bLtrEqCfAFoJPIP8w=;
	h=To:Subject:From:Date:From;
	b=k4dG71YViniQbEWLH6y8K6SeGRtLh8QDcPPIsa33R1lZ2OL6cEQQa6gZQakA0vvKo
	 sHPQR+JhKSthy/E2j5CxeAUWg+2ueW/u4kzWg/N3k2CNP81FnKPH/3Wvew2dG9TnCF
	 EN+E1MxAHx5/qBNWIcGdSzcC747tWgMioiI3QyCiMC4WzRQcDcQ8xzlsyG5h0p6NPf
	 KatAs4MVfKebG9IEvDq42duUa7kPCL7j6tc+10JQ8V7xFsZ5Yspro7XaXnYvobZawL
	 bZpAh+IYyJ/5zXnkyuaIg6nEKRkFHk3/FH7sWI8gLjdHivDRrjRRJPMWsUP6wpe46P
	 MaVGpzFRTnnJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C563EC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172103666278.3585.8509776522422432261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6dbe03b2852ee8cfc82d8f9b03f134b22f7f8effcb34b8b4f664869e2077c78
Date: Mon, 15 Jul 2024 09:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721036662
