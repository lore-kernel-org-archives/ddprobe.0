Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7BF1CAA1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720302383; cv=none; b=m6hpKiF4AOXxt0mstxs7cpznx4wI6p7B1+tUYbMn5UrkSSJAnSUtPktzqY4DnmcaK1aXg32m4CDCnsw6kq7FKonkiiUs8ytFDRerXYwgbmUTakiEgHhfsu3DajGzK1qQQddxO1+2uzKAvnosjaNBa02MnUnSx3sv5uobwBNrbjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720302383; c=relaxed/simple;
	bh=LG6FN+WGjdF92B8HWLAkrdvAj0QefEuBoJ28aZlFXQw=;
	h=To:Subject:From:Message-Id:Date; b=C4+wqoPilucfFQqaDKCGWb2dQV+/SHxzyGZN48JPSSB15m+F6zKiZqymYQ5tD1Een0qbJbEpTDi3QS3Yy4IU5mYJrETPJVcsRzDTopImiSAPwDdjhUzswHGv9Oz78KIRl9wHRL9MKu/IKnj8Sl6OJnG9bYt8mxQSymS3Z7q6Fy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/Q0UHsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/Q0UHsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E62B4C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720302382;
	bh=LG6FN+WGjdF92B8HWLAkrdvAj0QefEuBoJ28aZlFXQw=;
	h=To:Subject:From:Date:From;
	b=A/Q0UHspGcpaG3UPMgdEzgmqHNBKOUXbcv3gLbfAHrQ9ZfKJb48dcSHpS1Mnnznln
	 Uh2vRt3dueR3xqbIYspmq8XJC0dEipmRreu9dmREjJMspPnuvy7komlxwHNzYGu2/k
	 CmJSyWnEAhO4o4XtU/6uvNeWS7pV0j8Ho5l++dWA9F20dukPgae9MIWgZQ70NmRZfk
	 GGImCLhd2f/ObqnDETgCyHF3KFIJwopSbg1uzCCOb5ZBI50wn4lRbZSDgwyc1hkghB
	 F4iuMK4vd9+uHUCwBk8cCBOkyTf6WkbexBASzm7cc+3PqriOMn3XwcVhVmJE+zViWf
	 IScjkNkgmeSbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2011C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030238282.32235.9102481326079407520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c728ae8d810e171e1d0c85125c5c05b36e361b82f8d57cfdff24c848920469e0
Date: Sat, 06 Jul 2024 21:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720302382
