Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EA5342C80
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782104794; cv=none; b=UmLj0AUvW2Sn8gn/ZdwwH1fF9cWGjt1vFWT4cH95bYAJMxnYZ8/L4TuukIwQBB+ZtAC24jN0HL09WcYuzjDC8qmWk8a4qIy3aBAIOhcB4KKR8044HNh4qgFKa4jG36vr+5tZDY4no6I7VKo+MhTJLBJd0FnipWhN07bsv9G3fdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782104794; c=relaxed/simple;
	bh=Q8DRUruleT5E2hPGmYRgUJ2oamRGnzUd8vxP9C4DzVw=;
	h=To:Subject:From:Message-Id:Date; b=J3BegzOHt11KYkR3HIyXJZamt6haNitBV3gOF7U8dPsf2A3jxTT2Ylfmof7fa1ozoOFUUcxu4u8139i/zYdYQDA7FdccgX4nor0cPBM9SsswXGsvYvzkAZ4ht0vM/x6hjpi3auzPr8ETZUUDXWyH6RIHham05ocAhZwj2BcUyqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsybyP6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsybyP6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E06F9C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782104793;
	bh=Q8DRUruleT5E2hPGmYRgUJ2oamRGnzUd8vxP9C4DzVw=;
	h=To:Subject:From:Date:From;
	b=IsybyP6WRbiduImQAwWqmgz41MM7gtmoShTbx2lJMq775LHbZB9pwVuGN6u0WG0ak
	 XK7RFLIkAyG9OcS7OoMBsS/5PJUAhYOGP7gnqaXP+Oa1juWlxU8YjAo4LOwGlqvDiW
	 se8wVMbvLyRDawhVrqKqgN21WQdZcDqDW8axD0KeFkarCCZKvWUvnGK9pwLo0IGu3y
	 XKXu3TFenq76/SIqGUehAStcfhjNg1QbjZxuyVFCxZg2w8DZo9nG5PG4GtbEOMS7vt
	 3f+3lW2On4qjvxhdoyvlRT7aAPd4dd4lj7i9y6Djw/pYfPp/JlRxwT5BQQq6KdqgSf
	 d9DjQfFpMFURg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3F3CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210479373.29872.15432624351842912907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f0b88d63760c25378dbf2124ebcfa7f6194d02c00fd14417bfbeabe011fbc7
Date: Mon, 22 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782104793
