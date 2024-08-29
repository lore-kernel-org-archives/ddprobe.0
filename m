Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358E2DDD9
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724892354; cv=none; b=W0YacX4r73KapxgJzyvK/NdQ75wagTMBXtA8+NthiEPegQT0FiMajjayvYKYi3aj7vbPcMpiF072wxsFqg0jKpjNeKLtwt8c2h6fWtreiNQ4ONah/qz2nnAtghg7uRy6faiqKNyhKLjHdm0kioVCS038r5JSAjc6Yqecmmcll7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724892354; c=relaxed/simple;
	bh=NY4EH9Cqu7NFXO0JNg+AyzRusve6dqHHdghRu0wgw8Y=;
	h=To:Subject:From:Message-Id:Date; b=RBjsG8JlhxsyopMgLji7TqFIo6XecURhqq5WQbJ+DZ5f2DORHelIXiq9PtB9EUEngUJYjCemR/90Rtpp7cEF5JNm/n2TaxRk+K0Tqk7ulluyVqQwb6JEVZ7sfExBhWhlitAUtx/0OmkE4W5crIPKUVWG1VACLi5mjWLRH7VGAs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuldBJ+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuldBJ+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD87C4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724892353;
	bh=NY4EH9Cqu7NFXO0JNg+AyzRusve6dqHHdghRu0wgw8Y=;
	h=To:Subject:From:Date:From;
	b=PuldBJ+IxSsaAFraFyG/YUjHddXSxLWr/Bin6QVEoys02lFtsC5FSERgrt82zZ1Ni
	 1sxceUFNjSvytjWdDdp+kI6oRQsv9nNMIasBskDnhf2pE6NRG5Jd8rolGxDJEp8+qF
	 ver8PmA7MrxzxcIUy98CBw2VuwNVtnudLxzVasZOAa0lIjNTYjdHJDH5ahTv/s4lF9
	 58Eus0RUA4cRD5ns0pnPNTOACFZ9Ugo/yoan6FVUQjqjlAwtZpAVzwAGDOqE9cM/Fs
	 fnViK+npUuXkHgZOQ139IFKWJa6dg3Ro5nOlRg6kMRgTsWt5QLqNM8/KhTbaUzJbYN
	 Wmd2WLcK8I68A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA1BC7114C
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172489235363.4261.15315270293497051988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfff761df032e2d6b90dca947fdc88b09c0ee115a990ab00d101d545e86750b
Date: Thu, 29 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724892353
