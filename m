Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7356523EAAF
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789265434; cv=none; b=bTOw2/UPHh0NLe9leLPDBxv6+Y1RsODPU3DJbwIrRuHl4yR7Z5NJSo4krREG6hQYRJZYE1gkfyjEgsLemLqMzbRmKPA2jPq+H91mCrEOilgb5Gl0cuaZXKDCR/cc5HJ+cck0w7kDudw3mic+ugb5UJ4vxH+k9+47vEYqmEB+rQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789265434; c=relaxed/simple;
	bh=Lwryon29+o4xOkI59p8nYhYVaO1xJqj9MQ8lCEYR+tQ=;
	h=To:Subject:From:Message-Id:Date; b=nWCbWY+AS/KXinLD8H4TzWTniyAGt8WA6v0mgE6lnXicqF30o3C8PgYnYY8ZbLnFH1ikZdNw/VQ/PjAgV3dFmkCrOkoQVj86cU5QlZ9pH+SEZ/C14q/IJZkmjACGtPLqOBVC4Wk7IrSKC8ROYBdrIwYszMqicxKeGWVwm00ub2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWZlYL1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWZlYL1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8171C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789265433;
	bh=Lwryon29+o4xOkI59p8nYhYVaO1xJqj9MQ8lCEYR+tQ=;
	h=To:Subject:From:Date:From;
	b=mWZlYL1RQCWex4eUaACpi7MSYfroyqEZGHnRaBn6Te3eZKyG9F1DZSjuUFEhNU1MX
	 DdHjFN4KFDqe0+S6eAci4zc+dC4l8Owtam/tOUtZk9M6CeCHWw9igB3AprAmNYqlkj
	 diHKEfRyYBsCHKLVccGlKX5o25sZb+0VL/dEIcN25yP9Yx8Vstv+xDM0nrD6lOnTu5
	 mZjVp4zBjYIRrCeMDPmVDqMMHdflHJaYkfrS5H47hulVaubQGHqCcfkEbqFxvrdp71
	 nBYFBk0JOMeg3JJdQa1/b8VmlZ8vVSp0Z+SA+l3/XBfqkbLSXf0KrFCru6m1wUhYQF
	 saQKKwfoVj7Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC069C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926543368.20821.8136629682459898820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b775aa2632407eadb66b87c672c803e9787cc2809f0a1bfd418ff936c7eaa030
Date: Sun, 13 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789265433
