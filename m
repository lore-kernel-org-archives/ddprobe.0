Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492854F55DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790631634; cv=none; b=Z+Yk5elbslnGHLZFB+UDQVBfWymVEhqtif9WSaoIPNnZbyTHwEEvT/SyizLnd2UMkUv6EhuPj6vwLxQUFinxQUcjKcQdwsJiannkDLCm4/C+pkmUStpZNT28O1+CHS5KwYVIPJPQd5x29Wa9gGEKykSvbNLD0nMGlrBJzmZLUrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790631634; c=relaxed/simple;
	bh=iypJiEOQCXcTmQwbs4cVPvo7SwEmiGdA6M4mYx6gX2A=;
	h=To:Subject:From:Message-Id:Date; b=KSakpuvhIgRBM3h9n3Di92lw0VLlAL99xAumOQp0drrOZ+jyzsqWkfYdAdOP4pP4XtCd+DNQmgYi7m4iVUNg2mdflX53mUe8263fqob5GiXj/zq3DT4gREtsKHU8ZzTWrrojlU65aB8kXQlAwIq0qm/5Ep2ikOjTOZ4RcaA/vPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJpAjxXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJpAjxXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4501C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790631633;
	bh=iypJiEOQCXcTmQwbs4cVPvo7SwEmiGdA6M4mYx6gX2A=;
	h=To:Subject:From:Date:From;
	b=uJpAjxXu3oWj/BteDkJJK96z3fKd8E9HDTiOexxSFzG5QOuEdmbUNjMpAhwPwzmha
	 1vZ5ZzWhzvyC4hCysbtYVnmQKLcnQoSRTzLeMINrBDnDvvD2Ef3+dphN1bzN2Zgn4f
	 a0AF/OcAF+maD3TaK2NtuBt3Fvo1/BU9wqXDkJVawA6rj5iYTYbcWhpiQn476gmXk9
	 VkzoIydiCRPrzQfMKk+NBbNpxH1o8bw827AioohvHntKEIgNsHKmT/9wnAcK4swPAU
	 6CiJ8QhwfBslBcYYkicPdkXRjir0j9x8RjlR1+hBfKcl+DPfPhkb+s+xuuRCfFDEbl
	 3/gTqR6yTZJ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35BFCA5FAA
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063163372.30215.2601102390554654310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08264c7678263b4e3ef37bc4a9d886ff1e6f1bca95f44d98349f5a0ff49b8773
Date: Mon, 28 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790631633
