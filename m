Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3E120E702
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774172694; cv=none; b=f6mZMpBy+u5yz6I5MS1Gejy9dowkS6deNE0VjQ2qZPvUoF4DOH4AqbHN3p8P0Oo5aNpVCywDPOSvKRU0i5NUrtMZUDvJYvC95ZNz1ZU91qgHapPVeWeEwVsuNsOqp3Q5aIqgN7CpYZ2L1zH5aXnvLJfr1Hh5fzsewnnknXXUyFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774172694; c=relaxed/simple;
	bh=loH5ZRXb8yx4a45EU2F74T73pQ12ttTNtDNGxH/wrY8=;
	h=To:Subject:From:Message-Id:Date; b=LkN5s1HPNdzJE6YTQ+D8oZvqK/GGHX6mvWam0ok1pJ972XPq0pCL3zmMx5R9dlS4XHZNpESJYaSfawhvHqlZwPChSke2+vHd2y5yuzODhffb6ndhaR55+Fsc/wOmNY9QXaxeTgXn2nBu4gnonVc8NRSHZ7D4H2Y9TQERjOY796c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0DePA8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0DePA8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ED4C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774172693;
	bh=loH5ZRXb8yx4a45EU2F74T73pQ12ttTNtDNGxH/wrY8=;
	h=To:Subject:From:Date:From;
	b=U0DePA8BZja0bSYXRMH3AC8IHlj2jEUD3VN8xHq4dskVCtmxJLg0Y7BOfVVORVdq2
	 ecvJ2W9n3/zZG9fjp2eAVT1XRtJNX8eDqIcWKzhB/B/3Imiyz1wArvxauWcZnmp/KP
	 Ybo3T2WyDy3JZO2/2J4dFMeyanDFrQiVzzxhV7poiV8jN9Yb/AMzdae1Fu+vxzMNj7
	 4Iak6QKHvqKeGDso9ShR0Z7hLd3dNAskQYOMGClO7nfNs8pjt6+MO3TQcMdU+12gEu
	 85yiFL1LA2LkCnjTDkv0ZVjH6E8J00ryXFrdI8/7VbqPkGONdaXLybIv++YrS+DBwm
	 QT+mCx3y2koaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9850DFC72AE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417269358.19591.2923509337050073039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89dde27408abd72cacbf1784ae8db2dc519cdb350290ee2602a074d67ca324e
Date: Sun, 22 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774172693
