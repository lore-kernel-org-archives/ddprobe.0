Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BE943CECE
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770311634; cv=none; b=Z4hv7PjavuPCgdY5aR/ci7q/nH3HeiWjcxMDk++XEpEP1kKowAyd+JDyRPg0ZUyONfdCiREcUNLCCT2ZQLOYyiSc75fH5gNFR+zBx4I8KBCyFMqCDLIzYXn3eVpxvGg0HP2wPYrzkQrzu4KzSptA9MzyKGUCWLD4zS7/OD+xdyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770311634; c=relaxed/simple;
	bh=KJT4t1ysnvk4AjDJGLesd6ISoC92lbA0wlHMk2GgGog=;
	h=To:Subject:From:Message-Id:Date; b=Xo5Gm0dIgN5T/GMRxoO4W1U9KCNemM+8k6RODDFlh+p1xNJVHcPLQ288aj35+13X4PUWwrVVztLfB/MolIS/MqctH9VwawZqgnyewEI4/rVc00ERtNQLAYbLQ7oR3ETECBRDaKkTAVVAl2oqnSRxZQiC1smzNYVqaY6NNsV7PiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iL1tOjzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iL1tOjzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A463BC116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770311633;
	bh=KJT4t1ysnvk4AjDJGLesd6ISoC92lbA0wlHMk2GgGog=;
	h=To:Subject:From:Date:From;
	b=iL1tOjzXbHiN8/ccyx1f29CrPUypDvTGpEUdVVpRq0pZJ1/ODFKJFzl3Uked1jC0k
	 5th5qgIbtbILHXQjhCXFDHWFVfm+EZjHXmMNtTfaVdSlUTHJZanvdGAs3RoLcj6LPR
	 2b1QFUwg8lZFj2G0WUQcwbspFz5uCSc0rwmOfR6Q5frNWxCw/+ZSjTTrk+kXyUTwfp
	 /n/UoNIDsIdkUIa9Ujr+G3HR+DwL7qPQaKQvfpiv/dsv6xTBFTiqJt4m6jlOrgIEm6
	 HyxKUwRt9M5RKemb0gjnGLjcbU7j864nklBWFVVrxcETwEuDeoE/j8SMzyEqHXfbIi
	 UW/d/IiEgOTEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92006ECD98C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031163358.3729.10692528850962228511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e003ecb54c476361f390d1a4b2da035f60841d2cd2ad97be971b783651d308e
Date: Thu, 05 Feb 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770311633
