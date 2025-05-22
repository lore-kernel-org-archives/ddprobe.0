Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBEC32494DB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747956593; cv=none; b=b7VhiX+XZyGgxGXblFxnZfn5BSzzGaZdIE6RWlae15iGKu0Cycj9uyu4S32bxrLhZJ9l1b2Xqr7owqLoUP0ZEbrX8njhrg7843YUvB8xLpKYazX280t7bwsO4NmvGGbJJh+yxjpCcc2265STPmbnqYkYAAy7UAygxmBocVRLTxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747956593; c=relaxed/simple;
	bh=sQEBTdXtaOWkKpGGvKlcaO1WE63LXIgnxoza6cUQ7cU=;
	h=To:Subject:From:Message-Id:Date; b=hJSZORQOFn87G+VNDXjG6KJx2nPxOQOXtUwsLjkzJhE+ccpOAt8wY/4J1q7OUOJd26v+5cwewk+1lYHBgw7IRJYCIjLto2bVoGGNg8UIyJBGozCSY/gCJRAFc3I2gauR6vHb4IDWLuuRPpQPDKF5ANPHV1KVM7xccPSYTrdNy2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRpXwTsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRpXwTsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6ACC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747956593;
	bh=sQEBTdXtaOWkKpGGvKlcaO1WE63LXIgnxoza6cUQ7cU=;
	h=To:Subject:From:Date:From;
	b=jRpXwTsWnFG3py88rI3BgMIpyM81La4TngT/LITxRaBbdg5wxiD7F58fItUJRyn3A
	 uvYj6TKWcmPbyFafyrjYjiI+H+6yGVABV8eeVDf6SG3V0yx08178WD6uB31kfG0CxA
	 RppHQwGC3e+ZMCMMBoh1jyJNNBx9CnIZarhW6BT3Nck8mtjlvYsXkxlrkoJ9bV5Ydp
	 8Stm2a+NiJkvUQybwFukI55El66/mApyV7B78U5AtIDnDGNhqFGz6iGrerNQGDUmlh
	 KF3DkRVKAwx9I4iyUyiLk6oHvDDkS2lcUw1/Ju2KyhnbQkbjpcIVK55Ww1wOabDg9l
	 C+Fox/kS+r/2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E743C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795659357.19088.2265827595707555005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986a299bca352009372a76bed20f97e2b8e5dede6a829950e3376ab1a9c977cf
Date: Thu, 22 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747956593
