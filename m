Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574714174A
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 05:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741496934; cv=none; b=ei8PYHj9w6PQ/+JCmO+Myjp1uzVQhVlYdu5mWSwubm6oxGhU4T7ApDeMqOgsbvYg7W3MB7PKaflJpJoysOAgZQl161M5sXgRr5AvEgbYnHiGivPS4S5emxzdzi79t7vngL8bfeS+LwUNz/upN6B7JXDjk+UptUfF+RfkQMpNPYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741496934; c=relaxed/simple;
	bh=kYRkFFkxhVUVS+0mAtduYK3h2OHUS1Uxiee8waIpU2A=;
	h=To:Subject:From:Message-Id:Date; b=Xy412PUlDWzNmG9CSLCYAkdjr9NPbkhEBTewkvidg/nHBqqqj/w0gXdhPch5gwfi7kEgS+KQiRvy6fKUx3x6VyfCsv8Z3JP6oVsWSm48WvtQu/bMhyBqNqkXYh55/XZQz6GakWrG1r9UlcNMq74AOt+Agj/YYV0OI+QwOAt7Cq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVjKg/TB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVjKg/TB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B534AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741496933;
	bh=kYRkFFkxhVUVS+0mAtduYK3h2OHUS1Uxiee8waIpU2A=;
	h=To:Subject:From:Date:From;
	b=bVjKg/TBhpt+YxH14m2N0HLoSxxE34glLpvgSNyk+f8gwm5yrnE00FSoPY6stt+Gi
	 2SLB95n1S4ZJTBwS1e9hvVZc7uY3ko/INUYerC1d2bb1tZfadFJ+2Isln3cRMjUo8U
	 MWzeY9H7I5vQbv/hkzKhKliRKzAO7P05zZLIPCr0bZAKh9CzXqfi7ivYdtR4Ed5aBf
	 r8FdX+n1EDNuphKSczMxc3cwbg2NtsVlt0mmJOT5Kl1WJI1PiowF5UErVWuGyhKqHv
	 Mse1fFoT4TdqZPM25z2IKylts1G6IDl0VKqWuOrViMrgkgkV3/tlWO+pKQkCofhSqF
	 ApAC3cxqzy7LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F61C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 05:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174149693359.20467.9703860235202911599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121da9aafa70b2aa2210a4201fbb3265b81e327d2cae36ac6ebd549835b2ce4b
Date: Sun, 09 Mar 2025 05:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741496933
