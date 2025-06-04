Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF501F4C8A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749067793; cv=none; b=Famkv7sV3WhNLX+SFg8He7kX+o5jzev2Y4lsmBVGDG+g1nB8UenHdLuE1DCsqGZXsoKq5jBh12SaaKsKS0RV67SnqH+kFwDMEfvkkgz2qw7SsucpafEg9+3ekDXbHZBuYbBgtGi2UVQnxxNXM4LBRU0A0qt0KjxJ5WoJiDIVl2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749067793; c=relaxed/simple;
	bh=Qx3CqH8h0xaGKWxzo8MC7x6M4nZ+0RfC9o4aPskHA+Q=;
	h=To:Subject:From:Message-Id:Date; b=qEnnx9hhJVcXKDo0W+i/22r4rzTiAJVpM+YlATGLSVwtMZdhgt1UzVycU66HrUPLeHKspkQXhOxzpKMpXexN9mrCg1F0a53XCG+A1u6by8EdAf4s4ytMmWByHBz6AtUxhZ0PFFHimJkBMccycSd7x8ollvpMwDiZPxqTwhNlBVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkrG+coz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkrG+coz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BD8C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749067793;
	bh=Qx3CqH8h0xaGKWxzo8MC7x6M4nZ+0RfC9o4aPskHA+Q=;
	h=To:Subject:From:Date:From;
	b=dkrG+cozsSjRk+Ly69zE691iebw1c44naI1Sd35sUuAQx17rOX9mc1IxTButoxAmD
	 xea1aItD8EinWUAMGZwRosHROhKd2ie1iia9jhd4ItGfUb2ELIttEKXW9GeTSrkTXo
	 3TFT98k9V4qNuu0bUyIb+Q2ncGCkyR8xw3HdfkexF8FOuOKPOXNvl0i7fZOMvr94nG
	 YyB3YZcHW816QE4084849wRUffoKTYk6xRlL4siAfNty17x/cH6M/xYGyg6L0QuxCi
	 2teSuN/Vn72EUFTjZsoZkNC6AlNMLRcqcEVF1SiV709WBzInvYHVhE0L9EziSxOXF/
	 aL1VpVsQKXbiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AFBC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906779358.22498.1759050987395460239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35961bdff6599617934ae9d71353fd4d90f8b5465bd94e414a1a7dcc0f292723
Date: Wed, 04 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749067793
