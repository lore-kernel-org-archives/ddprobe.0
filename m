Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA4417ADE1
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726725954; cv=none; b=AsAbyIj3G2l5mscgtazSL1hN0HVq+JMCzzxzRpUW6aET706bWXKKIPOwJOVdU5c07Nd60XYjuHfXRDPqO/10mrxdRyK170re6zI8AilnRjJt778IBrxcF5cm93S81i9zQHmRRRVsSAB07V9gdgVgNyIZ8hJvlHFw3gFHjyCcF+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726725954; c=relaxed/simple;
	bh=PePfxHvIGAHaRiwQ7dPrUpptpvTDwGxFVxOsn2eA8+g=;
	h=To:Subject:From:Message-Id:Date; b=LafcsaRZ5qWHXy1FnKakYliCi9p26bOnmZDbie/Qs9+i8YRWCYT2DuYvDaYifPGgom7k3D/0n5D6KCoNMdM/dCJWpI9K2Y9U9vijAoioReU81vev51xTvcdVrTMAGyrCM4UVGBxpjQ9cDOavZEbXQ6U+BCOhZiloMQ7S8xze74M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjcsH419; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjcsH419"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC669C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726725953;
	bh=PePfxHvIGAHaRiwQ7dPrUpptpvTDwGxFVxOsn2eA8+g=;
	h=To:Subject:From:Date:From;
	b=KjcsH419y33tQz+RZxD/29ra3ehaPBZ0DGMaDO6csJPMBVh/aEN29pzrjtYOlvJBh
	 tni6J2S9EvN5652Jq9n3/L0Tn1dkXn/PlB5C35qfRxbCFkoNV4VgQxuqRL9Au2nb+3
	 4QMZAip9cOpjOYtpEkPzO2bh4ctnCfn+smg1u1jHZNgjNvQ4wJiMnHvL9oSobhbWxP
	 wNI8ATXmFY+l/0tZX2pMOa9rK9vcI+wzA6JmHgFEHKGmKvfri7mb09xZueMr4CDK6o
	 BQsShMMQw5oK998kLTTeBvGl3YSRGqG50yzdfBhnIMql7W02O82u1ySfZPmoNJK8hj
	 OpEZDflcXfNGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99886CE8D49
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172672595358.29120.2323772701359478198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364b41ff9c15fde53076ac14b9951240cdb7be7ba398c426c039dadf8c82062a
Date: Thu, 19 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726725953
