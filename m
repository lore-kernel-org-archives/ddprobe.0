Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566673659FB
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787084434; cv=none; b=GJqj0q+BPq/+ueUSjr9m7uD5yMhuWck62rDAiKWuZjMa8GqsVZeTJRrQzuag2L69dyZq8FZJGdDIutDiYuGr2+it/qR3kSm3ec35URLFUsOGVI2fOIfIOErlx7QyEwF5DyRyzAFVjahmWUn/E87ULJaxV2cjKsYlUUNpbRoDT+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787084434; c=relaxed/simple;
	bh=BTf6Np8izdABpepgDy4jcmazYdQoHYEoX+6WHXRMJiU=;
	h=To:Subject:From:Message-Id:Date; b=O+92nUAa2ot+bPQGjecv1+h2SC82FCjq9osYYVrWLrtc6scKUy6wc1UmOnHaCmsgoLVQDHz832CHLftP1748e4pe4I2ktDpayQekzmuOIvAddYbXfk/P1neFsEqZBf1LW9xUP4ChVKLYxsrrQ9hMdHAPmlx/9/IwCBPFAwlxsAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLSSR3Bo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLSSR3Bo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D66C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787084433;
	bh=BTf6Np8izdABpepgDy4jcmazYdQoHYEoX+6WHXRMJiU=;
	h=To:Subject:From:Date:From;
	b=qLSSR3BoSgOjLfBFxBqrW6f+Zj0RjiJtxarZxpz3F5lndlzaOiH5Uuhnat7SGPoVv
	 I6L+n0gnv4skSzDdW6Zw6W2LllzzbEtXVA/XUTtOG8SxaHEw2iMXE7Nx8kifC7j0W2
	 4g1wLrsiwz3rj4jMCVmNqVEm0MTIVnW1uy4yd/Nz+O9/cN0ZY8d9SSPNwD+Yv3cUoD
	 gsjefqauGnDEeK9ewsLa2S0MAj7i8Ik7cj8oOyB69+Z5qVPZDzGnf0FnrRlKr4lRHc
	 F08eTbYYqokM1ETjHv14xgoCWQk19AfAjrdY8Au8YAAg3kTbHAG2kT/fSqGfDBq3Sv
	 IwRqk2KnKeNKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD16C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708443368.25152.13950983006463150332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad6f4075540c3799b5fdfa874bea7db729238df8deb23d2741f8530e37a1570
Date: Tue, 18 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787084433
