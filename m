Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F882C2FB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756538394; cv=none; b=AtpZoRY4PmWD0/lCfSvI6s3hp0fnDsOthqzfSMxvLKJO1I/Bjb+JZlAh+Mog5EMUBEV5fqw6hAuWvFhv4Qthy66Ll1x3F9gYWYziQi1fdbrs4/EpIy/mnh5akSLglzyYkFexNFsEryTW7j3W5BQcd3A54zCGgElusYzlq/DeOEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756538394; c=relaxed/simple;
	bh=6dF8QpWHNW7mZdVHynIwYW2DTK1/Z7IKwhlnFklC84M=;
	h=To:Subject:From:Message-Id:Date; b=UsuPWV/bEUwblGyCRpY5A+W8Ko9AkomyRlWf/qINovYb6S8w5woHBnRVY3l6JhTUDABIq4mQ39cauR5lVgfm/3ajr1cuqYg8LN8Xvd1iLqbSnGJEFFh+ELjYWPF/TRNUy+zH6Z/L2pPN7gH+kyQEB9rTHvmWkZQb2f6MLMHu9Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oo/ayd1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oo/ayd1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56F1C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756538393;
	bh=6dF8QpWHNW7mZdVHynIwYW2DTK1/Z7IKwhlnFklC84M=;
	h=To:Subject:From:Date:From;
	b=Oo/ayd1FTtunwYvmedjyogoopjv2vKilO1ZcpyxQuodScIX46Li0dO1kgFp/s7iVB
	 mjiDYMquciA1M4TvGXPIbJ4orD2yfYwUjynuIdtP81xre7lOlnzfhsWfkfhMldD3YC
	 bo+K3JOOm5mT5U5+6byq9FhH9vHcy+AELBSQvmzkiBgWuQ/UJVLHr9LIAR11aiWulJ
	 MbfOFyg7ZWhggmIw8Bwvp3p4KSyIBmGf/WfNPS5NcPhvDsIS60kHnHZh+F+Xotptg0
	 HUpIiET3hpLveZ4TiNYWo7b3pSVAjMC2XBHksj/Aq6rlhiWyXUXJ1kRaPzkPJHaN1q
	 /+Te1nKrcNAUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93855CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653839357.17969.9555872996197310283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c1f95977ca35bcec8a3594ceae9bdb10787422be82f4a666248ae87f9a9ce0
Date: Sat, 30 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756538393
