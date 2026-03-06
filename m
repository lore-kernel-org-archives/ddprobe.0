Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13899339878
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772818494; cv=none; b=pZbPgwWuhb/5rTaKuhNNEj93mvsdMCGsk4Hl77M1ec4wxcUpxUcM0ax4ul8cSL6A0b5+HLpgxw1vJXqNg2xok1RLcg4WcmS3NcSkxt52yiq6M0B2jwAxKy6RyqWk6wUeztEYQHtSpgy3hVFoX6SzdnmEgFWuTal/LOzY8ZnmlsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772818494; c=relaxed/simple;
	bh=FM+yWxwruHLCbLZuMYttsMdxtJ99O0w6dIONNrs9QCM=;
	h=To:Subject:From:Message-Id:Date; b=SFJ/ih4EUo0++aK0Ac8p5fS1mILmGanMMH1UKKq1Pw0i4NpxLhLnMn7rmzCsbKM/Nc42J9nQEzatetnBe3BoB3sR3qzqjZleRJrDCix8l3JdWq4WPFX4PTZ6djK+oldeMGFxt5XuM40Mxk9MoG6vsBgTRQ6fT2Z8R1mMYpNCvEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfMf9mDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfMf9mDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A6EC19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772818493;
	bh=FM+yWxwruHLCbLZuMYttsMdxtJ99O0w6dIONNrs9QCM=;
	h=To:Subject:From:Date:From;
	b=BfMf9mDOMmnTPYt8WoD+Tm6MYbhg8WYJI0h1v8eFXB5u41xM3M0lbrvWzZVKCrH6z
	 Yz2iZoneOEOdhrrHQTkhZ5X5fqay2d+F+CY5w2M0Ur9Mzsd2JDsJO2Kr8ggW31dIBn
	 wtNHYCEijBCt9G+Pd4xKm3bd7tCxlOtDiyilGPZzVP9p1/yrbWDxNKqRaAH7n2W9Gc
	 WaDgTxHa56uoBORuFqq66ilHwHFSlwzYOMfrncqrf1RVFZHhkpt00pl75K998PCSZE
	 1d2o1dvV6a2lewCb4pj8uNrjP9aNvwil+zLz/lwUkFzkVApNAUMFnIeOm6PrzWqYQ4
	 KZcEjYd8dnHzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904ADFCC04F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281849358.12252.5952915730413664948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db649a18e9047edc2e2a05f0f840f3cf15257e648cfdc61dbf43ab10a8a84e0c
Date: Fri, 06 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772818493
