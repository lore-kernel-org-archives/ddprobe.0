Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259C7328266
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765833174; cv=none; b=qLTJgY9tkmUjF+OaQ5jJDr1qYT8L1Vx9FvL+1rMErjA4YfzDhbvTtDmnQj6+rOsbNMYjcV337NXhq+fNkLz3OkyuPOWZ9yydMz7Pz1s7/9fFCNhIwGpnwNGssi2tDecSy1K2ndLk0BErE9VHMTrndfHvR/8heTluWRZQ9zI9tYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765833174; c=relaxed/simple;
	bh=qT/vUgCOtQnYr589z0KCh/jUSFFdOTJfORB+x4a8RiY=;
	h=To:Subject:From:Message-Id:Date; b=GDT2izHXLk7onQZ9E68KCUMQOqLCLwJ+or2N6Jx3EEsMsZ3yv95fVlRzihwTxaVwD9WTBvvJtyBxopI+v/x6rI6Sv2kWDdqUmtBwn9r/Rdy1tMqGdu2UwlLv+qgvwANmY2gPktsqRBnOUtvefgZVrcRNMPrf9m4ThJzINwOBQ+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omNl+67M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omNl+67M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC5DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765833173;
	bh=qT/vUgCOtQnYr589z0KCh/jUSFFdOTJfORB+x4a8RiY=;
	h=To:Subject:From:Date:From;
	b=omNl+67MEKgr44BZL5KXPRkj1zqgYbU28hMcHvP9kbBMWCwUIn4eyfwcWVjsTAZli
	 BHBIRR8eZVg9YCKmnCGRlIuVWsh6zZ2oV99WFPhjOjxAFKpKnAFOoTTZgGqyyYr7i8
	 Ju5yQe/HixCawmMMFzhxBm2otLUd04PaGHEb8d0+yb6ZKc0sMPP97a3kYsWSOhsPuL
	 0R4wTO3o6dB2wIpuCkpV4xI8Mc1smwD+3sbk2KrqUs1twMvOnJaUXjsmoo466wSavg
	 mt+at507A5hRkruhmUhDOoOiFemGkRTCLfiI0mvAsP1puVQXPp/yInlPn7+gmyyfDP
	 AvrEJO+1kigwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E66D5B866
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583317359.19968.1730123883806596503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecdfd3cc69672a4fe82171f5929c1cc01920a2736256a4e16808b207c21de2ef
Date: Mon, 15 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765833173
