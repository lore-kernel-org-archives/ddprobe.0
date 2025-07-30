Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD3179C0
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753844994; cv=none; b=moRmZuILUQlC4LZGhPLllebouq1KK4Ewdh3wxo6QXTxlypL6c/ADnC7JkezQkgMAki5qA8biCMjKWB9IEK+6NGd2UtlTOtDUAL6vK/FLdBUef6lTPS82J+1Jjiro6mxwdKduB86/8lteJBR9AR8P2aKnWmxqTTSo9MVC6eSX8Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753844994; c=relaxed/simple;
	bh=Rtk1ZKqvXZKT5E+bPx5i13rTWKeCrlI5wiOIJOACG3A=;
	h=To:Subject:From:Message-Id:Date; b=MaJ5mKQD6gJEZ0OGpkXQan6uJ5jsZOi8gh9icUk1slJe2mylJFu4WgwsNAil+WLBSlGpWkQPoNonYDNz2ryGkXixzxHqDN2xxk/unkt3ZTQBlJzlNAYVQNWjJFA+xN9pMHjaPfAcfj618tu+JlX//QmUk2jzXLAbiez7rRaTJ54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHnH1tiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHnH1tiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A96C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753844993;
	bh=Rtk1ZKqvXZKT5E+bPx5i13rTWKeCrlI5wiOIJOACG3A=;
	h=To:Subject:From:Date:From;
	b=UHnH1tiQp66knDKc5+sJMoQMY1KcO3OTszcsbonouKBVXCjiaRUxqnKoOPTV3Czlb
	 nTK14qqv0CY15ABUd7hwkjJkF+Uhp5YyydgvGSnbyGhoIe+OMKVvcMiAtvTyRaeId0
	 fmXLuhQgwNXZEf3/dnV0tbrqxHKr9N8XeHEfxP3YNTczt9X9JNmmRKYD8jAYOXv1cL
	 xCOOp2FVF0vvFTjNZBIES/0KwnSDN6Z4ke01hM1qojxVtZ9T4Yrc+jBClaqz2C0W82
	 K09OKdzDJGggk/H5ixn8PxmwMXGwBXF1cWu8g66Xb6N0TB/FTcORxc1br24Vpnj7VS
	 CVcpzfMS5EqgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAD0C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384499357.21608.6342953649077793696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60a410e48b77e22955c1ba48d729b1cafdbc0f9408a0ae9022d3cabbfa6b9c2
Date: Wed, 30 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753844993
