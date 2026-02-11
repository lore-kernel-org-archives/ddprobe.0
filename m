Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB476632
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770779035; cv=none; b=OGwNiNX49JcrU9Y4zdrzErnQ3OuXkpNbmTwkxRv+e7DN37xIKKKxfAOCHmguHKwmL4pFwuRL5GM/9KKcJQX3Zl1Bhgz7yo+N0rtN74Z1gqSKX+UcBsIKolddUN4v4IYhqX1Vl1euVr5eu1uC/e9diaEWdKUjFiYzSDy8GeKJYLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770779035; c=relaxed/simple;
	bh=g+Xmn3y+GvNa24qmmpNa4tvssYQ3/M+BNokWLNPldew=;
	h=To:Subject:From:Message-Id:Date; b=XrtRvk1nSqL3q9uOWm6DnHDX3B+HkLyg8XlDCU/kUCKW6CyqHNurAs+bMlXCacb/D15sKtXy7MYiYg7ULoDYCerq/Xh5S0EYbxvytr9uj7/xD073B/vLAYeks7rRZQYL4msRla3qHcjeaJakHoEb6pIUA7rObXaZBmI+PKNM+OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LT6v1MTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LT6v1MTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A057C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770779034;
	bh=g+Xmn3y+GvNa24qmmpNa4tvssYQ3/M+BNokWLNPldew=;
	h=To:Subject:From:Date:From;
	b=LT6v1MTLMlO4zGlZfrjzYf3SSA88AgdCIEybMzYS0D8nD7ConFSX2mpTAIF6BFuA9
	 sb9WPfi1zHvUaGlmf+KcdqVyWJPlGP00iX+lQmu9qenaUkhEpHJw5RW5YkZZRayavU
	 2E9IRt6Pvs4e6MSMCfXmWQSAUQDF2SqmFk51yxWiBpRQfmOoWhf5pP4VOWs0e6yU4C
	 o3Cj+SDbuBHHPh8Sy6gawRy49DuzI5gsFziaoFSMPFTXZ1tf08DsoeJkboY9j0n6sM
	 hqLNYISi6ZI9UOItgwrx24kcPGEMjag1mke+mswQlWUjYKXMCCogPBWeDSothHDiV9
	 woq+r9x8iG/lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697F6EB594B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:03:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077903429.32487.16337739561672575522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ab4be48218f5ac2ac3fd14c98646670fc0bd7c8b4feda363ca8f5993794279
Date: Wed, 11 Feb 2026 03:03:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770779034
