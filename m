Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390BBE571
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744780194; cv=none; b=ZktZfWlrW7zSGRBB+yOYhslS3D8j+2UOYuMCVtwDKYr3Uu2IqwjVeWe+sFD7zx1mq5qGHvJFF+FyMDj/FV6u5yLTgGikStkY0ErHSR8+UIQff3+5ly/1wxmsWkuH7jIX3AjGQJg/hKMga0QrthTapVe92WTOpFZIQ2izdsy/LnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744780194; c=relaxed/simple;
	bh=hRgGhXR2ArU6huoFrpg06ZbKadA39oAvuR7OdlxXHcY=;
	h=To:Subject:From:Message-Id:Date; b=I8+FObtpBYxN604I7tpHakjfJe3xfj2wJUi51K6kU3UDO9YtuOhlXhyUnuVZyGzk+jaq/n3ZVPmbHoRZTvRlBHsR08FxnaXWrkoq6bwvjWtW0Tq9EDJZw6WviD4ILFxETJW6jeD9TmQtTeTN0qDJ6Xh5zhhGuMz7sSxijJTZJT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNZvKKmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNZvKKmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE0EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744780193;
	bh=hRgGhXR2ArU6huoFrpg06ZbKadA39oAvuR7OdlxXHcY=;
	h=To:Subject:From:Date:From;
	b=kNZvKKmHZHcQsHaAr4dExgPXEjuzlW7KZXJvc7DBRFkBYfMTZFUKwtm31h2K0H9gN
	 aph5TYU7kpOmxxB9AnoeS7d/KYb1xdKxGODRc5xVh6EZy2ZkoRSIDG2PAUpgs+E1ic
	 K/EKEXqwZ3WeS1AjVFO/iT5G9cKn9ERjhJf5Ura1ltpbae4VRjDvg5N26Ei6CNiT+o
	 Ux0V94jm0wWEcRcJ/zn5WDwNzLn4eLr2PZcmlenK2UIe6IKO9OVizKoGaskEm8wcH8
	 2bIsCA1bbUoklwzbuKAYNBFNMoTTZ/zgGGyfJh6+Bt4ezMHgFCvLuLz063oQTchB0q
	 jgxO76Qe0S+0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C217C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478019360.1639.10555347747122836972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c801ee295eac3e69f7a2887a3c61aa275960a15058e7b8969a79b0de762aec1
Date: Wed, 16 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744780193
