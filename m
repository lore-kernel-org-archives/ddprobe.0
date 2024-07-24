Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4511514F6
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721850954; cv=none; b=NphDhnvuBPIf8rjYENoFbp0zns5y0oiLpWa169hKAgYR3FW+2yO5Y1EWLaVGY785PPEaGiis2QmWtvkjGW5UAzfrxkdw/LJudL9cTQPikadMJAIgHoDzMrzLe+SsLl631EnFKNaWa9k2Q99i6qv/J7pxcW/Z2QbBZBIkcHhgbE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721850954; c=relaxed/simple;
	bh=slec6mYg1oHtR1rYvW1o3UhGO9TB4rzNytI154j8oEc=;
	h=To:Subject:From:Message-Id:Date; b=EDrTSr+XnRzfi4WQQBcFbfLoj0nsEZl7d2xe8sVJOLxfMlqb2kUGnJoLFNShbKyDEb5OayRatT1XVZYEnhiIQKzOm3K0uIbXhEsPR/rt2pPHm3O3f9CbWGOx4ohQuAxeENZmktbSvvYlTgqALaPMz5AdAhuvHaifpVrheL78psM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knqp7Lw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knqp7Lw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C4CC32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721850953;
	bh=slec6mYg1oHtR1rYvW1o3UhGO9TB4rzNytI154j8oEc=;
	h=To:Subject:From:Date:From;
	b=knqp7Lw87f6xG/gxfP/2Madx5/siYiBe2maoTkIfMho6vNM7IYS/NKIKhbRVmwTGi
	 Gy1Hz0nDAUoClsD+LvUS8xR4ovTJCScgdoX9rWh8QZRtfqGGsIlW1j6+35HM3buZCF
	 gzlrQXfVIH/6F3bN7dTrMnuj28/N+gxhacY3LlchFtXxNmV28e8E0FHLVPP2q4eGhR
	 N4LKuwOKFl7GY63lv+Vj6x9wff92lyallB4V2zjK6k3JaCRnM6Cqv3/8EFFhXeOuT3
	 TSlb+8FdTbTRq2hHmItsN8vg6YHXuGEtvkFjuRbY+UW6ANfBSGCd8PFZnXPz+qrk7H
	 U0Ec0Y735BoIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928E7C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172185095359.10266.8889767992079393605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b080ad42e1d9f622439a53268215cca7e322a73e82b7d581759b8ddecb593e
Date: Wed, 24 Jul 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721850953
