Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA4F2BEFF6
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779349234; cv=none; b=CsIiaBhwvjd+ANbktjxmSNZRs/cgcIYF8RTQB3l2xFhE0ez7UM+K4btGdv/J28f6dI7ETrltroT0Rs3JSFtYxN/HfEG6irFmdcgHG19hKg6ch2d3yRMObvwdPcu5kHYwMG4SXE1qIagR7eWF2HeZs893OojlpU/JDbgu6J15BSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779349234; c=relaxed/simple;
	bh=2QlYp18fEFsOKNBwnSN1S2V65KnYMm7Z5tfnvr27sBc=;
	h=To:Subject:From:Message-Id:Date; b=nDeKF+MpZmuwe7VgmzCfLWjPwfBp1buHrHxuiorfZdL+INkdV5Ap18T24A8nzD6ts77uebJJfVIyQ7YJxg/0os9dUBjQOoVzdnq0nag+TNfYN7oW97kXrhfRKSElViUMJBOW6Zvn4sLLBHIPC0bWGU10M1iMui1/mszOwi/v+Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTWtGScn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTWtGScn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A9FC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779349233;
	bh=2QlYp18fEFsOKNBwnSN1S2V65KnYMm7Z5tfnvr27sBc=;
	h=To:Subject:From:Date:From;
	b=BTWtGScnrCrXxs1jayQe49Nl0uiiZLBqwRvnd/TSw4T4ZP6CMJk1D9IJABbwFH4+w
	 v7uvsFAhl2re8nbht02XPpK5KOV4w59tRQoCaaUSVclHNdNuCuU2wvG+BR56e63oUU
	 LvETca78btm8Z5G3adGC7HcU3ITYMyjyuNvprhj2AwNqZSEGEvZJcCzk2utzYHdeaU
	 5Y6bQ+mBRLalE2cYL+Kicg3XdyRZIhGQg0+OBnLzQAtJHjfHcq5foM+w6UEjcti7vy
	 2zRPtdplrwnfq591jDUcPaq17p/g0gm3pSycYaTrdJCUsKWWjM50eRVtgxR8ZkJr4g
	 Norlte0H4SnWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6E1CD343F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934923370.2845.1097198970448563131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7a164f5f3ba79f8ff376f0bc7b67b524e3c16bb92e1c5fec4dc4b436ac71b9
Date: Thu, 21 May 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779349233
