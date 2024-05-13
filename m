Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7446D1E493
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 05:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715576543; cv=none; b=K3qzi9djwfMA7DdxH1JFHR/ym4/4sGXDs9F2c3QQtROFKdugx3B9hmq11zHZziaSPCVL556sdmZRGsoJKchuQP3isJFq0AXW+6q2u7KAo8AmTCA7yhYJ/5qTKYfhwbwoB48xzxfDl7Hm1R6nLT+WLy8cm6Ud+Do/ILFHr6YlvWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715576543; c=relaxed/simple;
	bh=qKjH3pGII579vukkpdxiIR6W+jL12i10Kj/TDmrkCbM=;
	h=To:Subject:From:Message-Id:Date; b=SXF/P8oozCgOnvP7ySV7lOqmrZVCt7Zii1kOwWsri5tTNb8RP4V3p3nJ9/QaqoV6m8qIk2lVTdKJyss3KVz402JcTX6/t2/7L+1QASxFS9LSOyTJnqS9RwgRxW7Ilp9BC86kRwlQlOT2TaPa5zlTTuAQHe7h0+SPSYbOK7f4Urc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+I2Odh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+I2Odh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB46CC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715576542;
	bh=qKjH3pGII579vukkpdxiIR6W+jL12i10Kj/TDmrkCbM=;
	h=To:Subject:From:Date:From;
	b=U+I2Odh29yWtUF4/kK1BLekxol1Mk4G9Y5X0D7pV3LTBrvc1iko01Q2luVoVdc3tr
	 w0XoUb7Qr0gJV6FQLQhGhGfdtSHOi6czZ7NvBuGCuiFrvHS2+872aUkib711y53CEJ
	 dOuwZMncabsACXAmWKoObpgWWEgVhkOxW8lH31RETph18sgRKYQ/tOhmLKRCn9+M2P
	 DLgODhQZXAJzgyhzwoGePkqPMhuubAsp2KZqMQTvwsJeCIidUR8rOEZhW/EySNMf6p
	 46lHTafKtPlEX3qieropluIhb4yWTHWnVnTbtTLFvNzREUJ1fUeSL8x3/COmd2XjSX
	 58oFLiJ0aJeUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C52D5C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 05:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171557654278.28828.1182300822348870487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f590553159f064298eb2cc6c681649ffcd80d459b70e2784b0993522039fadae
Date: Mon, 13 May 2024 05:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715576542
