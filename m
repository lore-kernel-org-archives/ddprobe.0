Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDE84C81
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715580143; cv=none; b=PvBDP7rd1BgA+0vfriPwf21JauBd5exjs0jem3ihIXmH17KrSDozZkDluoVXYXHn/NjtqNZTPB14J6BGLwENoWsLcRuqpAhsFs8OzJDeavj6vtkJPrsULgTpewenQx+y4Wfe+er+qHtzc2T8+POGYPi1PiVfZxdi306qXRvZslk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715580143; c=relaxed/simple;
	bh=pL0LNBPIRrPJcf6YczwNNSDbMc1OF+pUjHqdfXJTKn8=;
	h=To:Subject:From:Message-Id:Date; b=EjjTaLuQOsDoaW3AWdJSyQnqjObuY6IYd641GFUKuG0C45AybxCWvF0pKUAmuiOZuYVWB+Mx7Ac3kTb/MCHHfnfMjSqZA39/msKiqcWztl5FF9tQSvWsAeyJF18X5vxL1E/kXhnvzMnTBQLT2Cj1h5ql2bUUgM2zCQSGoSZ1yXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr58+pZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr58+pZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED35CC2BD11
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715580143;
	bh=pL0LNBPIRrPJcf6YczwNNSDbMc1OF+pUjHqdfXJTKn8=;
	h=To:Subject:From:Date:From;
	b=Xr58+pZe2wEkcE524WURENalZZDSOzDWJrC4bSGJLB5ARHZ1QVfzG872VwOzv6PLm
	 o8g09nCUMKfLc75HuEW2MpjpaTiuOJ4zY3+2x8URQv+7PzND30DQmlQTg8OWG1mHUx
	 cr6w4563IefkwXoFv6O+E7GHM0U+HaWta2N2kYh6M3g02hpQJqYGnoy1fpTH4KE3p7
	 IMBYkeOBilOgii80ayzR2oB5vzNjw4qxBubCevzqITFpv0WSd9Wjsd36X8T4PjureR
	 yCHX42wBEkULnl1U5b5Bkek7l3mMI26hhu8S0PPOVCd0JSR6i9KCnMn9GQb4Xl2LSS
	 TjIu4H7a1HIIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA96EC25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171558014280.5496.4013787448468930473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c9d5a93600b130a06f45d369df54653a53c8759ad21e353351e5cb46f2d89e
Date: Mon, 13 May 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715580142
