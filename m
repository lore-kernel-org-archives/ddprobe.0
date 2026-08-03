Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F67D489898
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785761434; cv=none; b=shntlFQG3/tveemm5+SDngQe7enbMxF+Rv46QCm+TKVVgtq314V3Rc8xZPIfumJ6HE2bZeTAwUFfquuLACURUjngllbVA0/r0ZdQZwZSKpC5ih/J2xv+znob08b2PgdS1m5CNHtQK+bRteOPXeWcbqkyTTtOIbByzAj5/XjwtGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785761434; c=relaxed/simple;
	bh=M76kBByxxaeTNBHEQcghfAsRgBqNOyNcbYI9dcV4U2I=;
	h=To:Subject:From:Message-Id:Date; b=i9eqCqxZjS1PoMdqdhTdL0XDeyCvJ8Vx+shAu/N3j8gyGgMhUXi5v4v/8puIHW4ceO4EH68/aSx0L0baaYZyXUZbQBlw4KpcFQFcQkIgFyON3ASCMnDahKo9bpEnzAWBOoYv5pPAVgdKjS9Nq5n09A/ZWd9J9K9bg5vfECfyItk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ne0oqbMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ne0oqbMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0915C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785761433;
	bh=M76kBByxxaeTNBHEQcghfAsRgBqNOyNcbYI9dcV4U2I=;
	h=To:Subject:From:Date:From;
	b=ne0oqbMzsVj/VSAyXd5ifZwcP/lK5GiRztmkgJ9zL5AO1P4NyWxT1zeLnD1jSI4Uj
	 vDEGRmvW0S5a7TXPN6W1JbjVexsRHbwT/2yEtv+UqPuhlT2k55ZuNSmt6tQUJYIGKk
	 8sZLMFI7cqv9h5lmUjKhly5ZqVLvPIpA8HZFBILW21y8T6V+ZCgOd8ukiZr4FXJh2X
	 EZnDWCvxAEJ9VXvvCfecyAsz5zzZ85ToKm+bA7r3p8N+N93iugw5Va+h9y+jYtiH+M
	 2lS8jTPJUlZowZ6ph0DS+2lVLL7JHO+alEzOAHf/uRr0nhF7tPoJb2AjZd0IhVehHt
	 LOyftekX8iDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC361C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576143369.7297.11496624824509892353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d36a0f2cd388902bc265c0d9265fed5a29503909daa2c88b876ce2fe1fc1102
Date: Mon, 03 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785761433
