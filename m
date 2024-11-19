Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE07E1798C
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731980153; cv=none; b=UeC2QY7oDxTocBV1QqqaDVWnAY+KonSpfYyZgxYkq9qOg02TtVD2k3LP1Og+wQMO1AaV4cOqVzh0trY1MJp82qZ7U0Z4T+O+1mP6kW+nYDEE+RpS9Idq+QMChKXT6RBJsTBLAlAR0o2AgKD21fdW3UlxANl3hlv6qLNZN4iIbfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731980153; c=relaxed/simple;
	bh=cMCKwB+011/1mYl+bksHkPbDjFd3UySCzU3i9p1f1Ic=;
	h=To:Subject:From:Message-Id:Date; b=UbsHxWiM6lAUQ+76UMBXp31qXAlbf+udL5CHOcJyKHI5DpfD412yHJMlUPrJFTDMbeZPwhMTnSEzHGNAxyom/02Uz/KI9us0L9RcD7RcFWznWCVWZUbztSE+H9quSWcVBgabCuI1xiEholh7TMmB5UgI0yEP9MzLOX7baaxr+Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2BOg3I7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2BOg3I7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17D6C4CECC
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731980153;
	bh=cMCKwB+011/1mYl+bksHkPbDjFd3UySCzU3i9p1f1Ic=;
	h=To:Subject:From:Date:From;
	b=k2BOg3I7Nkl8cpR4p7usSV4s0xp9AMibf9YaWVpSasU+BdlzfPVXH7ljZyLXlCWuk
	 rgUbvk6fMqnoHd4XVunUJuhdBwrLUNzyDdpd8kTPbqwUKGyM+5h1avBK7BgNEOnAmT
	 BvLpTx3RyTd1vqoqgzN1gE7uSjI/8Telk1m2VwWvSRKEA+yf+Chd+9MVP+S3jDyM0W
	 eOQCw4KXLlqeY22+Al8XIx7kHJUFajMiULyAQTE2D/cWEn0js1OiZaGnOUZEPnD79Y
	 6dmznqsn70thxJAppwCQ3gcTIAk28LCgNPJV4M8ruADG95s37fXRC2mbGlJDsMtOb5
	 iCJpfRNMIZY7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2DD60D09
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173198015358.17541.740201393972714034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded044f0a836085c8d7a37f96626fe4eec23d0da1507a88a133b72ac8da16312
Date: Tue, 19 Nov 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731980153
