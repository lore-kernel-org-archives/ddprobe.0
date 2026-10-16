Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AFE3148D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792152034; cv=none; b=Lmoof/Bi1iU3bgSaUC0kEmVRFHkv79c2ee6QWu3Vos7dJHAEYV5mQcz9YUSIv3mGQUzIe5K8j2uEkKQNnjzsuU4DEsBdGHyMr4tr+wORJ9rsS9MurjXdXQ+1n7aetMIkO0/uuFJ5GHGc5T2GloUtV530lokobHkwVFXXr/1HWag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792152034; c=relaxed/simple;
	bh=hs3xb5eQxZTvFo+X9f7M9SMfE4rGiP3l36m9jkTh+N8=;
	h=To:Subject:From:Message-Id:Date; b=hpTsEFUhnIn+Ftg60o/mFUcVhag6ER4xz5xUYhoUqUsSK0JGVVCKB3iE6H9qv7BXQq6NuMnmu/IJQhqJtL7zAi5jwLyC2xWgbA6qpE/kJMf7EPDbncdK80JzCKimILQ2bEwdELIa0DX9tcz0qWak1vfZavYgKzDDD6hMqVC9pxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJpGAryj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJpGAryj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3070C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792152033;
	bh=hs3xb5eQxZTvFo+X9f7M9SMfE4rGiP3l36m9jkTh+N8=;
	h=To:Subject:From:Date:From;
	b=oJpGAryjuwzUV33CWgXs3keTivHo+OjMFXy71rcaYScoR2B4OQNfKrw11+qSKAxAC
	 LLrmVuGq2s9HI5BnHMGLQbqzfzvJHphnGeACNIN2Jia6oWV7wPOH3PSci0eeWnTdDH
	 undTqB4d5nbjNS/jepHGqPspY0+c0gLZDhSeL2VYK1ri+eeQtc8aUCV7KMYvSq6gfO
	 EW9nkAJNQzZU04/R/cJiz3ho73jx++jDWwmpuEfO/l5tvYmX5T4Y+7ob8+IjcxWI++
	 XkrQL03MmPq79L/a5ZZkJfbAmK3BqxDmUm2AoqT4pzJaKDUf64mK+GwP8kEawWU1y+
	 uVqcBzlNYouHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF8FCCA464
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215203368.24850.17016079458654770223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c72e97a4c47ba8a17c2b9af24bf475b08cdbf6c3396fe70cb015ffd39892179
Date: Fri, 16 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792152033
