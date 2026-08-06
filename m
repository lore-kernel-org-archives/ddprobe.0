Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768E247A0C0
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786028436; cv=none; b=axrB9gaDEXMxzoiY9MW765yqihwpvI/d+3N1tOVw23ZRlrOAW4oEF+3uqwwYHi5R4H/1fP6NK7bpn93DMYZrf9jiPPM9KCv2RtqX4m1UM+cFIxWKYV1BCdzy7y+XjG8+nn3SP6PZdlnEpRV1P3dzYh1WpJYKvI6OucZRTX/w+iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786028436; c=relaxed/simple;
	bh=CnIfkqKkB4J1VFGSz45IBTpmlsfbt3FvMO+23XKO3dw=;
	h=To:Subject:From:Message-Id:Date; b=sGjRGvp6nmfbhvBi46K3GUEefFnlOuRyTbqBkKWU4IfCKHQGMS+J1UYoTQvX4ELPUOmHi1tHGwF0rjqdyiQGRiIg4uSnBgBom7I+jwJosUAwBD4k3loRiQdDh+cHUzqneIK9W9adDuNV2ETgBa3muDmAAJNuQjceKTbIGXzRXp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYpLD9CQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYpLD9CQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCCEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786028433;
	bh=CnIfkqKkB4J1VFGSz45IBTpmlsfbt3FvMO+23XKO3dw=;
	h=To:Subject:From:Date:From;
	b=KYpLD9CQ7Kx9UE856XlRqrA7SyWAVC+lkh0yckX+ToU8NOAdfeDC4TdYFIxplkZkY
	 oE1Sch0/Hovf9mn40RGbAldETXg9DppHFaMsder/F600w5oQJVjnP9QZtHJOYICkfX
	 G0IfZTGR8/1UtZUNC7+a7lksn8l6YVybxK3QouodWp2gA/YtXCS7DM8O9DS45w0Az+
	 j/hEN82CTnC3a5Hmy8ePYrZaEIPYLLubYGA13hRFdGpt5TT4dDNU3V/fladKDSjZMO
	 UyOJb3sfcks8FXsiWGzCRIVVXLMw3Fe21M31vTlnt/oXHYt9CWqm2v+yzyIYCx0p4l
	 NQNRtlGfK+GZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC15C56207
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602843368.21313.18108766920742254500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0942799db0523a6bcd7b46362b5ea4cc3cc50c4642586df001c5a7d26d2a1e45
Date: Thu, 06 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786028433
