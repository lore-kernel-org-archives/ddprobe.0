Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381291DFF0
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727566554; cv=none; b=mQW4w1rZMAkBiVuw5QEvuLOHAwSyCkz/THHotQiuDR9Muwl0wIbgCgeOUKcyumrYSLUv0b61YtQjosS2faTUn7KOIYmmnnIM4yqTlcfOVe/9mTrhmscrwX9sFTOKv+4WP4RQc3zLNq0rBxoScNkb01U5SEjP2EhohseKsZAk9Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727566554; c=relaxed/simple;
	bh=2bgdKToWm2n5wOLeP+wd5tzJti3w6wPP/bvcHpOpELk=;
	h=To:Subject:From:Message-Id:Date; b=Yg3oxuW1qJNVFim48cea1Cv0BPzvQ5uqo+F0SxbMF5Er+DGP6LBUoKrcXYEMZfUvkr4/KUFCFVskXq3KcF/Lotd5XqmvRt4ZvLHLTt5S1XYMBKOK9Ybtzy3AtzrKtfwbhuAEbEtx7glAZFID+wrqlfTkiAywmSZDQlL3dtiAves=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUayUgZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUayUgZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AC2C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727566553;
	bh=2bgdKToWm2n5wOLeP+wd5tzJti3w6wPP/bvcHpOpELk=;
	h=To:Subject:From:Date:From;
	b=DUayUgZLYiFZhMS5eVKVGTl2YmYjvLU57niLbKBO5hLizecbXqkOx32M0sr01Hhjt
	 YLJWjHpRH5DN2LEboWbG2Z4KiYtvwAneLfMKds/ejry7fFdAV6vY3q9n6lanHDxaJ4
	 MO6npTVo1yiHTb8lBo5o9+peY392QUMS4NdE3oHIv9TgWy2h7XGQDiSMym05ERtkdq
	 e8ljW5ecl4KSiVzx/6q7+g79DlxqzlxZO6pe1pQXXH77mC1OAt9wnqjhV/rNH1AmAR
	 b6Slqh9516TRH9GjtvOn6iTEVQ41/5cf4fqKt3GdPJdRq1+I0gAgEJxqXuQBKqdlOQ
	 OZSYAL3hEk01A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998CDCF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756655359.5872.11580483694494021542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b151038bbcd02a5e824e018d43c26dc25776e7fc21c0e1b3c8225dbf02695d7
Date: Sat, 28 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727566553
