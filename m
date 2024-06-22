Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562F75382
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719041543; cv=none; b=i0Mpz6qelnHY+grA46KO8evcQBaJEAN7V6oNKB91ThyCNEg65MKZDYEEQc1bEO36z8v1roELOIRMKDLDNQ3k4ZtueljH1x5StYpEMfTtttizTSFhuFu/wk1Eirpuao8K0Xun0v0Dwq+z4/vOHTIbauwAeF/VH5eTp23PD8EVfpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719041543; c=relaxed/simple;
	bh=50z9WOfC9IjNP4mqohMlIIMSczklALqlm3YKV00pEQM=;
	h=To:Subject:From:Message-Id:Date; b=NFFabeQizKovfvZl64+57yQr9rK3N/z/3yI55zOoymGmTtoby93bDEVFUL+ShEmDqBeuZBcIyAiKyA/O8iHycx8Cq4J/UIvSmmNY5NGPSYBaJ8AjdGQ9a3JgNZIuweTE+WfU8G0vaQR8mEN+TeBJSm36gHFhiWyMRFY1+nJEpig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzB1DHax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzB1DHax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3106C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719041542;
	bh=50z9WOfC9IjNP4mqohMlIIMSczklALqlm3YKV00pEQM=;
	h=To:Subject:From:Date:From;
	b=jzB1DHax7Pa2vVcv0ux725dxXNAiE1kd0wiWH+/hbIM33z8m89tJYlHxN+EN+/fNx
	 a+qD5ARNrHN3p7r+gTl/UonWvJh5Tr7Apj+YhMgq/oS+G9ponUe8NU9kZV2kibJ+Jz
	 Uq0CJG0BltH8inGmb1JvEFlkJj6MGPO3WCP1mjUisQ8mRVQ/WWliGeG9I0HKAoCfPK
	 n5Cn6BHhJqJtkYguiOSnwLC3zmiutuEPuVoDj6MTzpdQ/fSRNyGOPEWVWx4ZpXn98s
	 izuuQiFReYz6IBVTGq+jmb8wbgNfoIwV1ToY4LkEXqASBN67GvelOLPDaTya6rSKD0
	 T53NPZKryD3qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9693C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904154278.8041.17288180408833974339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1a2698443577458e0c22d2b96d278181e08113fe64aebbb8844572963ca73e
Date: Sat, 22 Jun 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719041542
