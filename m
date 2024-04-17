Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593CE13D507
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 15:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713368963; cv=none; b=OZQVbhckEIKgxjBaDxHxzWaaF0hPz1NNdh0sLf/zC07mNbGHFhkEuI+eoFd5hpDlhtwMaWj79Us0axHfn8iYMCYZ04Swsh8lSUuGw0q3LINz5iK9No5FWNNDbLNgb3l34HGkmw4T2s/6eFumdIpC1NMcCXWzWmcL9yBiKPlRqKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713368963; c=relaxed/simple;
	bh=5+cCXmQxDmTNWf+CM16g7dneDjO9KN8zJRHEcTzA/9Y=;
	h=To:Subject:From:Message-Id:Date; b=I/95XuHmDcl5sJTl+BLVAwkmF+JX5RdFIfGNpt5w8YxzCQzw+pV0w6EGKjR5Tk7wfnnnmoBuhTBxR5mpljN70+BNbySbWpIa56/ftMu4poaRUQnqovvIkDQ8q7aJKIhAnl0i56OygFxsYeZmADK0HBBUY8B8Tqkfc8ng9TEqL4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lgn78hFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lgn78hFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA924C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 15:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713368962;
	bh=5+cCXmQxDmTNWf+CM16g7dneDjO9KN8zJRHEcTzA/9Y=;
	h=To:Subject:From:Date:From;
	b=Lgn78hFxnxEJdT0PfB1+NgHy0e0NCd/hKiIImCebUHLA5u0cSOCUXCdfmUwW4B55g
	 neJzjCtpBdMWGjAeqmfOYC12Y1rtOh0lUOp0nIUo/262Vu+kkzPmt8MT8r1VhU5Cgl
	 XwgYedl4JW0mGsOAN7HimlKgVbgpT684VqBgb9tNJ7wrqeU+MmgJOhv3qjQNhLrcvN
	 0WeGoCQ3tZ4/heAaXAv+5sJCizyE3c77t9SF1snPvu05D4YYzUl7obI1vfgWRNUtFe
	 T19fiy1nCkP+LN9U4kFMq0ffXqO/zFmMNeS3FvF0ecegXjt5UNdlDMsTJl7mI9FHkA
	 +8OqHRP8JRpLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A46C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 15:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171336896280.3695.9638245423742374985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becc9ee97ed2895dfbeb3419fbedacc4a6bcf2782f5982c6bcb6993602564208
Date: Wed, 17 Apr 2024 15:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713368962
