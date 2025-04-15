Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387E2194C86
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744701594; cv=none; b=tenhSbMjwIQxAeiTxw3ZvL79bxeLDW3OPqAoOUmca2k3GTY0CyM4oa//XZmrO1kDuIyOs3hPQRzyv4DZneu80bQPTSvjRMbQXjukoRtcylts2mYpoAezOXkHL33cAdm+Hr2rCtcCOVWR2ca80PhKzxHLc671twkq2wGBwqMqt6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744701594; c=relaxed/simple;
	bh=TAPNR/hX9xR+JEX/DsgGjJkTZST+339b9gM4iri56Hs=;
	h=To:Subject:From:Message-Id:Date; b=ophWjP9OKmWKILJRZNm4QklQDVoLI92j+O4O7HK5qBJ+nMPPZEbjIvpLpGfaW+jtQMgupYEIGbvjsvsRAXIjv/xXQOUnoZ2AD4uNLuYvkjM6JgSCZqsljLp+iCPFPjen95DCIVhzyoi79HHXzanfsZXLNYzQBXjRU/ouW1TYV8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0ZHBBFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0ZHBBFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56A1C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744701593;
	bh=TAPNR/hX9xR+JEX/DsgGjJkTZST+339b9gM4iri56Hs=;
	h=To:Subject:From:Date:From;
	b=E0ZHBBFeHyJV6lGPudtNkkoQ30PCdRBlEyfoZ7ySx8f6gZlxC8rZAskKqqYVIwfAE
	 XcB2aJrSBTihhJ5O9E2h5R3Ce6VKEuwmDgMLdZawd7GQOjPr//oXObPtEpEbOzlBOx
	 qfKVD8Gi96v3aXtX910+BD1P1OZ86QTPSNj49QVQ09FgP3sNxfFvgb8hdbcoMIvyLB
	 d+a5RnAZd1NtRAGFx4b7ugN55jBJ2RVE58AZVkAd0tr5PkEeRB995GX14u+N1AIpo0
	 EC5yP3425Op4Wfrx1y+rI3GihmYy+YikXC/WbdOB7qezFRBQkk2zqO8FCngKIGeCJD
	 raG3iFnAmF6tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94198C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470159359.31229.15241393616382799079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002c468c7ed5b4c03d25a5c02805df0703b27acf50620ecd725129d4f0029f96
Date: Tue, 15 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744701593
