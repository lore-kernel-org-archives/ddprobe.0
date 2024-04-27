Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF513D552
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714188143; cv=none; b=jCIfZxe10HTMIVXg7b6qpymsFnSVAbgb7VhwFnK/aF9D53g38m2Xuj5dhFnPH1Y8umTrOvzzVUwJfO+pQVkH971n7ZiRFBsmsW6suSbq6v6tHS1PkMQlP7PSb7hLNPEpHjvvBYiOGQKouryVkl6n6KrtCUXtLvg6X9bX+ePmTjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714188143; c=relaxed/simple;
	bh=rv2kNGE69SuYRkBGVYzyBpxGGMthIRQtLouNsI3/U5s=;
	h=To:Subject:From:Message-Id:Date; b=ukH9Vq9ylHkFIu66pVekLvE8LtR8w/o7EiGXTdKdxZmYEdBOsXdoGcb3UThr05weKjH5yVgyYR2SM00aT41YN/8cTNalLJ1GIxdSbtTkRPnkn9EKKtZ/0TpBEVHE3ZS+v3XRF/mLDNZhhKzFnkrxv06Ghzs0KsjPXaAOvy4yJhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBqhPJZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBqhPJZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8856C113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714188142;
	bh=rv2kNGE69SuYRkBGVYzyBpxGGMthIRQtLouNsI3/U5s=;
	h=To:Subject:From:Date:From;
	b=BBqhPJZ5NjdloNyfzsv/iK8XE2Fi45Z31AP08iotal+yl6yqY73aOHnHF1QVr7TtK
	 79GbSgElcT5nY9jKLvZDf1RkjvWYOHTWwVrQuIJ4u+pixf4g1asiFUDwVgLQbe8Qt1
	 lLh/7n+K3RLfIoPHWR/vMbQIdsBFwAGpKyI+H9iSVeH1L9M2GBfSVakuZ0vgpU47kA
	 5kKR2jkBSzLJQR8tXnyeF6szQ18Kl55s8AdZ8vl+ZBW6tHJJNxQR0gliktDZd8vIIk
	 Cxna+HKP0EgiwG9Qm5l2tTt4v4Fqma/oPA8YT1e7I2wHMdrNiOyxr8UkjqQn47tzV9
	 etGUBJrrt1cjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FC3C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418814276.16732.7733863335390016142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d1226b5344009517e1e3ab4bb7e4050e4daeb93ee8c25a93cb046ced0a0eac
Date: Sat, 27 Apr 2024 03:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714188142
