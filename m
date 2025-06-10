Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20474241679
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749569394; cv=none; b=b0xAAoApv2KSyid9CvJuUsf8qxPnfzQP69zgNmBAY3NomDEXIBz35KBzGW6BSxzgPJ9Wgzo8xR4ZMaocbWCvUonHAZ921kzeQ08TNd9wYYrrdU0kUATU9wfJLZPka6aYn++uV2E5UPEavKzpfyQP6lMewTlATiB9f/4xALNPtjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749569394; c=relaxed/simple;
	bh=bPJPxcwHClr/Vx3pIsOnuA/VidsjKuHOvnkF/KsOhbc=;
	h=To:Subject:From:Message-Id:Date; b=oyERDVxEsjS2iWVgbCgaPejkMx7FmS9vvBK3sz1HFSF8NNM0HUZCBmOo6ndK/70jt6N861JQ+HDF9SVKV0fk+bXJRwxuHIImVXHfeA4kLBKPDTGgncysiZhYGbQdlS9epOF/gUiEjdP3mshllfh2/F3pjmeOik365HtC+pL7wCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEQcFsB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEQcFsB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96EABC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749569393;
	bh=bPJPxcwHClr/Vx3pIsOnuA/VidsjKuHOvnkF/KsOhbc=;
	h=To:Subject:From:Date:From;
	b=rEQcFsB16sP+z+3J9/rXKfuonrtYg7/d3/Pq2sdtmL5JdXTarWIBgmqzHutus2X+u
	 Y7q2Ugau8unmRiDyP2fjfYYAD6ednc4GPctkFz8VVnx3TLLEtWbcajfUGxiPlJE1YC
	 PQt372ub2j2msJYl5RUD8URU69KPQXF7BNvgEQtLl6m18Nh3udP7lGC33HgE/8LJ9f
	 Eh6Pth16dQ61CzD8kX2v4Y+l9Ndyza+pKLzD9kQDoi/r1ZRnlhQZS97WjY4pIUULh0
	 5P694Qk04yBVG/v0wO+GPrrypUnSiGjr0lZdY0GF9/QWbIZJ0SJ5Tkh0yRobwcfD4m
	 czTDBCX1AipvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F56BC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956939357.24197.8791680911473829195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34bef52dc5c0b3174849271b69598cfcd8bb8bb00fbb7b837ffc0d1e622466b0
Date: Tue, 10 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749569393
