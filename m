Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC3C6FBF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766192634; cv=none; b=rskchF3pl+iCUhNKHdh3C/YxpZvezdu2v50F3Tmg8RTEDfBmKS7FVDDt9tw7RAdXsKGYiM6UdtEomuT3uBKLFnKN9gaNPpEBmC9Rtra4hwM3YBUlH3hZYXTt9OAY1a7suUvab9OOBmFgDuXspad7L6vsMPFtDQ4V2s+gJWVAeLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766192634; c=relaxed/simple;
	bh=XQt0djoeMLJb56quGEYQM0GyQEloaVXoOZiKKaZbvRI=;
	h=To:Subject:From:Message-Id:Date; b=s9O2Ph/KjF5KOWPHeQMm1k9aqCwJeoKG2PIcnYAwWKlkmF5kJL+TwumxRS1ZxA92UMmNrj0hrIT9y7KCqP6dcYuU3HzxYW5wSOXC0fQ+58RNqT1th4KBf7Rfg5Sn7ICOmhVtHJs+eiBoTYoS32W94MDp7I3vym5IR55dAK7F5R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxqKHf5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxqKHf5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F4DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766192633;
	bh=XQt0djoeMLJb56quGEYQM0GyQEloaVXoOZiKKaZbvRI=;
	h=To:Subject:From:Date:From;
	b=UxqKHf5G1Uy2rnMeQk5qJJEy/4vG59qLWYNpjAyG0L0HVD04sG5AXqyriLfCrYMXH
	 mDzUNWVrozwBIAi+1KfXonryNEGJi1aO5Hs0bhbsrRljWMxlra9JLeUsPTgIkxdZ8s
	 cycB0LqCcA+oWqKnydy6KxIUQYb1DK3jKL8jFabe3faeBwcegVRvzhF4k+X5EN003j
	 bRCDOMpZptT4XNCT2PQzh6mE/ysx3wj7gpioWnCqbm2yYmQGV2gzR21g3DL8DTbwKe
	 yCzr5GpCH2ZckiEEvCG7lbviwASVU9Wwan6K8rCHQ7I+YHBo47a6E4P9a6uyyF0zPt
	 QMPUPRSYCjdow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96466E668A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619263358.19680.1237060129471592714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4aa66706f2e5c9867d4de4c75bee1123e8c86a13bd376357629730d2c2981d
Date: Sat, 20 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766192633
