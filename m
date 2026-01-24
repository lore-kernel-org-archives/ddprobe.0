Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBD4F513
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769248434; cv=none; b=DJA8dM8WPm/hwvswM0lhKAsMCsLirRBw74OfoFqrL9/isRBaUHBUesJkykDX3+2gkIbgWti+W8i279XiNOFodEBehJ4ioRN47nehy5F2tNyQa9pvhMNdh0skogpItgGglqJc/t9iyCd76B+p7DesZU4DQG2ahb3bOWIfaGE0ZB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769248434; c=relaxed/simple;
	bh=iXE3mApu4bF53hKya5pxrSNWe6WkL7aIiDnXGR7y6c4=;
	h=To:Subject:From:Message-Id:Date; b=lFQZsi0ChMvaGEw6vOSqNrDuhVQ3+fV3eVhHE/s3xCx4v3lOBglaEVtfFVofKk5b0saJ2ixwjzOkr3pToeelaoXdPJG9/ZhTXj3iUeVyuY42139KHO7gszF6BjTtdjlRNsLlx5/QgtyrBuLU4UdIC5vZvb2ZUomDeai5gD6S1k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5WWSBld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5WWSBld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7828C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769248433;
	bh=iXE3mApu4bF53hKya5pxrSNWe6WkL7aIiDnXGR7y6c4=;
	h=To:Subject:From:Date:From;
	b=o5WWSBld3axlS0JbMZQ3gAG2Sw+DApb7Xq3k4Y+ZBbS4minfz3LXqIk3VxApx82Ee
	 crLEwpPyT/qUsLQSxGpZLbEqIC3VPzSdMR+GT2NPdWDXQts4eds0hYUN8IjGkPJyco
	 uOeDBRqPrxnTP82agQwLSVuQsClgdYP12G3ZpyfBe7MQUE9nL5ATjQhMmtvPz/Tt6B
	 2ug8njNZSuQSDR/2jXs911FBbHC7aJprJqjWTED/zKySbUaZSLy1QlJUHrCn6YXADV
	 wPQkuDEHOvZx6OsJ8ydcv8gE2Ih9xlk3JFSUbWkx1R3RK766alHpo/i+hta/UmWjhy
	 guO4Q0/bn0IIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937DBD715DE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924843358.11590.10027490939459939122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef028ac9a12726e4804cdb804d4a6e079dd60d015bbb83b3522b202a235c7ce
Date: Sat, 24 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769248433
