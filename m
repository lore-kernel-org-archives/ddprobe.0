Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F3F17C79
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714372343; cv=none; b=dIrj+MJz+l2UoXnw51ePvR60RYlZ9D2kvWsOIGu3/MzXSqtZPmJ/ongAdikGLdpPN3nRmvuuAUOVbU/snEolj+wXBKz3kKntR7LkXRdj4SZV0epmYGtu7rwsqISY7xBhqmzdrLNNEkwLlGRDpKJHLovT2CtnREjyIu0Qbtnx8y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714372343; c=relaxed/simple;
	bh=jcaAwkhuXHTLyjxPRhrnkgVZHpfdaVh567IYiCknBfA=;
	h=To:Subject:From:Message-Id:Date; b=YD4BxB21QtMZNsl4BDil1Liz2BfJ3DUcHcuBkd0kILvBfVoxMbupW2SxQ8UYqBqEnvbAv4Mz6SF63QrTTB3aLMAyQjI+47PtWYiM1X2coTlWmwq5wcokYzN/HWIP7C7Ay+Od7rnETx/TM5X2ssCDJd2aRUczvpkhZfoC7H/onFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4jZUzU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4jZUzU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D925FC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714372342;
	bh=jcaAwkhuXHTLyjxPRhrnkgVZHpfdaVh567IYiCknBfA=;
	h=To:Subject:From:Date:From;
	b=H4jZUzU8fzpVXJVNiRZ4somS0mnOvVkJ2bNKfRLJwBWImvnU+BbWbFZjjPsn7Pf8w
	 JslapEliyZQtJLVe/JSpUjMfk+hcV1CVusaAqwDjr7GToyUJdgf9hkLecfd66ETq6O
	 GopmOvJdCZn+T0xiuwOusnNwQ0lyPM+Gz8pdW24BHtP3fADVcs7X3P52mJa/CqPP6l
	 iIgy2rQAMoOYvxYNzUODOeWnGSLnDvTv9qK4kaP7KLuMCv9WECdzoSdlP843TTzhkU
	 lWzIxs5DQhOOmsBzo5xyIKB8mzuLlaLTyyjCv9+FyXDhFfcqavxuCmeyakbsUzg3ru
	 vJXBVOsdwx31w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4799C19F53
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171437234279.12405.16044307896579564234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bba7fe7d84c40c9941424b5dc773c6282b780f2ad0929da417ba7a375efc69
Date: Mon, 29 Apr 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714372342
