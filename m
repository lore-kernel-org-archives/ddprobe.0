Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6883B8111
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789617634; cv=none; b=toxXJqO+wrBwzKUl0ZBRhqruEjLrAZIQrhsD8i+UyKOQLoX4C3sz961iw7tIsDZb7bNj4ofqn8ib7yre2Qrn49emsqbmbDfdiEHkaxyV4NeW4GU2HP6N9JUrRpDEeiBvSTok+7BSqjEnGogGYeqonPWLS3FpIrtv8gb1LZrTI0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789617634; c=relaxed/simple;
	bh=+/fk8hnwqZAqA3dTlHdMFch07n1QartrEKsrFEtS4jg=;
	h=To:Subject:From:Message-Id:Date; b=FgZcJX48FpNxlRYrgMzhywiXdDYcVXxaXBjqxPFbqIluqtgcNdKK+LqBIpdcIcoAc1tFSjbFOpXMnF/GV/XvHu6WwFrJilGouHoxwnN6xC/LXc8SM7B8xoLYBvw8hmGiAuDLWJsiInO91AkkoVYC2OmKqOnbrtDDeGLMudpXOzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mno5igCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mno5igCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF43C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789617633;
	bh=+/fk8hnwqZAqA3dTlHdMFch07n1QartrEKsrFEtS4jg=;
	h=To:Subject:From:Date:From;
	b=mno5igCwO/DbQ95XgjUG4FUvantEJjSCWttOba6U+vceY8uOx29Gqnl6x9J1ROH0u
	 OuFhiZsMWLrv1eF29NWmFP/tmuWtcbKTfrGZQSe5DntbUeXbCEfIWjXbynBdFqBw+C
	 VyYpY8bU8LUn2QJNvw6tNruE0rTDqRX9Se9rRNxsn4wBR8Yval3tUmHWVmwATE23H3
	 boDPgSGCfZIKvpj6rSGO+ZmK933JpAkxQelq7vR7fTjKmqlevK+JCv0+4DeyUvwbXx
	 FnwJTIETfYnyxCF91al+YxvMABiFgzTQX4hibnQx/BpdlRTE1rPAlILFaPi6ilH/zj
	 43PKtCGmUlV4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D01C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961763371.4877.9365610596353264336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a6d7cd03b9045115388d9592a24aa27d22094e128a2c10ea92ed55b0c0e833
Date: Thu, 17 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789617633
