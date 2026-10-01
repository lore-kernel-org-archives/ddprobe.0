Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ACCC1FE44A
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790893834; cv=none; b=iLBgpFxVZypWHmc41OVumD7HoPBj8IMNwVTblLVzHYDhC3zwGSNie+QWgWrg7O71MODRWznzSN6solP9vS0kWKk99TS6QYi8PvdNJMWqvVtOgcqOeuopp7i2j34+8glGabuACPGPq5x1Nwy49XyVaJG7eqH4b1pZgPGZWZgG5s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790893834; c=relaxed/simple;
	bh=vo6ta1OPe3Ab3Z7bFnenwyz5X9bK540H6tlZKtvFW4M=;
	h=To:Subject:From:Message-Id:Date; b=r43yqdpOC+c5o67EgAiv+nR4WiRM69UxPFdOEw+3BKMF8kIt07wHmNC6l5IYZmtt9YDr6FrbxDP0vCkZLM7pf/gLBS3OWEKOGSJDKv/XDPzpwEVJ3uVQVjGjyNrDKVaWYm7j9lXAQPICsi95n/52abdNs7n0kf3Bqhkh5toHbHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhE125ry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhE125ry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB636C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790893833;
	bh=vo6ta1OPe3Ab3Z7bFnenwyz5X9bK540H6tlZKtvFW4M=;
	h=To:Subject:From:Date:From;
	b=LhE125ry4CxmFW8rgPavj0as8GtZtS0Mmvi13PDOzucbbwiJCp8WKGFY2stBkreJ9
	 iWLQBMZfACP/bndPBsMPESM+R3WOI7LraP42L/kmq8Gd4SE3siZ72bNQsw2CGP3+fV
	 jppLz5nd6Hnwe5GGZaYQs/Cghcbo86IX8X/kpjRfp3R6ib1loHxXf6I6f/Z51U4v50
	 pOeeg//rS7mznJuabzSAO+t/Ux/UubqmtiYD5hBZo0VI97c/OKYt6UzZ+qUlwTpG33
	 HuLkCH57ewtSekjxxKsaj4ff+vgKoY7XYRKs+9MVkDstkDYxdib7HtgpbYDbHnXqFg
	 fqqrYQkPyM1hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0043CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089383371.16889.382696726169978574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad63dc6554dd3724c58dceb389aa7c6b3240e26c2a29cc0f508fbd0e8ac3bd9
Date: Thu, 01 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790893833
