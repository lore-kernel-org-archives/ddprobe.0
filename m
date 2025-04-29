Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315EB3D561
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745944194; cv=none; b=EaxZtrR59Z5JQmOXBUnOMCzd7QhN7tRLjdFSKxo12jJJdfgxTQc8E8m7WPx9OVz5rJAS1uPTnFklJX29+IlpvPYTuw0yFPNzcqC6fU0R7ynQijHKAjvif57B2vNGE+Oy1vNBqM/geZTdgsoizPYavh8FRkfO2TBg0F78V50ryqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745944194; c=relaxed/simple;
	bh=Y/rzBU7SpvJ3Qs4UIQdVGuv2tFOqQ2YS+6g14Oj3nrM=;
	h=To:Subject:From:Message-Id:Date; b=H5raxPFPquuE7ck2PaehvBoiCDupbM/HhiH8NyX381uBu8oFruKjluH8x6t01o71hxWvO5INEgvXKxPOlVyGolOLAhzTstt64MFgLRiJUVzrrgAT7ED8pBkIYDGeuMdmLwMLA4VDwMdtVO6a8ccYeiaHNeB2jXItG93JCd+HWxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMR7JxM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMR7JxM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25CDC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745944193;
	bh=Y/rzBU7SpvJ3Qs4UIQdVGuv2tFOqQ2YS+6g14Oj3nrM=;
	h=To:Subject:From:Date:From;
	b=uMR7JxM/Ngnv81M141j55BomO35TE+ZVuTYgCr7+A0M0BmjU4d6vjDlhdPHwEY0xD
	 2QtwPpBLybBbZ8SJgjO7CdhlxAFOhMgw2gFj7+e/fDR3eT4bBTD/UyZDXM7UIPhlOU
	 IZ83xNsuOCg9CCxNPjcSSxM/xTvkQpllap2+xPPQHPEU5sIQoBR9/TogcmnWTmZPHV
	 xU9lp0SYTxFl3xNWYap8MyX3vzu8zI+0/QnLiNvVePhzqdMw07/ZwCWTiPwp6CPS1c
	 i/k2Xbx8DMgjbpFGOxFHneV5g5H+xIU9EWCi39y8K/mpCEc1N1EL0mwbP8Wsw+1gKm
	 uSpHpgNMLgk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003AC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594419358.1341.12535393721611793400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbb9a06d21deb030b8019f15b0ecae1fb5bd52f7d7ccae57ce9ceb41f324fa7
Date: Tue, 29 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745944193
