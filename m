Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CF61EA7CB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756122594; cv=none; b=mDiM3ssxmwiEz60YVCYE0TAQIoTZdi4Kcc27IifwNuMfMihMqxwU3503v23i5hj6fY8QJYVT7KKnpbjiqd4l6pO/b4YnY5SqOjJm2zOiygM8jtKz45WPRD2x1zAuZqOo9SAG9FihtWey43+iqNEjZsgDBdBiFYy1L/bQXy6PaQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756122594; c=relaxed/simple;
	bh=LfAcRThUbtYAdhioDwi5M7GRqQY1qcUquIRIn38DiJ4=;
	h=To:Subject:From:Message-Id:Date; b=XIlT5Sk4w4LfQ8wgNXLYq6GfmiVraoaFdNFBS82GEE5nIbgjJGC7lfWarGKFDSRoggENUOVN7V9G9i0a6zbez1XOxCgHWrqI2aH5LWqob9Cb7pIOhLqEKtyS1Z/bI2+O+lOxFrF33mysbCL4F5/fYLHCH2ez8FHozRv0RI5bXkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tzd17RXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tzd17RXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9BEC113D0
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756122593;
	bh=LfAcRThUbtYAdhioDwi5M7GRqQY1qcUquIRIn38DiJ4=;
	h=To:Subject:From:Date:From;
	b=Tzd17RXfljVL36LMZlGqZekbWKsWuqd3PoYY/MI6s/8wW8bdZwYB3py4A126u4OQL
	 gIWfjPD+jywPemmf7ZfY62IPMAlGm6DRIIZV/WHL1fjQxSdjtUyt6D7QslpBrfSJ67
	 TOtb4vpGCNOz6TP/MgMrsTWX3mI+E0ka8oQzCQSwhF9CgFZ7/5e3p+v5gm1PPX3jo/
	 A/V7Wwzw85RDa33q5I769r3opD8RzQzsD07Cb+tcUoWJQo6e3ndoiSYMlgv5Vk75el
	 OqqV2Sf+cwszz16IgkD8xMv4Wz9Sueqsqos0ysG64XscBUv43O7ObNY9oRQg3eKsmn
	 6kHXyH0iba1Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5D5CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612259357.582.7432681086124647461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43adda2d35c0588ba859cb4653605428861abd9be7e20ccecc2d7fc3fa7f8353
Date: Mon, 25 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756122593
