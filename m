Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F274824A0D
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717095263; cv=none; b=la/9LE6hgpqsEuax+30gV2vL22fdBKLxYju5PrRUgPDQHVs5TBQ1TuDWhHm94BwkHiPocIxAJkdBgmBtgdxbko0L5x9xncDxFyJrDoctSm4x95bcSAA7lJeyaFoFSXoaOjWD6s+dXqUmhE+1fn4KZBCWfB/kEm/TnYy4me286VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717095263; c=relaxed/simple;
	bh=9/U8XxMvYX82SUnlEr/5pB18KzbFiGkNNojEawgZTTo=;
	h=To:Subject:From:Message-Id:Date; b=F8XGsdeNwrAO1hhmXtXdQZIjzmmyykYxq9/INYCQVfyMh0axDNmEbuI+2xoDz3h4H29sR+c8OTLJ516SXahWD9Ehbva616WLvTA7gu5xEh88WMiguz507seO8VyAWZcEu03fdHS/lPxRpFTIA21goIO3v/kSOCCZUu3EpaY+IH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBsFBc2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBsFBc2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5888C32782
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717095262;
	bh=9/U8XxMvYX82SUnlEr/5pB18KzbFiGkNNojEawgZTTo=;
	h=To:Subject:From:Date:From;
	b=iBsFBc2NaXfJCwB9xndZvHBoK2yNMJhsadBdA6NIxErKI8RKmvTxlOXy+1XuBUbio
	 HQOCvym/x6D3KADctdTdVxrbDF7pbgA+8O1wyOnRn/Z9fXSo42Xg3G9vkE98tl7SLT
	 EWTK8aOgFZCcgDjkyGt+cSSXqkkbPKIuKefvuQS4/dl4rjvTUnoXqIlRBCAi1DbLu1
	 oESCH0Jq9Yt89Zj+Z5nfsH3mBQ3jSwE5rWnVIZkzT3euyN1FlCwn+6fdWusTCypOX6
	 zy694eWr0D70woD9VQNpjWhyxFNYMr8alGAXtxjuNBdUE6xZa7nLmYqmzHedzsL6ga
	 hnBO7BXIt6weA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B10C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709526277.4680.12647219214306136332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cecd1a3b0eef3e0a785cd9f2576d238ad641a7d042745d99f57ce891d9261e2c
Date: Thu, 30 May 2024 18:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717095262
