Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B832E36E6
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753685394; cv=none; b=fHM0YCMP6U6O7rTbcwp89ptbln9pG5KdUs8PC5CsANyMFA8cpyvTjcLzM5jVzAdSiih0lDp8ppBxghrNewxidt5mLLOY08nSQMo3vJIHDEI8mxdzlRcepSrCv5ImPjFKycl/+qzKmzjE2LNKZsXJBhpTWj3+TRvFoMIIQNdq9Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753685394; c=relaxed/simple;
	bh=I+0FlFFr62ac2eszbVVpRh9VwXmoogAuAOwqxnFQf6k=;
	h=To:Subject:From:Message-Id:Date; b=YFKxrM/waJUIH4K1nimdVFUtWCn7a9qDckJpXJN4Lm460TKrgK6ZAjiy+o5iHRKUcipdjtpoOSHKnrY7Yn6yBwj54dV8Yy/EcccV/Pt6EOYVezAKsBvmSahvXXHL9GTUCguQGdkSxPWZbvvnKcyK0YzGKVT2YsLyt6g82BQPErI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxbHKmyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxbHKmyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A229DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753685393;
	bh=I+0FlFFr62ac2eszbVVpRh9VwXmoogAuAOwqxnFQf6k=;
	h=To:Subject:From:Date:From;
	b=IxbHKmyRK/dohVBgXg+zJ1E4A6rs8WxRSi8EP/RwUKsUW7PbapcZkoMuPI7HJbXPM
	 1I0vN52pCGnoVvx0wAP9g8Z8KDBRtjul+e4BcvLQSV/+2LXGYFPs8jadggn3rwFS18
	 lTsUGhIokZTunlk2Bk8DepHDvuqFwaGTu2eiIwIm7H/JUhxVYbY6HpTZ9z0HdDl6Yv
	 dYuAUMTizUbBi73LqXLdo1tRIavB8aV+uvgKXtXPTpCbbd4nqHc8HTjkFkz/4LPODZ
	 kIhMC20XRPpOGyx4PsPWxoNfDjQqHH5oHBtSDRTePzmPtnbRXSqBgOwRHWp5gROaSE
	 FoUVZVk04cxrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F1C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368539358.13577.7673787887894796397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf1fc4c023d7264e7ffd4ffc58a7bb10ecc3181a0b51514509bafed2a1fe021
Date: Mon, 28 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753685393
