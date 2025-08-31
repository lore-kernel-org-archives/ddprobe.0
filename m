Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF702571A1
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756645194; cv=none; b=WH4AdH7akJiN8e26hgRioDhdVMZSPfgQHb/P9GFuZcx7VFjfZrs6g0A0syUZcZDIS2ZqR7BzCtnno1J9JA9cnWftgLZE0U+4YTFb20i1bajpuLlTeFM8pkfrCbWROvN7b/Mq8pFMXtBRWywerNP+ezFynz9s6/xOyIKpAD3fMyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756645194; c=relaxed/simple;
	bh=qotrUWyh8pwVL4/dI5bveMonSsQIn3N6WDJ3it2x8G0=;
	h=To:Subject:From:Message-Id:Date; b=OjEJLgjeht5nL38EIC9XNyDQclf+SaWNYfVbu2sZHs1LwnrjxKbSBNq3GUNnKP5bv9F2l9RwQDLNE2RiuGbKq4XQ9gnX7FeB/qaY7q6U/JYxaAJfnS+p2FfzZMNfZJzp5Oe8bVIM4udHBz7kgCKLLdNl7zOVguK83uesnsXSSJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keHJJwIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keHJJwIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16EEC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756645193;
	bh=qotrUWyh8pwVL4/dI5bveMonSsQIn3N6WDJ3it2x8G0=;
	h=To:Subject:From:Date:From;
	b=keHJJwIRXsdCBZDNeMd3U4jCjlNij4JcNee1n18EoLDF+JIRHF/hES8WcxAlPOkBK
	 xksp/beQqXKYIKnvUJMP3tvUztYH/zoOOSpe1hvsrPo3vCvIHpZSeipHgCoLnsSgNP
	 2I1+RSzk8xfzYewwxGtsHIZTXnbKNz6rWQNVIbGq/7a4nH0BuNcHRCJnI7rGXp+Cru
	 FM08Pc9mPQf4rW/Gfnaa7xs/EEgNnzc/rx10HaeOKeN4w2MloW32zZxEfMoJy7cTSJ
	 3Uq5Y7iA7UATr54Pk36iqBcwT1FHQxEMTvJupht2r6UFugHpEIjIChIVt5k9zPpdgj
	 xkWcbW8QeX4lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111CCA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664519357.12841.5322665205748164870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9f8c235e231a951f39020300709ee4a7028c3ffe358b122061b2f43692e03e
Date: Sun, 31 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756645193
