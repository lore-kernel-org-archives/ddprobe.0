Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232292F6931
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775891254; cv=none; b=WEK2YwC2Yk04ZEBH0Vyic1kwgk6KZHvenNpFTxKOTb2lUtEVlch+E+V00rDIXw+ghfRh7+ISyuKk2TVHT5ELEDub3Tk+XYIy1nvne2ZzlNEYGORJrBLJU2rdouGeA0OeePWnk1nWzYNAwRt6YJfNxcmZGJacUrLBoA8SC/0yc8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775891254; c=relaxed/simple;
	bh=hgUuWK5cWWxxr6GmcegbjUm1sKf40aVlEbq2XyunPGc=;
	h=To:Subject:From:Message-Id:Date; b=du9DGR6sfTGCXQdz6vEFTSQLMhS/o8+b8N5lVVoHmucygA022KiSfPxsa0mSXC2CHTsjxE7di2ElyuRknmvHewoLwltgFv6HOjMtVgWXK3PZ8TB/kl5d3fWIAiPMYKCpM18zKyady1soP9yv8dPlXQJI+1Xh+wl8sNi6+1jiTG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ld8usqFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ld8usqFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD530C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775891253;
	bh=hgUuWK5cWWxxr6GmcegbjUm1sKf40aVlEbq2XyunPGc=;
	h=To:Subject:From:Date:From;
	b=Ld8usqFLpm557MnvC9k2Sq61LfbPwr9yVq4uAo81J+G9kAy3KCRUljtcLJl7gmjqw
	 XQiWTNJHFTbg70Fp15vLDRT0GWGXFYHx27UFseICmWs6Jed0Nqyb4k5KabZVIKjrH3
	 UCbbhQZUzWQBDb97NDfd+MAtPLiP2E8l1zTpmBfHaylXjpXcgL0z0+Pu461Mfr31xq
	 bwXdDJ6ZkJN75AhhE8Dg4chGbYrDx1eX/Ps+3CyV/bzogaDi91OGhVD6JhZnSbvhDF
	 frWyd8Iw/KGgqfQBy99Ytln6i38WRnxTsa7VgxGQVNxhTZ7mj8xiUWpRMCa8zGvi7i
	 AxEUzmlbmb2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1EEF364CD
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589125368.18635.5691727506693614601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599fa5fef93ee7cd859068c921dea62226091f8dc15f2fdc11140ac03d545a64
Date: Sat, 11 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775891253
