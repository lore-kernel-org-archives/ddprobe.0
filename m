Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C9A3BADB1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782892114; cv=none; b=S6HpxSpg1TvfCk04+eKu43L+LkRkQ0QRU7SmaRxd1h2QsM9S5KEqB/ivDRO41JEzl8w4Nw4jUSe9IDbr2/AMJS7vc87R27IvG0+B/bLm/arCSq5XelVutvka4TUpWaF/3pYfaS/784rzh/NQSNIR1GCzkYfYzXfgbLy4hrGSUd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782892114; c=relaxed/simple;
	bh=MIpfj6+DOolI+cwcj3F/lA21jn2i4eBJYb6GdmptHYM=;
	h=To:Subject:From:Message-Id:Date; b=nqVLqsEUcBqWLnp+GAGpdnoHfRV3fyegXEjjFY/PhLiOST4VxsCa9ZXqwUmN5RSbP0/rHqG7yBgzOWfSxUkIWUEhpsnrQBRrgVdLdwp3xOjISEXgiVjb8ePVM24BKTQmcRem0o18Atfwg31aOG7LPQNkg9zKkfegg2eO0LGH0KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohKZIqtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohKZIqtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A23C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782892113;
	bh=MIpfj6+DOolI+cwcj3F/lA21jn2i4eBJYb6GdmptHYM=;
	h=To:Subject:From:Date:From;
	b=ohKZIqtzlOrq767Ev++SUKFind0PlCE6RnA9OecInn1HMKDniEvinuy5sCy7Ri2Dx
	 MiQGICgcLwm0/JuvKqrjlBtq6HYHtz034UEAPcEjaC5reJIxoNzqjTbb+LpO7X+JtP
	 CzKKHHypmiCwQktlR/mXJ/K6b6fxpZq/ilTfrKtO1bMivOhg4qSKm21saaPJ6xRBvk
	 M/3Qwx95D4MqRV5jvR2TB5KPyIgwwOpdU2vhYNdU2nvoQ9ZRGwfMUmYSCMyyBZ2lQM
	 uyidRMMi3RKtEtoIoA7DxyHahZf/7IgMxRu2s3vbsE1j1x42VibJ4EWeyBiIPpDo0X
	 yWm/3FfbKsv5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FA1C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289211368.2629.8783216310268983798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8cbd52a2e01bdd2aebbf31527525834670d22cd2f23df2553c329de8844c46b
Date: Wed, 01 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782892113
