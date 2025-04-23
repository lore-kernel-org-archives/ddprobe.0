Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD16128EB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745368193; cv=none; b=nhbPLlhPFd6KICN0HTLqZmvC0P4A3H2zjCJyF8IOOQkTCg7mpncE0FfpTg4MNYhP3FDDtHn/XJj1WcC8sC6HupaCBFG4gao4m6L5n5FJu5McRSeRuUek0NjD7KPQQ9VBaRYbxVJQYo46tFIklomej+UaXwoWTessHZ6zIbEhjZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745368193; c=relaxed/simple;
	bh=G2JMtfNjnSJsTiQhIAifvl/NO43zfS2XRh0BjojF0R0=;
	h=To:Subject:From:Message-Id:Date; b=XNzNDHhrIPz2FuZZMRcXY3M1uPt99sxQRp6y6YrNcI8ICUpS7AJ4ZxcdVI1C+3QuIEydZZWLaZulpfvx/QNEy7ZYXYVa5HtS5WaeEqbmIqFcdVK9p6+r3LloZiUYrIxarmUf5SP4BqBvrxjWmjuenT/M4IApZsHoeqXrNNJ7ho0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0T92j5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0T92j5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF9DC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745368193;
	bh=G2JMtfNjnSJsTiQhIAifvl/NO43zfS2XRh0BjojF0R0=;
	h=To:Subject:From:Date:From;
	b=c0T92j5kQM+wzP6jPhfn/mQVsdJnmjJ78viBoabOJTdBNiOHVvXWRJoc+pf3HMAYa
	 37Qo7g+M2dlvrRhXWqYFJ0nx8/tlmZ3/+qyXuZaw5u+T5ua95Ie1QZcrgeEg2ai356
	 Z1UsZoowCckDOjy6xDQJQTtzHWK9gd3UQkD1MlgkmjWWlziiG63u5eT51sG+QPv+oO
	 kVQhrNiWJDa/l1bZDqSJ4f4B+LL9dwGsx1+MfK5vW51HNZYWB6GeWsu4GLcgSwsQ9S
	 4RYOctEYLQJgcH2b6HrIDESQKoziInaNNEcKxuAL6iL111RcUe6gNu8NyWyiZsSKhl
	 qqKKkcYRo5R1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC1FC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536819357.18647.218590143083253034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64dc2995839dd147f3f3a1d23e801cb3967515fe33448eb1f13c575024ead74
Date: Wed, 23 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745368193
