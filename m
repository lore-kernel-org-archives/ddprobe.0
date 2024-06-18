Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B7214F9CB
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718699963; cv=none; b=WoU/bHCVH1qwQx2hpvEcpyaqUy14hGjJ1fRg5siLyrPT3YeQzmGndA8vXwV/7xbY7BbGU5qw9CGj0LFrvFpCAdzHh0tYvZy5w2Kh7VmFty6laroYcLG3uv6/ko/KrD3uActsh39kLCLdEYBPhDSLrHYdMwElPPafizOH8msvx78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718699963; c=relaxed/simple;
	bh=jpk6KkbTz/N1Vt/IfOxp8qOPLPGZW5dW3zOMU/YQtWM=;
	h=To:Subject:From:Message-Id:Date; b=IDWgKakcyEAIz9wJwHq0iVlXIatTa0wUhayvUMWQwoSHyOlC6ZskwAuc5IMnd4ar2nDRBJzDA5HjnDr4aoV2eN8o7VqO85QDg4kQG8ETqQZ0TQSZLGI+Y7qEyfhF1arD8jCdJXxXsaWMH/c6B5b7NuEfv5oKRP2IzKSFjUjc6Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poBmVKN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poBmVKN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD38DC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718699962;
	bh=jpk6KkbTz/N1Vt/IfOxp8qOPLPGZW5dW3zOMU/YQtWM=;
	h=To:Subject:From:Date:From;
	b=poBmVKN7kTeCWNg6q/r8Iq80bFRta4HOC9VX4yZbHEx8NSQWdzT4KEHZlTFK0Qlv8
	 ukcqdWIaFr2u/MZnJwHOcGovJ/8P6Ep5bHBeFrdUxhy3K03XDzkcq2lTxUmbYq83UO
	 aXAf8bx3ge20ncXZq6nVe6VUaqCoDXxaB3/UHX+kgEW/CRda56DtJXgZWdvcm+XTag
	 A/vC2A4MD8Bpeap/aAwDNLJUIVow46TgO2SL60tnVc2ak08L3GREjgZk2W912NUa1a
	 nRpDK8h6RaW/h7A2PeuQEyuFMGuR2zYJl3RYjQxOIsB8Dca8UZ79801c7AYRGtQNpM
	 HKc6hXO46lmdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB25C2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869996275.13955.1897827434734641946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a11a7b4d0925d9729b8ca91c2b1fe034ecd456e44cd0d4ce258099da20e27f
Date: Tue, 18 Jun 2024 08:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718699962
