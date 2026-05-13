Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E211B6D1A
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778713234; cv=none; b=G2QFuCEvfRSh11DqXdvwK3c0PosqM7nsMrxGCPpLH8ZAGZ/UOSG5tLPmClQx5TWwGqlrDgG94asUyfCQBIE1DMWOYzu1JbhMbHvt2e4e1FlR41B5Ux8nSc5vk1KU8/99nJSNopK8mOpdb7FHOpPX96xLtO/ANU7REcgJq7w3KaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778713234; c=relaxed/simple;
	bh=KBcX3trEj0FQBjgjGbJtYuG8QDPnmct8CO1c3VnhB9s=;
	h=To:Subject:From:Message-Id:Date; b=iNPYwVIe1aBOHz3X+vebfZ41rjx2u2/VVMc/5RkZroJzfrEops34KxyEI002WulETqyW2KYAx9/oRWKevPJgW8ROUDtTglo1sd6ruqK01EIMfOOAfrF4zP1IWltJEIhkWZqK+VNjM7aFrVhDNaN5jFd8uIeY07mHsGoJFp7JOPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+Pqn9Rz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+Pqn9Rz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EA4C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778713233;
	bh=KBcX3trEj0FQBjgjGbJtYuG8QDPnmct8CO1c3VnhB9s=;
	h=To:Subject:From:Date:From;
	b=M+Pqn9Rz78TyyrYjfMZhh3Lurff15uilW5y7+TTuG+aYgg/R4Pr4mhNUNLdurRxzJ
	 6Xj+btyMatrZFB9ukbko6bf3+lyMrgzxDb4JuxCuDMw0I4tQkrU278dS5XRJwPcNwE
	 aEgr1z1HpefUlgysI2V9cl5xnZ/N1kUUD4Lun/j1KRY0/nTFvDJHtydUh+h+/V93FK
	 8JAKs3RKBvT8veB6KwKFpWQJiGmRLCGvumJZBujzHX1LNJZhBmHNrQJunFsaxR7JR3
	 DZlw4Z57CVONZEDwrxapjcGDWttSwsgvAwwF4jMeOpvvha3XZVAWFq92KiYaEpC2Ql
	 oeq2lgZ5xTOPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE4FCD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871323369.16848.8726078396891169906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4417cc70a8b25ddf5d53e2823cb5c4ddcd4d461198506e1b890bef18b739d9
Date: Wed, 13 May 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778713233
