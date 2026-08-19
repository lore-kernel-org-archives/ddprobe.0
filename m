Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D3D3515DE
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787124634; cv=none; b=pOYJ5Q/7kSGgLSQ/nEmgQYd6V6Ck1iUIMXbw8Oq1kLGUff+htRsgGttRtp5UOO8NtXxy+YqHfxVwJTPHJc8bLCg9dc79BZGtHx6yZ8hhyrrGMat8swOpe0YgEagbNW7y3KrQ1pydK0S6poElGWbKqVGeRAs1E9wYZtXrBjpTBqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787124634; c=relaxed/simple;
	bh=UZELYkEEVOdaEyxc9cA41TZVIC8Sxoj+AhbMvwzyTLM=;
	h=To:Subject:From:Message-Id:Date; b=BoWNFaCxew9LFBAKsMPL8gQKD/3XOC8/Xj0A6ZSzkmEisE6V9+zpq0j2gJD+jiHCF9TezUdXkvU3eZmAenpaMyLPjZdO1/AMFBkhVbDbFDnenJitdJB4QqeC7wE3zRhORVo+PHRMFPp0i+eTDk78F+qOqT35GhUlRQpbUCTBm/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/Q5PGGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/Q5PGGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0774C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787124633;
	bh=UZELYkEEVOdaEyxc9cA41TZVIC8Sxoj+AhbMvwzyTLM=;
	h=To:Subject:From:Date:From;
	b=Q/Q5PGGP8lEP6Jc/Bkg18WpilTFD7jwOZ22FSGde2wsud5BTo/8yFCzCm50JklNt1
	 /56ebgQlTDUxMD8YxzMGYkDVYCmZ56f7e8Dqr3BmjcBjYSkBFRVSqAietjL4R3+028
	 83LPWurFLE0Tk2jHp9/VrB0h2JGDnwCJQG8iw3gvrB72JGsNoA+UBnwBj5d9vZflgI
	 JoyewjJHiVeC/7ckcrOHonusUBO2XCMDgKMawQ/VOnQ3/aWncAqZ0KRiDElxNpLsw1
	 NaxgFBKdueNk5tMubr1C5zoV77apwUQQOyZ6fRNRySfwm/61zH+SUBiBgK1Cl92ipK
	 mC6dQNs0huoxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E43C5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712463374.31549.12215674258108999321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe3f64781c000bfbbaa111a3dcc6d6c68092186f84d71d21b54bb018f314290
Date: Wed, 19 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787124633
