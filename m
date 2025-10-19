Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3595FAD4B
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760912394; cv=none; b=qnERvOJAeGvvIxi6qNP0bt6A0ogmnfg5YngCMAAqXzhtqs+n36PuNIEiNIkh94vbfiUp+wMPG3ZmBqV5PXGoZyOhE/5p5jDMlocsxJfghCaZdPQFaHrJsBO29lpZQiYJFET7X+KJ9O7ittet5snOMJCZSEIvN1G11Nyp525/YYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760912394; c=relaxed/simple;
	bh=0Y1/ATKEm1FIHNhT127/so2NiCt/e9X9kIh6wa0YDQU=;
	h=To:Subject:From:Message-Id:Date; b=NiUEpMjXqnh1brpCo4PSxqw0e2lD7tmF0myXfoncf9PrFpU+PkpKO/xz/wlOZUrcgLhYVjoNjFD7vIQ2ixvlLJ8Wt7q4jTmYKjKzsd/UxSQgaJO0jnh8sIMDkHVleA7HhNFfDjlNbobnGjtS8XGPuT8H/57I+1+5gnOB8JQp5Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRbUVwVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRbUVwVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88F8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760912393;
	bh=0Y1/ATKEm1FIHNhT127/so2NiCt/e9X9kIh6wa0YDQU=;
	h=To:Subject:From:Date:From;
	b=rRbUVwVvnqQw1eUsIiGSJMyR9VlJ5374UjdASObLep9LeVodPrHZsCyJcD432Ld1k
	 NAkMZ4DNeu+XqFVV47ym8aN/R1I5FyU3OYuFbeb5WefvaO6eKSFvc/r0w3t8L1quqw
	 7R807ZyRg8VsJL5F+XM8X+IutG56yNW1qp1fupFPAXiVieicR+MSN3y08WiwFikydK
	 pFirQ6K23WQGJmyutQdyCeMFUbEMjpaYUHitMopOz/2YTb2AWljomuol5ys2I3AUbs
	 iOi7k3NoOhHDHcrhJL1GXQyMg/oqdaqP8EjphDaZIyvuhnFHiXE+5K6g67YQ/B6qJ8
	 aVP0WbSZ3yueg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3AEACCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091239358.21767.16226574370687561294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d35f7b234ff7f8838693d84c9d1e665eb5caab27bc1908da9bf17813b58e03
Date: Sun, 19 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760912393
