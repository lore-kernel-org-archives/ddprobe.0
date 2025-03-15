Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0B718B0F
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742059794; cv=none; b=jOxFUe6NKgu8fbAN7YgMz+yMiDvayClVpS0XLbqv1WCbTkDX+/fg/M+NmaJpCTBJJRE2YlIfZSZxCWqod5F4E0p0oPf6Bztn7Z2zMkaEMTGKcbCxzIh0gxGyg/wA/gsYlOjTstVSP1j/upM8fF3nsnf92eyYBBln7BGOgRe2UBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742059794; c=relaxed/simple;
	bh=VPxQ6T8TKUt3VDCzoqYROhiSQ9SBmWY2aGcNyHfAMSI=;
	h=To:Subject:From:Message-Id:Date; b=RxVPUH28eYO2A188IGLkPQDkh/PHhVbYmKyEpa+W9T3iXGHsZosdxtJprrMgmnVQ/YGeq62Skira57TeIsA2c2QjDJqPclbLQnt1DXepOrgzzdaxab/HcMxt4EWKzwRdJzCbvF784c5DOFGELHwiV2SIcGmTqG/eLArSSoaJXa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SS3TsdKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SS3TsdKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2780C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742059793;
	bh=VPxQ6T8TKUt3VDCzoqYROhiSQ9SBmWY2aGcNyHfAMSI=;
	h=To:Subject:From:Date:From;
	b=SS3TsdKYFxPIqwVOJ84+w9FMNxgCmZGEXeeFgwqXvbKt9w81oEppeA8PU5GMayhKn
	 db+YdQjyH5gLWTfBbWAfnlpRIwgtbjStOOhvs8zg63xa5ZD24aOh5gfbXq5IQEVpXm
	 szxWl71x1qFtXRgGaNuiKQUbqwA5DYcOWtzMG2UojewqS8EHQI8Vn0nUC0adNzrd9b
	 7tOc20tLp82I+MZas8EnL402NQClxdkoNqenu9XryxZ1QtDIuM6S8qLbiTxDQ2V6YN
	 1miTR+l/a6GShePseuI0uAejzaW+W4bDmdDPDYcXT+IIMW56tCvH2eKkzCQPhF4SpV
	 jUjVuPtkAsFag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AC5C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174205979363.29374.9715202172777137874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f98adf0e82ed26979b6ca3d4e73a0319834cb6f16f5315b6434f2dc4f1f3fa9
Date: Sat, 15 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742059793
