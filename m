Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D372BB13
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741468734; cv=none; b=LoK1F/0/AX3OlI0lub6tzsxc4XEsNF02JOrShxWoe2PV8cEADrkDBi++SAXH0Pse4FEPExFOerbt6/RWdgaa3BwbqHqJPq6dhSd2Xuyj+b+jb5JEv8JpZO3ffKh/rPUsw8MujyMfODTqLCGmRzpfzjN4j1eWCAdTSfbCIYK3QEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741468734; c=relaxed/simple;
	bh=HgPYNsIu6HDWAJKZq7DhyXb0+uBoqQOAKBjECYjIfuo=;
	h=To:Subject:From:Message-Id:Date; b=X1f+RL3bDaMn+6GKW3oXL8JK/FDnbTvuQpxnlH6ZXn/U50RWTjjhlLw6mMz3DZMMacZGv/lVrblHBImmnQ/MAURNSoT/yhfFwxBxd8pLlSNiev1UQ01gUD0uQmzknBK4XQjWkLx1KdzB2BJiaJbRLOvMRqupCYBFnVdbHLvaUjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qa6irAxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qa6irAxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57AEC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741468733;
	bh=HgPYNsIu6HDWAJKZq7DhyXb0+uBoqQOAKBjECYjIfuo=;
	h=To:Subject:From:Date:From;
	b=Qa6irAxZPJQhRj0zJc6D++FuvaSKj+xQxn9i1IVMPoXEddhos/fbx5ZUKbUGI4XCc
	 WW1AmJJ+sNdVcoAp5ZPNyP8zfu2d0OlSauhGBWSOAbwFtlIgwy2WbUIIElRPUCmaVj
	 gECKe17zt45BYTYMkiOTNCcN3uhLqPx/KaG1dH6/5oUr2ql8nRM3ZQpiU14U48YUwI
	 rTuGXfYv7yOP71dbUwyOHpS/sgwrCzq4VvzDAN9bagzRhDfJTVYi5pwfRfC0NEF23K
	 A3NAgua4t8mgDasu7DDNjwrkz1Cg1cndIOZZ9MRFu9XAqORW0KkILQ9vaOrpdtqd3S
	 ccSNzRvzF8vqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969F9C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174146873360.14207.14070980545966946043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4dc6d3a703a15ef1dff5cc8cfd1ed0a382d0adefdf4e6123729d3c80f8ba157
Date: Sat, 08 Mar 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741468733
