Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C64727183D
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 02:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739327454; cv=none; b=Q1/mkvbbe3T8vxKtrXTaSHV+LxDiFBoZOn3WTO8NJzhfIKT+Ho4WgyKIIgoa/uSEMMdEM1kE0NKL8uKDQ16khi6dEyMeOk1W2egiiZ8K1P949bT47JdbXHmrdsVKFN/dM3cJzHz6R2WY52vHUS+pYzbiUsVOvC26h8ccpzLCY08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739327454; c=relaxed/simple;
	bh=qOZo3x46aFyCxzoyvaro1HQ1/OZvNzZbmR7PaQC1cSM=;
	h=To:Subject:From:Message-Id:Date; b=W1EwWEO1BDMFAQkRHZJXqQQLvKaef+MaH3cDV56Sjx6JLImAZnktrdOz+iQXqIpVpYacUljrWnLjA4OkfZexTNJ8fvT4DrG7xCaeGXVfI+c0qIfxOxiiJnYVdRuSiBaFhuJmtBjEI9ZQPqa0MeXl52ZRUeTBiOJ47akIkasXKbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFctYfhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFctYfhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0697C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739327453;
	bh=qOZo3x46aFyCxzoyvaro1HQ1/OZvNzZbmR7PaQC1cSM=;
	h=To:Subject:From:Date:From;
	b=PFctYfhM4+kqwh5RzfxLrD6OgbSTIxCsqbwU3dKfWca3pbMrxnLop5ll7V8J0rgmF
	 M+E04r67mLfQDfyQvUDyQFkrvWKvBNQk8FlTFDUw5+Oy7fNlbld+sKnZXCN+uq0mq2
	 sPy6Q6fsxClFtq5WV4trPpNui0fXUBmCgRJnxYNRYLvC5xkDEWBAj7AIllgtQUUGOM
	 KFoXkh+egIEdm7abxeG9XpZCKY+0nkVESmEx7fBFKEyoksMkhMyH+RkbMS2U3oT7ZC
	 b8glf+aYxSV39Rbvm5W4TTYvZRJrdYh8McmMwuOCjLFnFwV9AsospS/MCNz/wcsfwu
	 5iW+QbQe/zaSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98660C021A0
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173932745358.24762.6842962438555923293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6e4adebd63a24601fce31bf63e184db708b2f95d9d7f27a7d4882dceecc40d
Date: Wed, 12 Feb 2025 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739327453
