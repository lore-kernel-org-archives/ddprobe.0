Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C5817B50F
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751692194; cv=none; b=mSCK4b2tinNjdMtn5+UjqtPi5ohVddzM/s/sV/wIBq48ahwb23yxyAMXiRSV/uA/Msebx5PnBmUTWTGdZLO3UDdVeoxOlf9VxJxyUXMnWyLUY0+ijfuJo9XOzVE9T4DQriIa4dqOWtss+if10bUyuGyFJ0co9fPpDldDa7b+htw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751692194; c=relaxed/simple;
	bh=qjsfLwxmV7uSm6ySNBIepkJcNmwAsXT9j+RmSEI8PiE=;
	h=To:Subject:From:Message-Id:Date; b=rcXkQoisjL8G/p5vGKVyIMXUrPOuPWi91BEPEPCdQfB5dGdXDzcHCfnMWV8BXLbkp9q2QgHfo8DyHJTQWi0r3+J4LIg/YYNGBZPZFJJIFsce7JaMAEpumvlMPsnFk7V2nZpCpy/Y5lgJTcnxr/vcC/hExUSmRmMf8pTqRiSWqbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjWS6ri3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjWS6ri3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AE5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751692193;
	bh=qjsfLwxmV7uSm6ySNBIepkJcNmwAsXT9j+RmSEI8PiE=;
	h=To:Subject:From:Date:From;
	b=fjWS6ri3AMOli5jREUv8/yqj+YNV2y6Ef+X3wWHIXyZUwzpA/VoYq84s9iwYk4Ngv
	 lwIchBij6LQPlR357pm+ewQNRWNuUFU9B6ER456VKUFOnBGwe30AQ8AC/Nsm4RfmHZ
	 u8UQGR78zXO8RISR6dJuw9DxpHmN4w+NVgb6s4bkiyoOm03L8yFxoq9GSoxGVVWgbG
	 GYSkQgqlIzLfQeNYVTOEjq3b02SbAUG0j8lwiHSA28Pwyz9xt0eSQkf4VshzQGyAvW
	 BVeS6KD+bDYonqBKBEwr3LzgU8hE1VJGGvtA6NiB1PJPyTQJi1G7HmvYg3wZFVl6VR
	 1mE4xOLnbmuCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D4FC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169219357.3445.14653649786972242316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6784765dde5ede9cf33f5660708246946b84d29ec4d63d8f5384eb79e9a800ec
Date: Sat, 05 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751692193
