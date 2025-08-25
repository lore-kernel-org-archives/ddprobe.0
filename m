Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CEF2D12EB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756118394; cv=none; b=BYz+QtynUcVJBSlXOaajT51ntSEb6Vj8NzuzTcihHUiSTZDxms5Hon27CABMXnCILxhDRxzcRs5xZXf6IIHEOumZfSTLvyyZuTMFoFmRc3/svSBt6rtmB9o6KzFis8WbYx8xcjho7OOi24NIpK7BENG9He25ZUIJQ9AbgFvUjFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756118394; c=relaxed/simple;
	bh=ga+RDk7d4e1vhPm3nQ74FfIJmvKkHJI4VhsPj9tgL28=;
	h=To:Subject:From:Message-Id:Date; b=XiPRyy2DaMj4lVoJAzmkCyHwlrCqhTKrtzq+izPVuJ3khZ6CxpQFhDb41qKaodIbq3yBulJE0b6u1N+Werjhi2sBZWy/FOVD04tOE236c2joSVoKgGr2XpXH+KFGNekpRPW6yZsXEo1VkGD5D09yd/MucH1uo2Ca4DwHC6F1dyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8ow2Qvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8ow2Qvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A0BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756118393;
	bh=ga+RDk7d4e1vhPm3nQ74FfIJmvKkHJI4VhsPj9tgL28=;
	h=To:Subject:From:Date:From;
	b=B8ow2Qvl96IvcImxzAQon+QLHJpi/gnZhzWsW7z+iFLwYBrzf0eUcfDcoaZ+oHR1C
	 VQGYO10RCbegLqgtwaa0Ct/XUR/3hhuhtz0uvNKTvBG6IlJxqdxRYNhDQJuFgTLRH9
	 /he0jfen6VklouJc4V6x4vqX9dqDeJk9y4g0uKxGIJ1pttqXQqx45wbK0VwrSXfnpf
	 9cbV4fbUNorF/zc4OmWig6dgHCBz++PcabW9bTPGxHBDviRp1ZYO5tXQG673TTE03v
	 r0+6twSQ6silNANkwf8T8bXPhtu0qKM+Cst3uoTIUgif5BY5bqtA3GLvb/GvBPX8OL
	 5eImSQ6aEunFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C7BCA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611839357.32155.17982350814560303466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2f1ac67a49a3addd7c759e596b80bfa07e064bda348d5594c11d290bba4027
Date: Mon, 25 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756118393
