Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BA83D9DB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786095634; cv=none; b=Ns7u+W8EEEcTM/N/TG04aNAI7/E0/9ekRT1OQpm58fawAxoFfEcDhqlmFoD914i/zUmpsH5OeBN/Dl1gcvtt2e8D727efzJ0cMA0eWC2jWkZZa7NDHH+B/5Bu0BQ/FL3dspJsKLExgrMeyPZNgVWsuRrwNSZ/DTbL7NJmr+nsOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786095634; c=relaxed/simple;
	bh=o7+Ngu6INi9aEGEKILKeiRR22knCvyRHGl7tFvLIP2o=;
	h=To:Subject:From:Message-Id:Date; b=DzVKjjdTS0uASAM/Az0GocP3r0Cgo0wGLHh5ru3bEzjBzL1ii8n6t+BP9DAMTCW7QwBctWY1MIErfaQaN19JBS0o4by6fR0g5/kdtK3VQYzRHuGAmRskOzjmsur3ADxI0KtRdOTPB5WwLR8eGhuZr0L4hThHDbgyO2a4LLdfzjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFz4dv2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFz4dv2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02DAC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786095633;
	bh=o7+Ngu6INi9aEGEKILKeiRR22knCvyRHGl7tFvLIP2o=;
	h=To:Subject:From:Date:From;
	b=CFz4dv2YsOJQSth68isq7nZjYPfBfqPU6Tw2KGhSG+le71b/r4ZhEbKOi6KGAC/V+
	 enc/UmqebUc8NvYkic3I7LVPGUcBzIDwmq0QYwHlfSFDG4zXiZ2XpM8mAni6aSq81S
	 J0Km3yq0zhekJ5GkjS1ONMk29FA0OMcX+apE6Whpf+5p4Rd5Yqymjz5vHCTUaPSpPQ
	 XuogEN9UMwfFsGD5mY7LTqspvNtO1KiBSBZqC5GAylM82heEAE4hocrn4uFd4Z2tzY
	 +2bIaSaAFy9ry2WOjZv72dno6WXKGYVNhOlf/xcSiY+7IScH9gO1hNaI2y/MmH1gTA
	 fSrDI5kpiC+MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2B8C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609563368.12983.1864906860741097667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78cd7380d4dcaedbbb5bce72bb24e0b3e918f8d919778fff98d54215f538f904
Date: Fri, 07 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786095633
