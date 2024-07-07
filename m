Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3DA3A8D8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720376183; cv=none; b=hbvpo5PvxsOyTwdA8bCZE01SZ2URV3c/wr5O8DhxNe7tN8tFCvu3ueJ/LvX7YRAcFmZOFUumgtjQAN3335OLZLyJ/gLoRMFEAJp6JHhsSQbD+R9J27N6hcXkd9VFDP933MlHvzK1MytaBmGVrkV93dtHkaTJzY4cJO156b9nhVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720376183; c=relaxed/simple;
	bh=XdcYN/8zgKjn5hlDIx3VTp/zplEdQzTisPYBaojx9I8=;
	h=To:Subject:From:Message-Id:Date; b=Crr/dB874eUrLVzerdxcHkbYm6C0aVjt5U2KVAQql4jxPEowDfhGyEwG4lhw552CD1UqM7Gm3cqZpEpOa69VatrzpaS8yL/zXQ3/CMUk018/VfhD6r0ILnF29pAI7FkysACSiXGZTSwu1/EIPpaIYRSPTqflA72zirXH/NYFsAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIeKjfTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIeKjfTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49CEC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720376182;
	bh=XdcYN/8zgKjn5hlDIx3VTp/zplEdQzTisPYBaojx9I8=;
	h=To:Subject:From:Date:From;
	b=ZIeKjfTIyu4e5wU55M+IjGPpMwJCWUQuJ2iwMPq0X1VoNk/T5pn9igpX39wXaLQ6F
	 RVicTtwVxjGzp3WQ5VGzyw0R3lf4uqifWzfb1JBaZMIDgo77sA3WTHGyISLn5eQPKh
	 Iic3Q/Vp85lGatJGX7VxzBszTAxYMXDApitFkuUEXJSA4TTn/E2LHI2Y9iskYb03CQ
	 A4ipa0Esy13i1FdE02UUze2d6Tu/IcoXt1MNZOI3mt8XxKZE3yfKKuNFDLK0ASQLQV
	 uXrTGU9mgYAMefXJZlZRzTrP9PDmY12y4defRAhTxriOD+IZ9/VVKIB9zpQEBAlfRS
	 bVvUT3uXU2nXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF9E7C3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037618281.31787.8432892263915872787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d914431058c977e4dace87f3f3a1bf408c6c2203ec25fb42fc8b6dbe797d12a
Date: Sun, 07 Jul 2024 18:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720376182
