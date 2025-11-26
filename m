Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB256288C26
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764141773; cv=none; b=XzzOMBHElFPwi2wjcXJs36XfWmalypxdPEk1+4e/wtXRo0vc6P62SjKBaBFQixNId1eJX1rxy5eUlWg81sZlO91/FtV7nsDTq/R47NYJ+DnkFwlSDx49wFmo+FyCs/91/5kkiIrFi70BgfWRbldiiH7HSB8ZnmpJr6zzsLDJf28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764141773; c=relaxed/simple;
	bh=07JDo8i8072g1zLtISiPVo0Pda28MxwWCSUZdK+4HW0=;
	h=To:Subject:From:Message-Id:Date; b=affj92r8eq0tPiLvbnAAWZt92vCEyhEntR7bVFbUZkc6l16CcWkuChXcjLw0bxPMt0Ik2Ajrti8ytgvm59A+85rOml0CAM2GZCFZLLmzOAKmRZbHN/xh7md8XvdegZ/yaOIdllrBFbfc1JSnecIbYtIdE86X8zlWo7IeZYup+4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joHW1BmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joHW1BmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2E7C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764141773;
	bh=07JDo8i8072g1zLtISiPVo0Pda28MxwWCSUZdK+4HW0=;
	h=To:Subject:From:Date:From;
	b=joHW1BmAWfHStrRCTYeUn0CNl7NN3r/byf+Dj3QY+nbhED4XVcDFrMaCYYxuQ/Wxo
	 CwQHezCt21pQRaZfSy9synoTRfDRHfBuUtR0/otY/3Z9vEz4v+8HYT4qIAPDK1CDcQ
	 N1RWL68K88rNIqNwq+BTVOPsjYtwNT/YAziaFu4usXHlwC0nMJInw2HSfhzgOclkDI
	 1g7+fUo//hNaToncIWn/e+WJ477qQhzCX2uhjNxtT5Toiy0a8k+CA3yMw/hdvMYBEl
	 4z2v+eRehNvhPH2BL5NETWYsgrZ3C0Ddrr22Eu7DuBfek5vpvkvzckcQk6wZKVNjX2
	 j51fgJjaErWbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9797CD10386
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414177359.19872.4127047532768066398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15292fc3d03a9102490f1dbb9423109f7b61b0e6339e5847f80b5b1c10a570c9
Date: Wed, 26 Nov 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764141773
