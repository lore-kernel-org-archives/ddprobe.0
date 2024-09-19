Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376271CAA6
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726782354; cv=none; b=SiPYFXfBrBufrSdJ073lR61d+Qa3PneYmi72p8Ent+BIcqrTsbawkCyIvMgrV0nYzDRgD7HQqOX2ICt0jW4qOW98z0fviNwLS3ZxcX2BN2bFzkO6xhcnm/vL9eitZdhGcZjtvf+/HS8KO+5ls50/XSff2f99toiPL4lGu17PiwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726782354; c=relaxed/simple;
	bh=Q85rLruehF3Yq0GPXRbGkgdq3AN/nqi5ZVliiEpE+7Q=;
	h=To:Subject:From:Message-Id:Date; b=c0trwqvdlW1q5Kw0slY89mZRDc61nKxUoeSaySD0n7TV9Vk7AZ9B6ck8WVMTEMLafm4t3x4hwViUDqMac9W4Pae215PbDUQSvk0LXvwRTAK2nau8bqj3Mxv0SyV3lAohBC5n2kw99dIOfZ/fbRXbOIaQZCxR2+opFofs2VyMavQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdi8glZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdi8glZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B04C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726782353;
	bh=Q85rLruehF3Yq0GPXRbGkgdq3AN/nqi5ZVliiEpE+7Q=;
	h=To:Subject:From:Date:From;
	b=bdi8glZgzF2xtGKcBGI5YfHBBjeRAMUYxE559JWSTJzJJcl4i3PZNCwMmfCyqBXXR
	 aS2TXpT+c0oFOoaREC0Qiycu7y2av9o8Emq40MND/QanZ+3d9SE5RnPe8k0lsHL9oI
	 l2iNC2xl2krgB3U7uxCFH0uea5APEUJyL7GInAVB1ZsNjt4peQ5z0AYhYsVLNkCnse
	 K6+0/q+L4/YrzMmxq7fPlxJ/rNwanYzs1hb8xAZA0SM6mWbbKq48QDYZwFAos8MYoX
	 IbOzQ+GY1nmm0CYxqxaKGqj9J0cpH1cOoXmZfKxSFjFsBi6b9jOoZbXkEbc/79VJnR
	 7hoIAI3w+/Nyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB71CF3972
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172678235360.18804.3462981856038533317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ba7c5c230d01d4be0410dd41222abe60bfffe0f4273c0f017c49602a926de9
Date: Thu, 19 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726782353
