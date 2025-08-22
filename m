Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BC81E5705
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755856794; cv=none; b=sTWP8v2313mTcuLDXpJdUJr1sT5xt46+jnkbtWAshNQ2LMqRdSasgK3lsIDowK73LYltVJbOHQUw4F9hp6yDs/nOXYg9scIMyY7fylBh/rbou1HzZlmQkuwrNdFOog6DaIuIVoaf47gtnSiiiPSv3SmXgoMrXtyUfS6NGagGrEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755856794; c=relaxed/simple;
	bh=gxh584pSx4nVfC8bxB5PLLcoIt08yis+9jOjezXfixk=;
	h=To:Subject:From:Message-Id:Date; b=aUoxEcvJLhb02pstXpZ9lEXLzR0n44JAMaOyHGVLy2fQ8tijLsglcAcQEVut3E9LSNY5YnvlOb6yUax3LIz9/UaSzCf7PGLV4hqdKQ/cETuJ8e60CXawr6tW+7mr6GKxA/I+uWRZwWPsGut2WBXPILGOmnjI1f1j1hpKu9dfjDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nw5o0pfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nw5o0pfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1255C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755856793;
	bh=gxh584pSx4nVfC8bxB5PLLcoIt08yis+9jOjezXfixk=;
	h=To:Subject:From:Date:From;
	b=nw5o0pfYd7Ic+q799IBVQKq+sORtj/kJXsVr5PTu0YC1cfMTcUb0sZsfvGSvdHBHE
	 i8cdp+WoFtuR0Et466dHFx1HtZi15yE0uujCReVsaoUKWAC9wqcRoMZHLKNTnjEmj2
	 ZgKHojRONNP3rzRI1sjLR0CDnCS68I8RKziGIEV8NwN1c/6Bmu40xmelixCF3PK8Wl
	 rFq2QlHnY2TzwtM9azqRVcmluis3T1ZyUYMBvuGU2BmH7S9/HchAiFI0XRbUY323DZ
	 SCKj9V3ldZ/l8+eQE52vCBY3mPqRzHkc4+111v+yEbZCUGLfK1CDu5SiJjWVx4mJwj
	 xOwq78+e9YUEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F245CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585679357.31228.581377130742017394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49212cd3157dc3d01aef0219bad7ccbec281f486335ea5f5430daee2c51e7ed
Date: Fri, 22 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755856793
