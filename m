Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85A901C5F11
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778435434; cv=none; b=e5+CvvDOqhAdYE+eMBUWKbuNCiEnVqksnbaUmJa9OPs2Fug5IeZINO1mehGm9qBm779fUojXBLvWbwvw2ujYT+Jhgth5Rc/8yHtzBYdr1XqDKfWzd78N1Ov1lnqzZVslAvsxoQi8hY/VjcbnY+W+UjVpSEus19kRKIiVcGcoigQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778435434; c=relaxed/simple;
	bh=LBhftz6s54PXMSM2OnySxWxGYFP2elXEdKPvH0gcUd8=;
	h=To:Subject:From:Message-Id:Date; b=t6t4HM1UWH7NSivd4EglthH2oS7QicUZuuhye9jDPQo5O4DhfV+CUE+jRoSBcA/FmzzMqIwZeeteVgdtmQkjvTjK+QZRYIYUi2nZECYCpKcIk/6QQbxcrMHHsHbiC9VvLmD5N5mc9GYSzHElidb89ZUD9pjkISDKygZyvo20Dxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTqX0cnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTqX0cnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AB6C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778435433;
	bh=LBhftz6s54PXMSM2OnySxWxGYFP2elXEdKPvH0gcUd8=;
	h=To:Subject:From:Date:From;
	b=hTqX0cnrB/1IKbrYeQJyuyKvHqU8S6aHa80JJvPF5utA8QThgILb3HQXhzfzhFUkj
	 bWPzspC09xYHS5EuoAp276a5hjQ7DOAyLjAIHdtMUjAmV0vXtGTvk/wsG0Ceq+QuYc
	 i7oMoNiFMlqGyEsBo6yjMbaMu7mmDTRdF5IEbBq3E2uM4mNTRuPbY+t3oXkiFbMyUD
	 UDU1xvR34c/BqLIy8r6eUPmy2vZNBNrkaQQg/UVdKeYpC4gRw+3Aocq9LIQK5Wvxz4
	 7QWAZZ7cnWbiC2iauOgz3UZ29HSRSh+RtquREvEIM37DYXY0zrrPvxqTZ5tbDsZeWJ
	 PcboBb1uIbqxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD87ECD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843543368.30570.12198120415023137044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe09089b1ed33a41625e41c08dd8e4264681faf164172fa43866fe9264e7b724
Date: Sun, 10 May 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778435433
