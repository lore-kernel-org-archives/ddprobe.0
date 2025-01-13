Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3BE1C1753
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736798754; cv=none; b=O900NazSACoLonMfZyiOLropeLPAPeujgCDdZmcaF3shUx8Ql3FsSmINvW0ZQp3caHJdzhAzW+UduMM9RENcx/PolDm7HOcrCzHPxdGZ8rN6C8JewrS7uKU2BKglt3QkqKb5yJNrcZ1dlKbd+gFc0Jvij5o1V4ppjQi0Z+GUEFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736798754; c=relaxed/simple;
	bh=kSSgs2KlhVKEsnQNiHVBt3tRgHIodAlvv7wvlPlf3iQ=;
	h=To:Subject:From:Message-Id:Date; b=oNnqjLcaUtDR88N4LKWF3EAwLOTMAxOFYCiY+Ca2K00imXzpqFtdr6Qq3GFiZt3btsj0KgLQi5TUO5r4mQaIhfd4cSiXrCFDP6Ol6NSrKWfbIR+cjY0cvJGZkSgOG6IpEuIFop82mTMZzCvprVkPxhwTKd8iahuIc8M/oOvIlMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKJRAlkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKJRAlkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE538C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736798753;
	bh=kSSgs2KlhVKEsnQNiHVBt3tRgHIodAlvv7wvlPlf3iQ=;
	h=To:Subject:From:Date:From;
	b=sKJRAlkvXA00qHsrfvjYDRrsyy5Eay3I0bwHYthe/AaprZxG6SYfwPp9/l57p6NhA
	 Cn/P71lUFSk9OHe9VtvARCHm4AX91aDqfgGR+MGdnYYBS92dQdITgJtr1A2DvnHsOL
	 0LWZ2hLIiTzOwVBsjhf/Yd30bJfWowFJxV+XdufoKnwxaZE18AznBqcxQJaV/8azLU
	 nSy/AXhAtiPsY+6UNWo6lL5vGwCPwVIg7FfkFMTEh6gzCTVj3YiSrGEeqIEgkWckwm
	 9iaYVhKrs73BZzAz3si6sL8GY+afAlarVD3kL+E0y7XqRsxJpv4z+dD0TS2kizj1wc
	 B96l/3bAz4taQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA026C02183
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679875368.10861.4656251874560930902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2479f3d89038cf87b1633a78aa84cbd221e4340112d25a2c50bbfa01a8a827e
Date: Mon, 13 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736798753
