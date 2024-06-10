Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650DE4D8BC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718007443; cv=none; b=PszEcZ8Pfi1QdmgB/R7yNWbd8sZPppR7E0HeK7o7SXvlAKTJq+SJicCpfKwFpdT6YEEUv+YK08Z7WKLDKs1LS8BBwI4WqZYs0OIuRi8vKIsUq1OK91SOAya/P3RDUgmC3cDnfUZ7jIFXqHLKQJWeW88W33vHWJb4tygtA8aB1YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718007443; c=relaxed/simple;
	bh=4WhnEoZ0Vtflb4vhn3oKAtL/OrHsSiP3cvfo+xm7g1I=;
	h=To:Subject:From:Message-Id:Date; b=oH2p4lEQMpX9WyhOd/VA9KnH7FJs7on/q28wGwiqR5pd8uvQXzSDodV0/XPL2zScGfotgXrcAZDOpW9cCOKDrz+xRsX1jByCU/3C80r0QFbM0EVe7uVJIC7MupOIc8ZRj/9xDNfkhmNWAM9wyJpeuUqJ3ddS6F19Y1PKX92v6YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=useCuWng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="useCuWng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7884C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718007442;
	bh=4WhnEoZ0Vtflb4vhn3oKAtL/OrHsSiP3cvfo+xm7g1I=;
	h=To:Subject:From:Date:From;
	b=useCuWngIw2Kogk2oaqR9HMYwYCjYb8eT4kCbrHh0VwYPAMF8erl+Vc6TGzpRrQKQ
	 nXaYnJIwYJUSUwuspV9CNaIsq5DovgMyElGCPYNWGh7BG7bq2MMH9B4Y0fZNs0fzBr
	 xALVAK7D9OdkB9Au33lILor/clmUfvDKAjzQnjntQJ5os7mz8GQ/WaipYUXF7KF5px
	 rSLCPUM8JBIDcYXVFzV8wmPF++VY//7VzmXFZpjaylTNcFpLD2mN2Ydz64Hsq1UDU8
	 M5VvsXME0mtBXK6Oyy0Y2AtXpgg8is6SMiRvWeI11TxobZ7npy9iaeiryW5pRdwgNI
	 oaly6EmCuKJpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67D0C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800744280.26774.14227302140077308517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f450acb782a9f5804a936bd83f43b82586cdbd9eb6da7fe03b6ee462fd3ed4a8
Date: Mon, 10 Jun 2024 08:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718007442
