Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0DE2F656E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769807034; cv=none; b=f+Jier1qeN3+PlcC9BmW5x3MKoiEm+lp74Rvf0VipZA9+/6pY5eR1+pxYmCqITui7F+yyrNwAGJNAG8pXXpsCW6qBTrM0nr7t0KlpZlsAzOUNGSSm5gwdCQnUO2YdPjEt4NNA0kBfJIMrYf9Pet3HsUCWPVUh5eOOpei7PczbME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769807034; c=relaxed/simple;
	bh=2R6ywThC/oZqKbNj+HkHVMckONJzTnprCZpU2hCfrO8=;
	h=To:Subject:From:Message-Id:Date; b=RaX5Wq9YnIVnQq8v0VgYg73ZCs6nSFS2lVNDiDC1IaJihXIp/aWYc4P9ysxHgExXjWozBgEPC3GnR3W02KzvgaJ0uV3BvzfkB3c1Z9J1cst+sgM+KPEmHuB5mTCAjXvX4PEGo95OIg54pbIOyDZzIJmpb5bZ3Zdx09Xfc+rZu0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUcJfM7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUcJfM7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78C0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769807033;
	bh=2R6ywThC/oZqKbNj+HkHVMckONJzTnprCZpU2hCfrO8=;
	h=To:Subject:From:Date:From;
	b=fUcJfM7drYsOpbCcKXTnS1jFyKBldRPTcA9eJ1oYERppVRFs/i6orGlWuCvqQgJ5/
	 YJiGctQayOjw15LG7O56yoQFe7UnuVP4IZpzvMNvYK7NYuBDIBgMemqKx2m0B5O5ah
	 dlgP+l32UzOZ/rZWgUvqUy9o+FWthvBzpp1cMTNqcvLpG2nhFXbzysV20RSlVUKohR
	 EeJ/vK7lJbGIWWlHfM6akk+/OSBqQ6ezj8BDXpTHy8L+7GCTR4qzHdzMWyI6tV+BYc
	 PKvumwgLnyCvsB4qdCSPc19FOowYO/FUKwqLpWkJ03wm+IjKQhzFMwwZTLx/J1dTil
	 7MnJK0RsZcJOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CA4E6BF39
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980703357.5211.945527607213293521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e050dd865010935798c9f7b06621b51ee952cd2ac3f2ed815d83539ffe54cf
Date: Fri, 30 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769807033
