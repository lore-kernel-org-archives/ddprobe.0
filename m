Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0A4376A10
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790805634; cv=none; b=pwtQh/hDqSZfe7ZlCeQzlGbO0l6BDEthWETYCgaTMAN3A1EPYEs/2otUMtl6SC5XQi34WcHO7yZxtlS7t/amz4FonAb4xGMz/Ao9WE7ae0cB8gq0nWXouEKqo/xocQX98Vp2JHdXTru2WxJkJ/7IYVAtwA3Mql8lJCj78kjcVz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790805634; c=relaxed/simple;
	bh=Y6YORzlIrlP7OkWDcw9Trs7vb+kdQZcOtXkxIshaERI=;
	h=To:Subject:From:Message-Id:Date; b=n/W1BsGodmAkRCe0DsgNjnJ7vivREp2xWmNXTw9tuLp8/AwC65fLPzPRDvIQLQpQeruQu/5JKEUHni7rEiLUsNusXbv7+FXp6b+498RuYPQ2yQAX3KpOaz9XSrwE9uqQ/3IQjywR0ifaPvRYkBstb6mVmwyeLtxPOknINyqYroo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgCFYxBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgCFYxBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF461C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790805633;
	bh=Y6YORzlIrlP7OkWDcw9Trs7vb+kdQZcOtXkxIshaERI=;
	h=To:Subject:From:Date:From;
	b=CgCFYxBZDrg2EZOmK7qjtDxqewLiQg3xHUfl34ZLRf4lIbiAb+usKS70+L0N3gJea
	 FyxwpSeWzpmJrCrdEZgSAGbp25eC4axV/Is3GqANy5LOOa61RfWnjLVamjM6M4kyc1
	 XpD6fGNZzx9G6VCHS+tQD9/5mHFiRBw6AZyw+TGMOan0NnfQeHdzyS4+PsrlA7LO41
	 kqe/CbAlMNYlTyI5ELLkFJNlwdfDkkWIode9OgEU1T8awWY29s1RJOM5cKhgbltBD1
	 AC8HKEvx8yiurVsJOf2uM9grRbtAbN40ZoN8IxOaYHyB5ZNWt8bXsYkqWRQvEYQjYA
	 lFXqwUlpuXMfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD33BCA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080563369.30955.12041605294499301096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087b63f8c9c62211c35d0b0adbb67ded648a8adb4810ec77fb0b82323e28c65f
Date: Wed, 30 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790805633
