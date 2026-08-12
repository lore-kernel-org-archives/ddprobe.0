Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405392BD587
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786502434; cv=none; b=PUjMgOxncy/J7lf6dHGpQ09ZBCW62q8QHDhOIX/AcJXBEW5FaRDZYmqbSiG/yg1ahy6iPQNabDE5dcePVpf2Nj1pyTx6f/ttoh7Ck2FeQcmY3GOREAreFmiymImvGjnRf8lTdsX/bl+LBlw1CZ4nYIPMJTne7FBssBm3FP5qW/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786502434; c=relaxed/simple;
	bh=Gl176R7wlWot3xrXyWtoF0evigpUqljKcaeb+3VAo7Y=;
	h=To:Subject:From:Message-Id:Date; b=JzLD3eaSSUz+YFPhfJAa0GIGtNOPhHauF3OO19L6ODSt1CV0RxRAVSZ5E32JnTP+/HqlCI6oqTKr8LH+gJh8S0tlEEwYWb2jGsUkgZBfn0+PgALROQN2KWKDInO3FtN5G2+4NNA4bGjb5PJHEq/MlIIwwTS2XMMLsEI1u/vqKVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1Z2KIJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1Z2KIJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C038CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786502433;
	bh=Gl176R7wlWot3xrXyWtoF0evigpUqljKcaeb+3VAo7Y=;
	h=To:Subject:From:Date:From;
	b=Q1Z2KIJDzetj5jx7+pjSKfbRdeOHn2kg1P66P4j4466FC2XvVUBs0b2VY9TvXXB9J
	 1ykEc7khdyqZ+iwuC1+r4ZwJfkbhx0fQveTg5N5jipcbK14SULh2RF5p9bTD3hwdqg
	 6K9vjzPr0Ja+gXg22tloDPSPqvfLCsNUrz3e63PciMkAXYn//zFrMvTaqZO95t93u2
	 3bzoH2F+O0lLMhFmLaE00WNTaEoDX6BVCkLgXyJb/4FeCO6U5BQpohkOJ9nu4rF7UC
	 eGBTZNBwRSkO/E1zk8+edy5gMM2ga8jp+1Gjcfcms/GKS1BQNCkQIgMMk/756F4IDe
	 ania5/yn6WdVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC53EC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650243369.25979.5103511404974752212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c68841983986c845acf0d27e061f99e805329effa56fffe2abbac034cee193b
Date: Wed, 12 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786502433
