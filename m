Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CB8382BD4
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765979634; cv=none; b=JCW+GBksw1CLD5RZMldi3Q2cXxE/BZR9eqDD5JGSNMAGsztXbJzWUEkaERPZLhMIj4Z6sQdEo5B9oFs6iwXuM83Bfh7AYugUDd1pgvfSkaYwp/DDwmEzWmXKDXBt3mKrR56/FUs4Z9v2lnz9Rihw/Ymvmue5XGA7Gb8b1onTU2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765979634; c=relaxed/simple;
	bh=tWgIT/UVk6UzOhZehgkWsVm5Qc/3Y400xt1fKsognHg=;
	h=To:Subject:From:Message-Id:Date; b=oVpDDPs5PzC8Wm8Y2e5LjnD4anOOozVz0ZsY2jRlpRU8a1Hy9pU0A809atQwM4hyqbhwF3SR/RXDCeb0H1wqNeBsDCOVNvBiI/xKnqVdvHy4NI5dm2I4Tmw4QKeOLFvgDeZ+Ftz82cPRIzh4FcpcW2cdjY1I0f8UVPsw2+bdEfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7LwhFfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7LwhFfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F88C113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765979633;
	bh=tWgIT/UVk6UzOhZehgkWsVm5Qc/3Y400xt1fKsognHg=;
	h=To:Subject:From:Date:From;
	b=E7LwhFfUUH30XbrWsVW60bm2Bjb9JaHhvddudoSBJeIeOJVHbWPT7pt3Hg6nu07c5
	 fYyUNVrFFDuPlZcbclt9tlXRguSqaCpo7to6Z8W8Xpp9zjKCdWOfrh6qlgtfKSy58n
	 jsaUQLMJ5R13zkflyF/Zgwy/by5dV/ChivcVNRXDap5P3Lr7nFV2/hjydYWnhteSmf
	 hpJLNsNCU7pwxvsZWhFKF+VjF9j0QkRLFhOUKaqe7oykYKgs3bwWAetoSUu5LQdO+z
	 Vk048DSs0a2hBMuDWDF+Q/6Negf9maq+mrvw0y7NSGDhc+JzOsVdfrClwMkzMUfoK4
	 Ad4xVt9bYUWjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F4D65C49
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597963360.15301.3518181530458981181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba2992fdcdac6424461926c38da788e33aa314433cfcdee23891f1dde96a8e0
Date: Wed, 17 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765979633
