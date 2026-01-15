Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173D561FCE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768475034; cv=none; b=MSTbi2sIr/+eujxRLNe1IFRrW4WRMlqRqfhREpvwGwiAT85UXQDfYegowXpaxOZxsn4Ya0O5l93y92Xtl13+ftZm6IfhKScxkYdF1x/HXqtTLMVKnhz2S5Q5hS2PXTTQZwocUZxeSAjvd3jgvuhIVBKwkgR/Zv8nUSZ0ZTo3iqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768475034; c=relaxed/simple;
	bh=h0RaaT5AqYXs+c9aXijNFnBkuNOHCJrnbs2HhtPj6l4=;
	h=To:Subject:From:Message-Id:Date; b=Ij1kveau9oibtyZ+MGhq80vVce8PAfajvnqjd7AyAugrcsv7AqXCF6luxasHrHxwEnQlExByL90cjDpfKrRYggXe+gIfu2UkFmRvS4JIzAyeh2ZDsZJEomIfrDpyQ2ybTgYpHbhz+Kj+1rfTpFPqAUXCLzsGlSr8OhJeoEcgLO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pL6NEwj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pL6NEwj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC7EC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768475033;
	bh=h0RaaT5AqYXs+c9aXijNFnBkuNOHCJrnbs2HhtPj6l4=;
	h=To:Subject:From:Date:From;
	b=pL6NEwj6cC4bC9/9cE1SvRl+Ai3thU+zTjwHsoHmjtyGta1owZhr89rGd/X5uwPZX
	 OlhxxADnueJmzeON4Jm9qApV7qor87XLjMBVwoUpeCrsfThzd8fZMNGxLO8w39FwYg
	 8CsCnN4DqZnRXh6BVkejXQo8eCPexHhF8Fl7oygmVCDW4sX6gW8R65gQcAYM+JakO/
	 XeWGy7oaERkC7gbsIP0+pW5pTQufehc83ZdGR/CYcd8wu7224F24+5rO+jNSbXz7+X
	 prBMriN3kW5zgI1+hE1hIL0ZKFooxw5DQRkyYtFkY4nNx4VRgOclNt3NNgbBRT95v1
	 ANfXJveeeBjYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92DD41170
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847503357.15717.10908674209213568594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6984d2a7673561977e45a33733b7bb050146dbc8932e960232249071c74d00
Date: Thu, 15 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768475033
