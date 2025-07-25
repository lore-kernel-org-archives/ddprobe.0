Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313C925D20D
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753475394; cv=none; b=ZfZpbBQslJzFCH3U7SBIV+4NJnibQQZ/b65SJr4vi+TkqwNSdcPiVJq0p0/RbwamHQEL7S3k3w/2GmBki7rJ89VohZEiSq19ihNN1qbWcoXlUlZYlXIWqi0loRuuDUehSitbeMFnqBBuqxrBv5NiYrEPXVtjJ+sFkOAG5EW37U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753475394; c=relaxed/simple;
	bh=KDj/HA8RbfOue3+zByJtTQ7P5gaDpSm0oO+WxZOVBTg=;
	h=To:Subject:From:Message-Id:Date; b=S9aDOD6YNbREgWr4+gQBlDG4WcTNHkSKyhVFjJIedZzQHSIRvjZfCYv91/UAUY/ywWxAkVmKDm49vKlwIpHxSc5jJYhbFYPWVMKJqs3+l80IMeEOr/OVutYmUgwOZBiORytd4dRlyFZfBLsurgltwkI343CxdmFgI9iawC5jpAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tElMk/6r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tElMk/6r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F35C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753475393;
	bh=KDj/HA8RbfOue3+zByJtTQ7P5gaDpSm0oO+WxZOVBTg=;
	h=To:Subject:From:Date:From;
	b=tElMk/6r8/4hvB7zaYv+3CJug87f9cp0jbphpDVMiZLBYlJC6GAGSHKpWFuV3qL0t
	 /em21JoiDG7X/ob0rgMvd8cQeaG5v9Dv6jVMq8ZLDLWxaOCM9gtM0FTh3yd8wlwef5
	 s/tt60MyOkN0QOPWhZYYkZ4nvhVbXX4G5Gn8pGzEXQkThZllWvwwRcEhUODKFFHPoY
	 jFcPSzBe5uoWijIusuyqZehWAgU0XDFTbbrd4yjr5jS4gmTihx0cvp9YTXkLvjULR+
	 E8AJDkKfPqG2uM6AichcMLJWBKTqoGRGD9C2SovIiRY6MA/8Ug49aFNyAWZi7mcMgq
	 2GVc0uD/ks7vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90492C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347539358.4303.5846612090727793790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fe702c2b578bbc7ae024d7b9a1b43d0f11bf81673cf515c72cfeb715b7fb0f7
Date: Fri, 25 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753475393
