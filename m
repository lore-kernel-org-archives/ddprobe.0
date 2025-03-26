Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485CB2FB2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743010794; cv=none; b=TvS9tfMkcO9dCPrDTpeJjCl+y6waO1ef+qaigs5nr9HR5GF94CB3oE88B4f/07I1dfENmlsH31lt4VwAYhSDVXY1gL7kXsm1GWrOCwzLrHumE/o2jaYaFOgWLd+Zgq5PgWl7qj8W9t6Y84yJtWR8SbO0fdAgjjEd7xHMLKoxJNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743010794; c=relaxed/simple;
	bh=CNKagXNp4wtP2C51/hXMp0GZmukhxR52nLBuRTnuMjA=;
	h=To:Subject:From:Message-Id:Date; b=pnPT6JayOOHZnt3Ku8oqOpoirzWMmx7tQX7gcHnQ6Lj6QOzRvJe7JWnJnpm4KTMnP81l0GGvwiNTMeTd/itJMQeScylAD/X5WLx6RIjv1/QRMLD9qnZ9h3i3EP8RzBvrXt14/9he07Rsdu3pUc4nrbMvPQV1dplVobwBbTXI+bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyYGxBv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyYGxBv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E44C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743010793;
	bh=CNKagXNp4wtP2C51/hXMp0GZmukhxR52nLBuRTnuMjA=;
	h=To:Subject:From:Date:From;
	b=ZyYGxBv2cDP2HW5C6pFRc18+pUfu4iHRY8G8VvL0ZaglNhcbKqi+Zqd3i+FaiYfzV
	 LDS3kTimfa+f7bQeBI/waJgD2trIsnm5TU4H14Pb7KgxvjJB4iJ5ggqnl4EzIGREwY
	 tj1UXx2PjWCCKbTWq60fgUMrBnaiTe6ZR8b0Pw1J0yDrgYGIyryxuh4MbTV+hvONoF
	 edM52lstKI6OsabgvvDEzIe/r1nIEa5ZcpYQoFad+J5tDcb4y7XFCzG4Z7Ed7d9h9D
	 cQvBjWZW0hvHz/W54tcf3aMX613FzegkSjVhoD1jXkGmT+AhKqNKUv7sXHH/dvKKKl
	 mB53L5FdZiocA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC76C3600E
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301079368.9202.14039902494959147980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9742cb208abeab3a66db8153f762d100b24dc423da377f60c016983d86fb89c
Date: Wed, 26 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743010793
