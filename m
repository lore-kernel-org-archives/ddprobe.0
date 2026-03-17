Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10209355F23
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773745494; cv=none; b=GL5merhAJiIGZZqtkQOKY2O+1fKX8IyYmHhfLw4ZghN1N0iUNrFJ0uH5RdS279+L3DmTMDvC+5HlEJuu9KKA+ofvvp0a9FWZ90JPeDOc2+7PthdENxMvkv2K3stC4rT2nrhofUn2Nb6RBHRLl8nFZ+Kq6pnk7/BlOcwFK2jVkbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773745494; c=relaxed/simple;
	bh=hcGMA0QrX2J73CSR49hf2bwXYKzhBjEqVTO+oKsiZvY=;
	h=To:Subject:From:Message-Id:Date; b=T3kMPeq+XzASLcO5E3rp7g56raniSHteJUSmC0O8U/CRQkXPFoPIvDHxv+8kcAQR7Y/rk1SvFOn7wKT1lChh+B5nkQtyGlYP7ShbtWKBw9FqE0NRK/ZLvVHf2ivIGODsCNw7mfQ3LY0ULawTsF6UYIaTyueswu2bmNuoUgi4nZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUz8vKA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUz8vKA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA109C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773745493;
	bh=hcGMA0QrX2J73CSR49hf2bwXYKzhBjEqVTO+oKsiZvY=;
	h=To:Subject:From:Date:From;
	b=tUz8vKA4N+XcNdR1Fs4DGjGDRRaEcmaWix5TzZOdeXjh3Uyy8GmsKUvmJidk4vdc9
	 WK3ie6LOqZ+XqoUekX9wzqKq3gWkqp/bgtFFB/RYpFvjE1XEN4PfAuZ+RhMk7jxOBV
	 4a7tt0zAl2kRhSWYUoLa0W+bC5/DgqM/rLx++D6w1AkbTFcXOfQtL9kuJG6hzHgqQ5
	 EU5xhUR0p07wpADfn2tOD6cgeW1BxX4siIwTyJTZFLMIzDGTam8ioXv4NlSBvLMwL8
	 XWXv+N4lphNqwoj6XD5WnGTW9vL9ZyfBtDc+2KUf3HCZVI3ghoS1dzqCgyoNwQ46QS
	 3MY+U6U2px3jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF03FD707A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374549362.25570.6100235074463506119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b94a3927b2678c72a383e601b6f031b1373f28a1ac0abe4d9a0d7f084eea1e73
Date: Tue, 17 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773745493
