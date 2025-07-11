Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F64E1F12F4
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752232195; cv=none; b=Gni8GVX5YtLSWXt6XWqukbjcuK08WOlP9PhYptobp1GyFrUCxHfn0zptyPTjrRb6qfVW9NM3QO80gSPBkMjDvvGN/Fpr9Rm7US7UCLsx9oS8F8Z9eM2BCBaK2iWY9hB8RNKbpfOLyXDsJiC96vMi2En6GahNRb1XDJCTh3PZG8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752232195; c=relaxed/simple;
	bh=Po9txQZw3k/NmMkDI55+FmlNzfUIx6Zg+yMQPtC1pxc=;
	h=To:Subject:From:Message-Id:Date; b=Sr7vxiOTKuPk/WzTQAxp8K6COqokGUihaPe+hDbKj0slsUkQT9p1N7bRRW4CrkoFuc9MgUwDCx1jv6+xOEOlJb3GrmyksP3wCehzLSOnHMdWbMtSoEvtICtiH3Ks3XNjQn927eRXl1shH3xUiogGR9nGLJ6wCivvk7sIxDpwwLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tk6QOtl6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tk6QOtl6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E81FC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752232193;
	bh=Po9txQZw3k/NmMkDI55+FmlNzfUIx6Zg+yMQPtC1pxc=;
	h=To:Subject:From:Date:From;
	b=tk6QOtl6p32l5R+EAWyJ+xarZ2gwMi+vUZFdLCm6UqOOYJXJaiUkJ6YOuMYqagLV0
	 iKG8+fsbZBXtGrgBtXwDwB4UkusK9nJppRK6o+HPsSHep+dxz+/QYRBZKX9GCDayAw
	 xxh/I7X04KsUgw4fv7VRIgeagbrQuce3YqLqum0H/gkp/7JwlwfJO568LRV3U1hNUG
	 20INlQS1bVNoIKcbAULCzNk4bAbCGbTFBu3I96pRqxBSGl3LGPKqgK3+bdwzT1Ml6C
	 0LmkMmNUc/DWQZfpNk9gYiB+Vq4oGIv2KKxp2/Ls3wlr1HIz8s0T+IbaC2b+W+/sGB
	 sB3vd2NZxfk8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906DFC8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223219358.11160.16589408387644765859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba0d29813b9b31514e3103f5575a8253861ebbecf451a8d4765e328ad7fef28
Date: Fri, 11 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752232193
