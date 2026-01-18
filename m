Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E6420296E
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768729434; cv=none; b=YdLKdKP4rKm667xYgqoIMen0iCnCYPjnfTWEkJOLxzvW4Yn3g4I0XyCFnbypEpieNPaJt9r5hXKvAIXE5z6JiQPPYTDub15wr+Y74sRwHnq43H3wqnjVw6aywfyqplYPHnMNPOJAnBmAwjiUMHYQR8R9hrSONwx3zyKl+ZkAzo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768729434; c=relaxed/simple;
	bh=Y1MyKeTFGGGCFSCL4vsbnxA4wxtJe57QPAS5sKoZxy8=;
	h=To:Subject:From:Message-Id:Date; b=Pe7ozPl8XKhhC+XyF9FceJEYQWSaZO25A01B6blRbukgl2521+oJGxupx1A2t/fJJc6+8DheCYI7Hmr1wasij2RJ9IOu0W+hwdTxzB/2qgUBDKzGrvHDwx7QNe89bYb/cZppHSa/qZOw/tqW3giWcv+Tl5OXZhha53Bq/sJJVOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJjitCw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJjitCw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F60C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768729433;
	bh=Y1MyKeTFGGGCFSCL4vsbnxA4wxtJe57QPAS5sKoZxy8=;
	h=To:Subject:From:Date:From;
	b=EJjitCw2zJXMgftyAv/0zKS4f77eW/8bFCbfWs5kwEAoLB3CyQyvVtwkS8Gvii8xu
	 6N2N9h9BauaCCbRP84W5EzM1/vvfsWK6/rdTw06SO2UXLXDaqefTNtV/iy5CrQU+kE
	 +e01dnQak6pgeaMsaTUuf4hBR0umQT5Y5jwtIu4KrYcMAWeFmH4fImio4Pk2XNco2G
	 utDjExrowXNvJ420rTrFvSqjCM7EJHCp7gKco1hGwzU9JVEn93sTQuTlvO8oPefCn7
	 ha/begEDbf2h3MbrcZ2aSfXsdYnIXhyM2nbsbnGrkulTJSb47rIbJd/X4kGTLwssW/
	 i9DxF6ZLauSdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95979C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872943358.18098.11252677398689484777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7e777211f1351a59ca1e37fb7aa92f4b520b355ba96a5b6bdfd4418696bde2
Date: Sun, 18 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768729433
