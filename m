Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C03C40BE5
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725729354; cv=none; b=q/3kL/t7ZNaviZa9KUQTv6tghAvvdtAHYtkxr2u3PjAamfPl3nru8fARoRfIVXIdJbyEhhRVTQ4i91Bx+TKqCtCSj/FdNtUCw3oPLTVD+HBnSi+C0CFv76oavFYjJqP05WCxQEZtXBz5Fxp/WNHMZKirkd54xJTTgUUoRrkhDG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725729354; c=relaxed/simple;
	bh=J01GE2/Xelg2JqoR5YU/rG6y9ymshEhi8T8bBJuT9WQ=;
	h=To:Subject:From:Message-Id:Date; b=UTEjsv7wiayA+BlySA1V5ITELkgn3YI5sxRZ5pH0VHAMja4TNwRAQQRJ3O9BA5F6swscOjRfanr+OgcJGPiTfKA9fXQKrdrPIZE2CrZfZ1AqvXgqGvUonjT+FSEr5JYFAaTuw17Df01cQoOurJFO2zshcwPwYpBGKDuj9wbp3sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg5NliA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg5NliA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C18C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725729353;
	bh=J01GE2/Xelg2JqoR5YU/rG6y9ymshEhi8T8bBJuT9WQ=;
	h=To:Subject:From:Date:From;
	b=rg5NliA70XHA2DUmapHFhGoHFnDtIHEEbt0vMNP0In3gkLkVRWBHb4KRCXZCK+z9W
	 8MHFvfx90Fb0la1J4AC19zFOUippE3O0nhGDZ3wlZwrKdOjhe9EryoHD4AHBpRwotS
	 q/B0xcWkQdSaUB/TZBQUlFeZM0Ai4Qr44p2UNa9swqSlW0ftPsfVwsdqj/aBnxq/4E
	 scPZFirc9ZdLMb8PrcO8+fO0xP/ys5gyLN3K+Wo+TkH7fPqCxyRcIoXaBH7mWneNGP
	 hqrqDVgq+PRT3JD0cXjBhjmirE9VkcQi6moaXQLAQHOk9z90kXZuPbLSdDEDR9/cbX
	 KNWE/bxnsndLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FA4EB64CD
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172572935364.30914.11764088241712634792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc389e45bf5155a9b80f25fa074ac32a4202ab20f255ac305721d09322d0a179
Date: Sat, 07 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725729353
