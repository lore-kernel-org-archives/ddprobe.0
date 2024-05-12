Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368033233
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715548943; cv=none; b=JDUpiT4hg/+txzxxq/ho8GdiV616DcTwNYv99JXZm//r6Ahdf2EtxAYZ5JzopkQTGH4IQLxwejuiI8QaqCyTpz2Yyw4WTU96sy2GHkKLiY4lBb/iythiT9zKRn2NnfbQ5TDD4ID2E/vHPFnEU5EkSbujqFgwkYYdJcrHGss0MIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715548943; c=relaxed/simple;
	bh=eKG0jWRB5tpSeoSDwTRAIEEE4ya20KLWmnq3Kffejj8=;
	h=To:Subject:From:Message-Id:Date; b=S0tl11ZZpeIvotL+0RXnw6YhYcZyPof9CYTYcjN8ZZNQgn6uZMuAYjEkGmxvvUy9WIiIa/z/PACHCwRVoLaDlaALOh0u409ny72PobES385K4Xs8Q1cSqhOyDAb+G8jXriKzilq+vgWYLPS5+bbfjNPYLMgssHulq+ejAH3RLL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KL1sEECJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KL1sEECJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69EAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715548942;
	bh=eKG0jWRB5tpSeoSDwTRAIEEE4ya20KLWmnq3Kffejj8=;
	h=To:Subject:From:Date:From;
	b=KL1sEECJk+5Cw7OT+zBeWdoPDnI3oNastR8UtRsYJRBHavUDpQEDHUj+j3cscqLrT
	 w9ZdJwhsOoIR4iIIMAitqu85ptVirlvB6eDQoJZRgluckQm4/H6dD8pg5s08MrPm3w
	 AjsfbeZdVk8n2VcLnyjwL8gxn80u/lg4KXUXmfqAOTT4AwmWwOS5yg7ZQOMcWtzApk
	 JIp98xzkbUK/+aFz0R5su81Z3YKPz9MM4y96Sk6ndPARs9C5p7fgx+D5PaDHsFDF7o
	 0ySSgPqwTay3Y0LRXfdJTMH+BYMT2u7WmdzmboK4mYTxoHeQGFvedyv0f0jVdLpkTY
	 mzWhieIA3mWzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32C3C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554894279.15026.8085241581211183830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b82283c5b1ce80b440dceaaa4f0b2dbf6340073357aa2f39ccd07dfa17420a
Date: Sun, 12 May 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715548942
