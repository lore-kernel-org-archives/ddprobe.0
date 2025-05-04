Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3854917B4EC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746386994; cv=none; b=CtNGp5IPqRYs7WQku1btwIhOuOCTr2i+e1mp7cnfh68ZNBvvvEoxqKTceWE9/F5+miCkm0ho/NEKtEJPU++CjikPCjHQm5wCYXwuG24+1cpXued/tJeadI+RwS/CQ7j7TG3vpLilgFvCt7xAN84vUMBwd3+zcJQdXt/ZYylt3xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746386994; c=relaxed/simple;
	bh=XfhmXs5sCcrFCi/+sFLcz+q5ASinAlE4Ounpry0p8E8=;
	h=To:Subject:From:Message-Id:Date; b=g2HaJJWv5sO65JLZeXA81rGXxLMXoPQV2lNxkGy0VB4BdzzNchUo8m7T4EH4DkydWRepcFaKg/jJrSFb5TDvWTNXQSMFCqv8UGp6raZeYd10X5c1LcMQNhQbO9JO+F73iYZs4ONmt83BPObNWld3yAhtSYxkNHC/asfCcaus5kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgbyPggn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgbyPggn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C31C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746386993;
	bh=XfhmXs5sCcrFCi/+sFLcz+q5ASinAlE4Ounpry0p8E8=;
	h=To:Subject:From:Date:From;
	b=SgbyPggnvkMGD4JLVRZNqkwKZTOMATtyZ9MO15Jjnuzri/BRcW0jBBlGbJc1oOpiV
	 4esTV3Ykq4z/9uKbzqoYq58DFcUCwbnYRr8r+GNnefctYGgLYK1KXfndCKcqyWND4w
	 gcxvNzpOAcxMPPsVzWf0Ey1rfxOFEd5KUPggTPyQPZNNkj1l8pOm8i/Wq+GH3ts4sH
	 tILBlw/8JF3rxLv+TrK6Vwsb5fJNlVPnv6veEeWm9lpyK3u40I4TMdHK1LgfjjQ+1w
	 b2YgqI8oQrYQdYOr8VLCyWggRGQloEd2UDW+WTbaOCDk0Yw0g6z3P8MVi7tEcVX0bj
	 GLCiOus9zrKkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EB2C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638699357.9078.16450606802992815314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cef88ee17a554cc8245e32f0ddf52dd1c5c63110016994254ed9c31f4a76e54
Date: Sun, 04 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746386993
