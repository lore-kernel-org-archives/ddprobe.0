Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145F43A1E86
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766917434; cv=none; b=ZX8I5B9PMhRfRE0/80th5Kq9jOUpxrvdlhKuZJr57xyqRwPQrW0JV0wTJjwWvZzRHxgl1LzFSxZnUBUYaSWHq3T4BCDJ9oh3x+cT7bNoYZU3X1hOgElj1AemiJohmK2XCpyjAT6Jz2h0+B0JSzmmZ042javK77Z2HHvOr1Nu/AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766917434; c=relaxed/simple;
	bh=WryljqXKEfEx3WrYqoD0IwGLR7YpcOh+hGCXznq4ftI=;
	h=To:Subject:From:Message-Id:Date; b=O+NJMcYkRvz8kls+QZlbz+wFOifSvpnr6RG12tQcwOOuj7X1iXtqsE4SWYAvsSX2IsIUoI5GC82/HADR+7bFn6UYikyUE3YY6k2wscD9GQjM1M+Vm4gkEOY2dvX6PNLk7S+Lp9JdbxuW0QY57dtDM4zZ4orlKpabeHAcbDPMRYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R12ZseiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R12ZseiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB044C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766917433;
	bh=WryljqXKEfEx3WrYqoD0IwGLR7YpcOh+hGCXznq4ftI=;
	h=To:Subject:From:Date:From;
	b=R12ZseiDAcyPTKk54JT0CwxZVrz5pmC8sQ7WTutcEaPzIh8Wfu3YxS6r9z7C71baQ
	 8c9VI/XQVopwu+KKeC78Q++dkf2JJj+DU4ZuoHjUkozpjMeFRyRzOrTHSzrRamkgRn
	 yxiXpxrGl7xTJnhAbGncFlyA+Qj1iIJJo3c72s5siNjOk0DnfGrJmEVdt9xXWEhkEr
	 RlpioCree+83YHKsXaenJSdriqa9ElrCvdVrSTgg2nHc3xyW9TiW3OKb5K5Kzxviux
	 YFGKB1857aJluDnOmgnAzeFmijUL1OegzSzpX60TXeb7RMCRLi4hwoUI9lEz7lPMiZ
	 Z2GfsLFbt59vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9493BD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691743359.19243.557823355400132678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f3dd276a13c4e6d26e546678d3764462e20c8169a2fef125f5bf46e4ffebac5
Date: Sun, 28 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766917433
