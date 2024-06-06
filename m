Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9F44683
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717687043; cv=none; b=PEvpwVXnuqmZpz0MHPwC3vSQfPOgZ73Pr5LEfD7PGS/Vt3AHuphXmE+3VkQFEsP9RtozZeALrdeGLggdpE8Mqm1XGt0l3gtH3bZxbTqvYc4Clz7EkxukhaMV9NhAVe1xsd05rWZuMBeY8SrgTQkFNgQXq2YtxmJrendWprM2+gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717687043; c=relaxed/simple;
	bh=VdCVfqJxTxsbj6eGz2Ca7rz1muNkHsRAsDHR29nygYk=;
	h=To:Subject:From:Message-Id:Date; b=U0vA8ZsvwO+SxvfW/T0g0l9carU4QUgb+IJMKMZ1LjUVQ1F34Ey6BTTKTDBAnRAtmjQS/AsXYKLU8s1xRjYWUzxrgBxsJ5c2irnPS11eCjDVlo8VuV36xsVE5eJp1wXCT2uE3HeLxUXMo9Vx+ftBtBcaLXYtV/9ZcFV5D01jyN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJApwsy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJApwsy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9488C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717687042;
	bh=VdCVfqJxTxsbj6eGz2Ca7rz1muNkHsRAsDHR29nygYk=;
	h=To:Subject:From:Date:From;
	b=CJApwsy3RvE7gfaKTRB5fHi2GF33SFiIKW8JGz1EE7Lihxbbi/91n1bytHJ53+Q12
	 9Uv8n4T9yoMYRwnYMO6SUJX+hWEwl+1w33lX6+QgEAdDUCNZCMPswDIpYvJ7gtP9qb
	 DRvaG2RILFxd7k95d8JzV+/TD5Brv1lWxzCk8fZhfoGWlQQ7biGsTrNqQMbeatihFX
	 XDEAT2+wWXo37/1orQj13Yvka4l8G7wYGhE9TKrtWfzVJWRbzscWCqNqWXvjtNXImR
	 8VUk4HWy84YM0kUoZqD2J4K92d2XpPuagxncT1Mtq9tg3hJ7gwOgwEGXwsB+ZhfX0V
	 c9ZRXJtJIxjTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2405C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768704278.16397.13932215934577021446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79cada2620e4c7d9d0ed443f3a139be3bf1deedbdf5ea202675e4dfd770703f
Date: Thu, 06 Jun 2024 15:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717687042
