Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C75E2931F3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787099434; cv=none; b=dciggbgS+VdaSa7C7DEs7Za8uIS01qVXBmggwywd1cIPLSLBcYw/h1vOha5CpjBtqLXHtPJZcRaBH3dy5n0rAkYW87ppiLLsskIdRlUl2RnEiry028+Z117AZRVIp6a/zprXe9cmrET5ea0ILM+OBI5E991DKN4MoU27sT2gAqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787099434; c=relaxed/simple;
	bh=vVF2yiMOKi/09m3UcVPRsnirSBzx1cVHgk0CXD2p0qw=;
	h=To:Subject:From:Message-Id:Date; b=ullnf2dfLRrHeXTGfusyEhcTyJC/kBQ+IQh7ZMoMDQD+6arFG8Jq3h1jtxV27kjZy7PjfLt2QqZkOMsT9ioi8jGii7aY9Tw5iEIqaeJTyjKklGvDVoBw8kxUvp/AXRnsuxvPYZBLwX8aUQRLwyAeWclZzKatO8sG0+51q1yblUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5tXR9JM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5tXR9JM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5873C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787099433;
	bh=vVF2yiMOKi/09m3UcVPRsnirSBzx1cVHgk0CXD2p0qw=;
	h=To:Subject:From:Date:From;
	b=V5tXR9JM8HFGRuUMrqI0xA4VdgScFM30aRWCNoxPPmBV8vnSgZqp1H6jEBL0r6LJf
	 KgAluJlHA/WyDBcXDUqOs1orISg4X1llimNktaeLhBIcoUKFOsOY2KaGyn2uArYrZV
	 ahQnnyUFRW8IUdXKJL3VeikvmYfH+/toHn3TVQzHt7HpG1pheMjB7rkcEiZN9DnmVm
	 TaixfMw3qniAEZRqkwL3rNqVzM0YeSmEC/875TIkKv4jZoJeECXjxL9M6v9tqcG+lz
	 enN44g/9fw/XW9E2mXehpmX70pAe3twZlGbRpitSNuMv/nlKnuZ6z4T335VfTRjVp0
	 PEtYtDgH/+JAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C0CC5DF7D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709943368.4993.7627810454838516682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8850c294c9494f69bc1533a4491fffb5e9bede49e6da668812f0a2ad3d473978
Date: Wed, 19 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787099433
