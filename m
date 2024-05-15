Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBFD25757
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 22:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715811143; cv=none; b=ln6+6dmRsKrezuphxRRdBEMtDwHV5YcCSoJkvoZJBXYXHSi+Nq8qM6NnzsnY247aUMHnFVjhwKnHRdtZqpDPodOyOpWn1OFFvzDlSKRKpTFIOiH0ocFxP0B8kCNE64fkFaTh9DD3VKOffiDs9NMczF7MlhJR8jQI6Z4xOicrnrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715811143; c=relaxed/simple;
	bh=JIt/eaSMua65nIS7dTdmS0onWfFfd83RGf6NWnlQgic=;
	h=To:Subject:From:Message-Id:Date; b=P0o0x+G6NOWKcdmuy3VNo0Op5ifScHXwxrWuvLmC4GrXIV6V5bZeGZsq4gD4KJC+4Hk2z3nhkHB8vuYZjwLSHsyjk4AOiSlao43biGMrCd6hzFmpYCtfBb1cMRNcmcxNFQiAnNb2UDG6IWDfydzA01NGtP3q73bcAhxMMJ9dNe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eye4u421; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eye4u421"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3E6C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715811142;
	bh=JIt/eaSMua65nIS7dTdmS0onWfFfd83RGf6NWnlQgic=;
	h=To:Subject:From:Date:From;
	b=eye4u421ZjIDH8mdTQkPsUcxHV607x1IYN8fSgJ1Esxt6LWxp9ghq6VY9ctoBAOHy
	 fYlgxBKrquidEyzb+xJ6iLUmUZpdKbh5LFCyXz2XEuJsVKpli2RmUMEbiC+ViueqDQ
	 dDZB0wB7hic6q2HrUDgSX0UYKCnsCP4+Nkrmrq0R/jTnLxd9RJFUl8tHHrsXlGuRBt
	 d0UxQT1117jurUegEZmLeoW7zrpCulsJY5Tj2UuEeeOdIWfRxca3c3cJirM+3dj+Vk
	 GlBAQqyH3txjQvDYFdNMzOzYTWvl6AQ/z8vZb/xQVEJA2XtRkSe99FQlyJPWiHB3UL
	 w2dceFIgPyQ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAB2C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171581114276.10111.10081071360823428088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469ddb60e50670a06655ad69cbeaae15b3a38d4293f970809d67cc2cf36e6354
Date: Wed, 15 May 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715811142
