Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D498770F1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724828154; cv=none; b=tVaXHI2pBs1fequiCGLUEdLAnrxCQOOy/b5GPEgyPyfUk8yzDS6XEHQ08ijjztZnzPNQ+2/9DopUfbv36rfJiI/H1zv7vIM6LoILo4oAytxwLnlbVg9wDCedxjXXhsCki1dE59+0lnxwwzXt9J3DhHKTOw/ONgqRexTJqQisTOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724828154; c=relaxed/simple;
	bh=oM0WyvNPCGMXfLKq99iww3xqYj2FNI3nEipAAYxznMA=;
	h=To:Subject:From:Message-Id:Date; b=GxWh7L86CXh76kPgupFoKWpcrchLFafT5b3WjFMgFT6U7w1rvMlUfEpN8NlzGaxbKCUFpd9tKXmbvs9kvk0czyVwQ4PfAr8N2yy5GwC8T0zazAkF2yr2Q6KPL9vHDyQiP83w1fKygNl4i87hkqHdSR2Ruvu6PERye/AaBkPCn7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzervDmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzervDmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA16EC4AF13
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724828153;
	bh=oM0WyvNPCGMXfLKq99iww3xqYj2FNI3nEipAAYxznMA=;
	h=To:Subject:From:Date:From;
	b=jzervDmy/RdXuNbSw2xEtzYVobTTce9YRG1kZvlH36IO6hOoGc81rRar5TGxbvaXY
	 awYfCIlQHB0iXJbmJTqJO7kBYzNggsC6yyIMWndOJKaz3d8kpMtSa4GCsa1V2ikbVT
	 9XbxRU7xJl1IAwqWpUdFCEuim+Wy49TjioJqJCcixgf1jNIVCm7RTuwJIxXoPOhz8j
	 b2MkTJGKZzKQTXfDMeGe/Sr0FpNQNKZ2PUmSd8/dC/NbTW5iNUHjAbpLYJEPyVTG8m
	 6NU2R0kQiDSbmJpGHhZhlp7pCtp8MADxiDSrVwgi2ALKeDXJVjb4wXWt2HDdu1PeBU
	 213pQtODfZ/2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993E7C5474A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172482815359.20204.2385358707331242995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7fe9de8e827257412f1e8efe5e92600dc39bdbbaf643d8eafa4e0c27a579885
Date: Wed, 28 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724828153
