Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBCC21CC51
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782857914; cv=none; b=U6zReGFF2F+I9I/NJtEk7cZh8/VikEWy4CvTd0Oy4FMxhzChR6AkrZ6+XK1SUUYppk49Mbrhz4or0kWC5iYPu7ePuyVhA03GwQFMtYX4TFL9FZegD/gxsx3UD1Lgkd0iy86PQHKnoXGsG+Pmr2cTY9QEXZBUNchgCQfNGxF2z+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782857914; c=relaxed/simple;
	bh=5RqXkkuxsghAzeatc1KAoAL5Qi3n/LcTdD7KfzSmz5k=;
	h=To:Subject:From:Message-Id:Date; b=uKJMAlSDqGcaXxd+/fPv7SW3zAXKlTIqk0FamMO7/8nG9OJsru0EmV8WP3bSZrmE+5SjZvTPYEVp9b4+iUKclJ8eDLcAkQRMebQMkZ6BYW2YjSx6RAdPU68vn0zQ6IjYsbPEgUEau2ylYaqthbwIUmk5O84jV7rTnU8DBQtMBR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEEgrHTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEEgrHTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F0AC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782857913;
	bh=5RqXkkuxsghAzeatc1KAoAL5Qi3n/LcTdD7KfzSmz5k=;
	h=To:Subject:From:Date:From;
	b=gEEgrHTaixhQ1j1AyECI6ryAjGBfJDUex+J+h8jHbphach8k1LyBbBGUx+8sidTTt
	 IKhfmjWU/Y8oOCF5fD030zMsm7Opoa5cFdByKUaAM7JOiVmcE7/0+nvMJZWd9e1QGb
	 hO0stZ+bAl+XsPAkqRVV2Pv240eGYQnolCmtBeQ+anqClqj9VI/oQSq0qruDrKiFJJ
	 KQyHYZsIFeUij33VJUOLG5PsBocMGMWYjvUVPQ5NU3wsgAgqazgcc8otE9b0bqjP5E
	 iijMcXuJkSyvQYvLd3GG3ZlFzpKBqIIGtL86A9BUuR3XWkHQ++MpmISgYGR7f+e1PF
	 z4YgCN6sfMf6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9118C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285791368.5483.2911526853517254271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19dfa0b5e615c9883ceb03d1dfffc4c8212fb0360e9d70068235ebc9ac782ca9
Date: Tue, 30 Jun 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782857913
