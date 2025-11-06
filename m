Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BBA3376A7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762436393; cv=none; b=rdAZEi03JzNphVibgYHqwxA2EtcQIpny/PE9jR5o+/EOoIac+HfupTOMlMFifdumk51ST/SFNaiVzhtTd39UdIF7AxOFFCF0wyI/aDfeXJk9BiCHOsPTGwegOr25K43spqgpcMlCJLU5tcaKOYlJicvpsMf44b6X8O0DoEkraLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762436393; c=relaxed/simple;
	bh=lkkaPKNvujxs8eEvnegkYQdxgQppsSFRoE5ijXidKRU=;
	h=To:Subject:From:Message-Id:Date; b=eb7ykg9V7Ku9Cco7Ccst0rOOPXjPZ9Oi0Cov54qiMMeNZ6wptH3eCwo3mHh0D8SaxJJuvsyNoWRtmXIJ14vH6Jz2HqM38FzvaL0a51ejNutuFF99jFmA++aqUH1iW9hqBBiCE9hZ83HNiujb6jnfLVANiR6Lg60UeNZu3Vu76E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJeysrro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJeysrro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7044C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762436393;
	bh=lkkaPKNvujxs8eEvnegkYQdxgQppsSFRoE5ijXidKRU=;
	h=To:Subject:From:Date:From;
	b=CJeysrroI9UlOLGpEFERVOHegzXLVb+BH2cCfH3VRLPHg46g3Fn+0ixh81yJFLvQo
	 25v9Z4zWzzP5HKIaqY2s8ckVGTuf6Abq4+vVdilM9gK5VOdHzU3VVwJGtf7xHMDFOp
	 iBL+bGun+wbsQUJk7Jq7mtSX2Wle/LP0qKbLoVNf12RsxeEip62e72ccS9G4bg24Et
	 P8X3isEzI2uOqPXD3EbpMXtz34UmpNY6uBhAwYL0UFsp+/cRu41ICCi39I0baoyOf7
	 Z4MssxxZ8RFs2LqE0KzwD76jVA2vbDy8iWjueHVZ1cY9aWucup6idS6wq/UU90pylM
	 4O3fWAfsISSkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9620DCCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243639360.30653.4189962860407811632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a49c7a5f0246cf23a6a88df0f00009810a7d6106ad0d4ef4ddbb37bedc8776
Date: Thu, 06 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762436393
