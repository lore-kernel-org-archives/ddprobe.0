Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3272623B62C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770168834; cv=none; b=E47g3WKiIkcu/gQMXeSe98qgT8r5Q+YLk09bmDXc0Kmxj9XuXuyhdInMa4jp9TEioXeEb3uIk5lEEb+JW2GZp8xPCWOJgRxW77VRi9X0qvitPwuA/91iYpJVHWlvVtz6GamNVGt1VHNHKO0WJZy30Tz5i8cmAC1DfFgcApLxLkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770168834; c=relaxed/simple;
	bh=ljS6t0LWaw9MEW6Zp452sAmkBnkY4fpX7J7lfMv5LIQ=;
	h=To:Subject:From:Message-Id:Date; b=Xs3B/mJsJJ9wFXb5s+PQ63tD+ESjSdPdU6vCb3GDfxlF0L8orludB7lmyHTiPfMYf53Mty124m03gxq65BadwFI2zfgf8MA47Eit0SAdIKj4HYmxTkqpsmTL2TlxvGR+UjgUJ660249hM+nHYGh8RzJV0UjKaZ+dMMp1Jdf9vwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpIcRaxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpIcRaxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5CCC116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770168833;
	bh=ljS6t0LWaw9MEW6Zp452sAmkBnkY4fpX7J7lfMv5LIQ=;
	h=To:Subject:From:Date:From;
	b=ZpIcRaxJ5nu1n7bwY0dF0nxkuSVy67Kmf/B94D8mY8TZ+9tM6IL+KH7M0LrecNhSJ
	 C9JokuunU2YCHCxM5OdVaA3WP685MftRE4vZuDLkgd8UvnXoHtI9mjC6WDYfgEGy8r
	 E1Euq5r1VB4WuESdUFGY2ao2sQrWNImra1ItSgzTU0TYlDbhrOSsxKRTunS0uuiRmg
	 ILGf73fKQiO0ZukNi7Aqxw7o8iYR9fHgiSpDkYwPZ8lJLySkkmnTeYoxz32G1fW0/t
	 GhxGqJR1utgvnXcmobEMaPt8TvMF+7kwF/j6FT8OHnVSvv43ZexQGjq0lhhHZWxTj+
	 b8I3S9o+N37IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B7CE8B383
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016883371.943.15840545666863032540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd1fb00f733a1fb6111e19aeef3c55bac1c9e23d2d4df451449f360d03b5224
Date: Wed, 04 Feb 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770168833
