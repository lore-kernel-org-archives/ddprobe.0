Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0A645A28B
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791745834; cv=none; b=DL3Mu3QrHVKrGyAtOlu0+FdrAnQREg2aZU+IXY0Eo7O8NlvVYIJJdeBE4eIlfZa9u9k4nJjIhCwPMkrFutny3kjrelb+XPoj559BhDCs8IV5LzLPOUr7In79RGadTv1gdz1ktp0Z2vNbgO7VvLUWHI/f10QHeruUDhpNx2IZ1HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791745834; c=relaxed/simple;
	bh=qYXPmU2EliFH3kVWaMnhHPWvlD7YMw9lzpq4DE4Y1gA=;
	h=To:Subject:From:Message-Id:Date; b=QD8mgSCMuiuyHOzmz8G6o0pnV3z5qFddxSzuaTvdALqHHMRCfOWUUH6FKZgLgxdzC1ER5et8WzHzVQjaV2QJB3uvr1o/95d3p4bOSBWDrL0Bebub/9gKH4cieGpNlG0FX0KtFtRkekATKZF+afiitvo3P/q1sSVzQyGtP1OxmKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KecirqbJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KecirqbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC58C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791745833;
	bh=qYXPmU2EliFH3kVWaMnhHPWvlD7YMw9lzpq4DE4Y1gA=;
	h=To:Subject:From:Date:From;
	b=KecirqbJaekQ6TOmC6k+21sMX35fym87mj3en8BbQkvC/ULJCPA9nd/feR3S8P5fd
	 olgiok+s4eJMP9MHudthV3s6VJ7vvXnadCjp09SqXl3DMSnfg8ib/pmFFXjDWKpSQn
	 Y0ibxGg9/0+Axee5u1r8iTwvKXq5CkXkeQy8LdgnR4TRfrDNabizLipEr7P7hca3N3
	 j4AvgUkBEnS4vPWUhnLfHksyoUgtpy/BK8PL9sB9gqGPVgBhAE5P/H6PDzTztMi8o5
	 pcZK/x8iGzOk/QS0i/je6MMvyDxdQ3MsIrhPedMd/LSlIWnqr7/68/m51mijTBF1fv
	 LMvYttBG32gWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA475CA9ECA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174583368.6320.7292105974684644151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a06a29deb44eb80a149d0500f1c7e4d53bd397e41cc2338476b3ba3ee0feb36
Date: Sun, 11 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791745833
