Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575673C24
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719796463; cv=none; b=rT0ulzM1bD8o89vxj3I52pnXKRkJbWiglWN0aO1zwNOSK9Ef3WuIJORaJqgOZ2zTILlJ4whNPjBtNtrg8H3qAC30lsLNWnJ6ZOZWLlafcTVZB3jVE1b3ZkHtQTpkASR0KWqJFgGFaB3HQ7/KbtBdkrUjdapI/jJQbrwASj5XlBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719796463; c=relaxed/simple;
	bh=8/ANlteKQmIPY2Pd8JTs3Avf0yiEmq2CWOEi7kqrPLg=;
	h=To:Subject:From:Message-Id:Date; b=sUHGmZ3hB7lU27wvJJZVZ1uIE37O28Zm2Dzu3NIhn7L/861QuxgsMNk4RwewOTbBhqWgozQL2RsRktVzKO9TyO5VJFfxWU3x5KbptdVJmqIrbNyJshn8JMLKftHj1UqxwJIxN1V+pEWHQknBnjlKIM8wvnIfTpxblksHNOFytmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoXCAHBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoXCAHBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39B0C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719796462;
	bh=8/ANlteKQmIPY2Pd8JTs3Avf0yiEmq2CWOEi7kqrPLg=;
	h=To:Subject:From:Date:From;
	b=KoXCAHBBdAG75dMoE8Xa7MjXzuCwyETFmUgEYCJKcD6eCV3QOVs3L4LLgKiOwZl8Z
	 Jvj1bm0OtwAXWpqV6VKl5mYPCFbiwGZJkXcrPukfxFuhGw8Rbvq5TJusA+PFSY8JUS
	 mScG4EOj+GtUgXe9ZYZNvENnz1x9Cp0+TehqA8EiX5Y18aFDHzedyCW1n8Cw8eSMOB
	 fIQKnxQqShhPOZh4glFrmLiSzNBysj9MOhxQHjnx2yvu6PEmL7SCHShdWVKnw0gvbr
	 s56rYfXLT4p9/EJO8lW1k9DcSN0cRz7U06ngWffs9HNMpWAr9Tr6ipj7ceObPvWWFt
	 HpNbHn4ntNNUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2F0C27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979646276.2416.13497867915512434860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899fc23ae03e7b7ec3088c9cfd93c13c55242f9c737af3b8f2dc7fe15e28bbc4
Date: Mon, 01 Jul 2024 01:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719796462
