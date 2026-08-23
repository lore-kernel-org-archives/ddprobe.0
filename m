Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0193C1D5F
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787484034; cv=none; b=LQ1y50T0/yqGdIfoWyYadESI29HfhVAszsnznMIXALg4fkGzZgUAlPkh2zB7jDqmz/7dPENmCDu8PwzAMBhYPo1uv3a6FE0Bz1N0LM/E+mDjEdmDfWotr38416dlWw0HnrFPDI1MrEKlESCNJXxtG6hBVNvyYZXDBlcByTcjIvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787484034; c=relaxed/simple;
	bh=/PCw/LyRxhBOYHWxAsyKAP8ZZnH7W2c3ILL1FQ4TnNY=;
	h=To:Subject:From:Message-Id:Date; b=LNFujKJljqloI5X42MkNwB22xQouL7mK0qV3wKFgCOwGIAZrHR6QQqkqmsmx8BRdmTCgrJ/vq0ETxw+0fZXedDDHVHDZiUC1KhDiH2VEC9Hxz+xF8qkuwutFGTLB3jd6SJGwS1SzudzUkxZ2EWMYi/oSirTMGSmYZgKYXwzIRm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSgy8DI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSgy8DI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D64C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787484033;
	bh=/PCw/LyRxhBOYHWxAsyKAP8ZZnH7W2c3ILL1FQ4TnNY=;
	h=To:Subject:From:Date:From;
	b=MSgy8DI9xiUI8XRgyI4iDFcYmLmWcMwdNHNwAPjetN8WMKOS1XS+24pdxcHVXzX3Z
	 a4PkLzihGTJZ5kqeaat5FJat4NdKROEanPqzQyoq9eXteD2n1Ey+OHb06jdgd7OUTc
	 2Cm5c8UXe7HjvJzILw7HayRgSZJy7yDvT43g2De2fZf0GuwvjKdjQQObwc6bnDVYWg
	 sZDRCaseamZF6SmEm9AD+fXeQMPLWv/VDY6hXI/H/xzswQKHZZl2wR9nw4D1jNvD2b
	 SAD6RVCMVqzB2d4xl/6UYD3amQX+53neJ4KPq7PVe0W7r1PRI5I+8sD4ykqpgp4wMG
	 E8DPkjiJJE/HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29FDC5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748403372.7106.17773832410458185957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99bbccc015e9dc77c71cdb099775b6466dffc59cb114538aa5f4d51dbf4b5c7
Date: Sun, 23 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787484033
