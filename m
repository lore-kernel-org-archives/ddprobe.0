Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106691CF90
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705486697; cv=none; b=qXmg53OMKkRVAbNrLliQ6biwAL1If8EHf3NUmji9ibWCnaA7uKRVx5+TwtYgR7mmrg/87YFRRb2cOxGSoeDovTdRRZVILX3NypGWZ9L8HUTXsg+zfFw8zECAxle1rZeg5zaxfuBSVz/tdxApwn8V9FrR8J8MyQcQvt7/fMWzegc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705486697; c=relaxed/simple;
	bh=99wnGWd1lDRkKHZIsFAujkAe7+ZSHvKAYFiCCrlXHQI=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=YrZOsm8kbq4zWg+qZmxL9vkK4a2IshITyLM8BaGNAShv7Itu0u2SCft61qMP/Rvcn58QW7wA305Aq8UNyjlVbu9+S0EqU/LIZhnCQTniaFcoFwwl4OIki2sq5VCNp25XcaPqQiAqkxCrrzkQaQSxrfb/niNqOwRLiMKLQSqO2Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUBOIzoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUBOIzoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76911C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705486696;
	bh=99wnGWd1lDRkKHZIsFAujkAe7+ZSHvKAYFiCCrlXHQI=;
	h=To:Subject:From:Date:From;
	b=oUBOIzoqGfCeLO9XqXhVBHyYEdo6hpT9bu7tpME2DD2z9D2WpZv6kWBb7Tepn5a8W
	 3msi+ouyhs4+ba6ZEY67JDVMmzWUiXyN6IhvO6LKxymaIw2VKMj88LutZ6mm824kfV
	 m2DADNste2JMKaz4ZEhrO+4tFeYampfHnmdLfdN6UmE22KeSspHjwzsNYtSxILZv2o
	 6mLwNJje1ijMXLTiVl5KMJtd7JgCc+9vknn9ZhETydlLoJ2hzhgk49aaX92Px5tgHh
	 LNH1yCtccoJpZvU/Ml+hYh5o34sBD7nKAgjLX5Jw0w4kAQW3/B1a4S2Ipve1xVPRBi
	 SYpYpyN01KCUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD23C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170548669637.424.3955359550336737693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2442df5e3dfd72e5c38bb7595a058f5be6953932a39db1990582c75d2bec03cf
Date: Wed, 17 Jan 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705486696
