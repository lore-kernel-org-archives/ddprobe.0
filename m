Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA0925B0B9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780289674; cv=none; b=uXhVqnP9Xw67thg6Epm/rRrIfUvIafmYJlYCfaQohj2i8+/HSUda4zydmgAAKvo/J8qARw7lk7G6C4A8EMOE2g3iymrvap7nG2QdwIZFUEP4UP/nhZG6Yk6kfD0ptzUrZg5CY+bhKNXtqxk3BC1K9bas2op0ggunyPm+dKYnIN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780289674; c=relaxed/simple;
	bh=kOeyt9vnODGRz+myBStaN/Ur+UR9aJQPCbraF53ffFI=;
	h=To:Subject:From:Message-Id:Date; b=Dek8nkYQAK3saLljevmX0kHygXid7YdLUXF4Lu7BNbMz0lyGEvngWPJ5XaJjA0/2xGxCT8NV+A6IvHIli6H6SJc4cGZm5VUaWDK6s+lWA0WWEXvMgp28gdMmTIxwpYl6YoLB2ERROrVp+bLI522Z4o5SfViclNMGwqGhokliERQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDHGPxnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDHGPxnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06582C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780289674;
	bh=kOeyt9vnODGRz+myBStaN/Ur+UR9aJQPCbraF53ffFI=;
	h=To:Subject:From:Date:From;
	b=WDHGPxnJxBBudnuYdkoeKOMwASBPuSVAwCRpUfJKNqdjKUELhJxtmV1L7RB5BhpcG
	 5w4ZpueMGuEaZ0RNqsleEQuSPy8rCD9fFJQ0npmajUk2Gwd9ZuoGh0f1rx0ey9tGcJ
	 qZAPcpucCqzpsLgzSLSlvZjNkt/wGp2qZLRb6764Liau/Q2UtEmUoOg2hS/Mep1SYo
	 5a+/Fv/avz9XQ73kRUz45LdtLFJ4HKLwKY37MfandVX+aJ6YKOeXIyn+qZSWHzaJtY
	 Jtic/xq5FxkYt7gcqZL0gPFf2+HNSfB1IFPDdq4pAc06xDdMYArEZPgPy2oEiI2sBX
	 cwGgSodoIH43A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3CDDCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028967380.27398.1246081482615071431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22813a20606310031937d53ce81c193b12cb6720f26203b55b0fa3081a7286b4
Date: Mon, 01 Jun 2026 04:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780289673
