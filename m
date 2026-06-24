Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4142D2857F0
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782297454; cv=none; b=Szlg9Dy/d8xLTh7OkYDzD1lnb++uy8mx/wuyFxSAmTutgJZZ2i71FmZlZh6QTuK/lt/cHEXHECilpdu/Qx9Dwz/aMyIvIliKjqpTwqm8POyj9pvbyjiBu/Il4JAauN18lamY+SUayJQqOQfSwS8HvcXFs8x5xvXrMGTYiszj3t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782297454; c=relaxed/simple;
	bh=Q2fD3/BqlQnBxWKOMhrVnf4yzR9LNYqgtk+PxzmJAdc=;
	h=To:Subject:From:Message-Id:Date; b=ePSJX3q7MK/7pxwJ4ly156ru99YUwZ0bAlmOlCkP92Z+RCpkFZbt9Dz6ZLtWYs6CU2Rqw28tpbPnOMtlq7hfN8mqkUZzUmCJqSUqGMkMmfGSe6hBx35RJ9rpBYJG4BChIRYkZDgqyn4jpvgnbSGj+HP3c1LV+rot9R3L5lOASmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtFu2WJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtFu2WJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E851EC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782297453;
	bh=Q2fD3/BqlQnBxWKOMhrVnf4yzR9LNYqgtk+PxzmJAdc=;
	h=To:Subject:From:Date:From;
	b=BtFu2WJWnIDLKKMXF/zFGFZ+PS2JeOs9f8GBF2Olx5zRiZ83OMRlogoC7veYajVfd
	 I/kZjdLXLGVDZw+Aem7NdbXYAt2k9jQAHPYngWkhOJCIKaaHgFKTFTl4AFHKlAUThw
	 ub7vtMF3Osl9fqx3SDjakpmUd3ddVgXhqMDHfJVq3fCsQ9OxGGJepMF3yoZ2IlCDoK
	 tPoWYfkqBo7su9nu0wsucoKcNEqB6y0eFxE6EEFloRI7Y1e95wPPxzLYdVePcTVEfz
	 0BhQ6wGt9av7VzdbjWJXr62fMb6WuznLlYBKf9rxU4GxnRLqtaWeJFEfKhstklHQV1
	 miEAmXg8M6pIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57CFCDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229745372.31260.8714879645913521722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4892997b6eaddf5b3730cc4d6abbe5fde7f598eab0341836ea51b24677489a6a
Date: Wed, 24 Jun 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782297453
