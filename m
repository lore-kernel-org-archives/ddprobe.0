Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5C913BC35
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732746954; cv=none; b=qZnF4J89AJ2arQBQ4YRuaswXpb0u2zrkGv4uQ44rYzpw9DMvBS+eCoRsl8t8z/NmOSTAUgSvcw+zSiQD1SWFpnFClsChlgaBuu7KiDmIsoAgYseP/LOBpf5OeRWX7V2cGvhcF4jvpGicqJxtg4ekLFDDCHrT7fC0Xxj52jq9zfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732746954; c=relaxed/simple;
	bh=yL2lPmOmYNNM7Is/5ApT3OO78rmigex6A36Nt4qj3iA=;
	h=To:Subject:From:Message-Id:Date; b=XLLOpZBDBsGxWR5iDk1SdQkVneaLlF5STfSi5i4AXMNiGuyEXLn1+FJFeb6E0/8Pu0xBEW3tz6Zf05TsjuCCBf8JWcVI6NeznmS7xjTA5669G0FQ3AppTMVPsTizdguCIPSwyUhGBPO+OmOC07JW+OtmWT/zK91WfGl7JdeRL3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJV6G6Pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJV6G6Pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50C8C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732746953;
	bh=yL2lPmOmYNNM7Is/5ApT3OO78rmigex6A36Nt4qj3iA=;
	h=To:Subject:From:Date:From;
	b=lJV6G6PaeSB55if0WrroYdbF+vLHUMQ37W4Gj7h96+VFam3CCCp3c8JT5G2uJgN9U
	 zCZgLIohys6VaE1fCnUa43QwyIeQNM1MAbiwMvBR6SQMhpiMMCKvvxKXYRvgSmY+ep
	 8aRs2ko/r2nH2+Y7HLM/B2/7LCFU2snxqIa2tauYk3MljpkexWkVAmf/DSeHKO/4hY
	 o72sGU9n9i4bAB+avzpGId9g72NEDIozSNnMuZfnlHghkqS/20t3AOofJ4PcN6+tLI
	 fkqZYmqLS2hhqXyiOXhmrSoy3QZY6JF/WREI1XGi5DDaPfZzyezM2eUdOc5jtiswjz
	 OStMuUpITlXOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D9ED6D245
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274695363.24574.4210153258845285576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d406525f5e96e5b7eae5575747484669c2fcce86f423e1d59af0509c1dc29b1
Date: Wed, 27 Nov 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732746953
