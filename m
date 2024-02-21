Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E083FB3C
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708514896; cv=none; b=S6bN6Or9kOiK6Ztlk3VwAauYRrLa0msBtiuMkNw9jhrhFNsrQ87zQkjHOe4gPjOw+tl3M1mL6ueTjtzMwa2q+kp8MLK4KIT3cYx4bQdAVjJ2Qvv+PoVABiDg6lgRiSK+LnAe4EG6+UjjlZkaZPp7NsZs7j2nXTNrLbH7dyoRwb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708514896; c=relaxed/simple;
	bh=Z0Z+P3hJ7yrvyrAxgBaCXD/jyHWMQhQYVI81BG/t8U4=;
	h=To:Subject:From:Message-Id:Date; b=DrwPuHo/UvAI1zNBMDnmp5cuSkmAFPv3W2FN6YtHOGm+BhWeqvVTs9OwivqfqpVtLfHs3eJ8QagjGO9RTT5shGMeq+J4ygM4+4pdEFEAO6b2UpJN3FQWZBUl7bq8E03Bj+/L87wo3Rdd0Sgk4XF5kuA/3SEuq8ZRAMhFJ50JGtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4JmRKE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4JmRKE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D94CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708514896;
	bh=Z0Z+P3hJ7yrvyrAxgBaCXD/jyHWMQhQYVI81BG/t8U4=;
	h=To:Subject:From:Date:From;
	b=s4JmRKE+Y1M+TYXYpRf68iPiMmJR0fZh2p2HyOIKpzi1KU/Ijj/i34GaygQsoFDHS
	 f1e5Lfq+JCpHPwfZ/1hr2AM7lRKG68PoIjjhAwSFHnXwXa79fIyEqN1V9SzAOSZw2V
	 G6AfIsW/ISnMdZETc9BaOwVUWqUMdkF4Y+Kz5Cqp1LrwU4oi2+tp+m6s+yYqNE6CAO
	 BUwsaoH3ffxhdXwV5tP6RjslKsxEi/FpW4r59LBeSuMADaZtxq3xgmWiAcGGhIoMDL
	 WVFeysn1TzkHOuAKCEVRw8hM19CZw3GamUKYmAvaena7rfCnarCTBF5JroJkrG6MOX
	 4UtStpxpda+jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D61C48BF6
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170851489638.12858.7609640684927517242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea706d3d6b56c7d2211d94861d014f7340f6ba583d1b70d5ec638d92006dc05
Date: Wed, 21 Feb 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708514896
