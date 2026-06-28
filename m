Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4930019AD90
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782656914; cv=none; b=rVeFdunigNpndVAChRnRtPJaEETWUIlGD/UkaQZATpC373WXWvqybpWWFWjqZkpIN9CGxu9yYRuem3MzapI16sFV35RvbEXoOZ8w8oSvAPu3LMm9G+gs96GogpPDOqJSQJULqeasPBiKU6mxYS5WRkOzcEPSu1AIMHlRVvE9Rt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782656914; c=relaxed/simple;
	bh=ncNvri8Uk8BroB2LTitFY3hNQXlGxluqGcMuUbZsX9k=;
	h=To:Subject:From:Message-Id:Date; b=nvSDQMnRZvJn8LIbj8JnDmn2FQcM0B6bfU0ahaokt1PH9U5v25YyyrYb7RWqq9N6pu5PUQCMnfJIWsPslBFhLGUq8r6gHQGsN1CkyPR16IBLi0yu39Wy/VKj4tDBsRBeLN63gFSco2oZCH12VNm/Vl29FER7iweNLwWJkkxmAmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3Ejhqek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3Ejhqek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7AA5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782656913;
	bh=ncNvri8Uk8BroB2LTitFY3hNQXlGxluqGcMuUbZsX9k=;
	h=To:Subject:From:Date:From;
	b=h3Ejhqek+3YGKcDm87hzyTp9ODc4/8ATXN79wwspXDFmPkzpz14mBac41gKDc+VQQ
	 4rvZxpc3DggR1pzepWnlG0p5p3s0pexoGwgiaBXOfxxG5jpmZUIvYXyZb5mNs+5eML
	 8S/e5r4IwD9W6/JgMgtsezelV/Ii2wv7eUhhlZ+5mbsfqBbVwwgA9sakmhhaCG2NFm
	 iOkFaCyBOj0NFPLMifEt7Xz3j8ny2Ix7Wm1YfGHRwYCasNWGPoikpgyL4cBdyD0xtY
	 bmoAIDYH5TXsrgvIPyzrboBuHK3H2V+H3LdO5MW/56L6rj2vf2O0wAmkjNQTuwNP/B
	 XFpcgchibHvmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE257C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265691370.23294.3827055395208224312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb63f64ecbb91fd03497af342a04e88c7f2987e5bd4bfa1d418239bc496b58e
Date: Sun, 28 Jun 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782656913
