Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41798363C5A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786138834; cv=none; b=Ys2q2vs4GYnd/ARRTPSVdqSosxN4C6O2aApCgBnejxtNQRZv6cgnNNwK4dCad8p8EzHkqQwNr8ot6az/wamrqkk+Up1MmwcW2C7QnLYVSHqQttudvFRdWKsNe0aaOCN3VN9KJrQjEVNVnmKelzOw6xfJDAXRnmjxvaYV8gzPgkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786138834; c=relaxed/simple;
	bh=hAMT4CrhcSUlqNcH5O0CCGHBnx0FIJzxmC7dQcTZvl0=;
	h=To:Subject:From:Message-Id:Date; b=hM//fpXsGAqOgM8UqVv1idegl+040j624a7JxDni1f3wuwuJPJY3gc1qJMKzaXfD0U1wruS9bPIeJiYW+mtXagyhcSjf4Fjkm3BvmTg65D0RCI1TwVhGs1rOg6BnVrZLpzfw8cWnVijwwdiNEpObLyperm8XSjNyiS2BRk4WxOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1RmuV2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1RmuV2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C0FC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786138833;
	bh=hAMT4CrhcSUlqNcH5O0CCGHBnx0FIJzxmC7dQcTZvl0=;
	h=To:Subject:From:Date:From;
	b=g1RmuV2lc+x2ETZCPxrQcvbHN+XsjkDr4+TvLSoqB7zBL7Gy0PJZGd7DSOk/A+zsm
	 ByRxNb4Grnsf+OeRg6NjRaJUKf3oclIBgt/bNjagjlSlAuzTupaRPlcitN5EF90qtH
	 J6aWK+ACVdlR3BHLXdN1xL/KzLrDGrdAjinLR7LGiInWZDYvdjgL2Ajc/n/WrK6seJ
	 Mu3yzSqyziGij/E6yTfyZlVx4UTSDsRNme4w8QvEgSE0Ju/SxgGFGD8ChYXH10KUH6
	 59PEoxaS71PpAu5XAIjgAH5utYbkRg/7+K72tLubaB3NxfGS7SYqL4ya+HSuX5lM0n
	 CmO0XgxidAfog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD845C5ACAB
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613883368.4675.9887279490009780012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e2fbb2d4d4f981e0698ec3424fc1c43c5ee3c97cf2a2b21973d78210eb530b
Date: Fri, 07 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786138833
