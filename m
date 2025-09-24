Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9AA29D27E
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758754793; cv=none; b=SWD1SU97p4jmPqUdvN9BTaf9B1y3EVED/jwJSQqki7ZvtQQ6QCZj6+OWg/N9tEBG2j0VSWKS3wS8IGibFOzvcbc2wh/a1uRDqltgsz7fWyABIAfc5cQQ66cCyNlwW5aMSUg9tDoxX/0LOl0mIbSjmhOj3Ld6gMXpsbuK/x/vCzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758754793; c=relaxed/simple;
	bh=RdpE4ukfFGAPBxQFOnk3KttouUFOBYaHz5xdtEOle4w=;
	h=To:Subject:From:Message-Id:Date; b=EyLaXeRU9iolTW6IQQ7mWMWnM7I5YJ/gZdK1o8Y3Itd3nkP0sgkXrPClv+2rFOpIKBrcxfHKA8eRyhrFm8zkSDY4iI0FkPrsSJz7AEUnMlCJGxGTAJNVowDac0UrFH61ZsvLuk9Rha8AHXhAE4tWhB8VLEhqUVElafy5oJ7Nw1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bL8KaCYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bL8KaCYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6723C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758754793;
	bh=RdpE4ukfFGAPBxQFOnk3KttouUFOBYaHz5xdtEOle4w=;
	h=To:Subject:From:Date:From;
	b=bL8KaCYHru2getnM4MRFGXXBPXDO2q/iiNT99RjNbl7wq4X84hC3GWLifkLgpLlnk
	 xSURpPih7QKZzEVIxHZ76685mKJwkqkkyHyxyvxzL7o8Hq2NH7/iNUvpMbG25wS57Y
	 C58oHv6+doWO2KL/CxLOgTqfshUwHGImNgEIC4hOtLj40S47xDNxhsTwyVCbpuOi/Y
	 mX0at5xr93dl8jW08SUHaFkWcRN9FC0Ep2qcbdvnEdCFcz9xNpIETECWFo5KDl3bJ5
	 QW+XVCPAODoxxKf9Gn23JLJ7FsMhrpZxpksh40VkZSNKPog44rfpQ7eoCCirYmFmiF
	 hnB/ZHvOma+rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C5FCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875479358.29074.11702314902545277024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3a970f131ec4aabc1651148cbd7a10b874093d73d5d0f9ebefbb1b3a765c0d
Date: Wed, 24 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758754793
