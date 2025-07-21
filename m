Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2538022D9F1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753126195; cv=none; b=JSrrJNpK7ERjpGbzbsRbfJDl+Vx/VvNLfbgMQHFK/tqWTtB1SL+k1x42yTSKcMX5nVBJfkOuFI0yQedLHutkNKMPzVCYFZPRSidKrG4RLp5SjrY/MljsRMEbP0GHVDHz7Ne6/vETjiLYtpLQW3rMRfHitqv9a4gaW9t4rBx1WXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753126195; c=relaxed/simple;
	bh=qIgoxdKUl/p/L85z2r2qXu+3fhK/WqyyjSdjGYJtJ1M=;
	h=To:Subject:From:Message-Id:Date; b=gSOLubwzI/bSk+r9kwBDCZOCxyA4x2tW6uo1g6hMXecWU+bEHWUfhjUv+CPL2wB67RaVhxnClr/QWX2jpPyrK0nDpnCK9zDqEI9v0EJP3sEXaxlIBRbBTMLANc3kg8eejlEYNXcjCuepYj+QXlNkQyw9Z0ptGCQkXTuuHeQ15Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATh6Sg12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATh6Sg12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1A9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753126193;
	bh=qIgoxdKUl/p/L85z2r2qXu+3fhK/WqyyjSdjGYJtJ1M=;
	h=To:Subject:From:Date:From;
	b=ATh6Sg12wFhbwVHFJIgKVjWp+OPHdO1LGwCmxiN6XKM2q6mZwZEJbH7SYphRh1YmL
	 P2A0uktiFqvwJRWCx5Vm4L7tVAQkvAxr8a1ivh34aQLYNhsplDyxwZpjnrsbVTDvnN
	 O42Yqra6c0MzPKMVX8Mkrebjby1kskhWYJ/btcg+IROEIBHa1eyhDYYhqhTsooqgz7
	 54r3MnzQP7P41gG/1oVvNkJNVe3lAKUhnKSmIxoj8vfG8PNrCf2gPBBwf/09hZoGgK
	 4y4bhNJMxONHZ6IZ5aeoOgN6Z2ZaLHr79C6JgdmwJ3HrDWKarxkTeucE+uejO1bWY6
	 3fJ1DvMRC4s9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ABCC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312619358.16637.11830624561020184433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214d587afc4038255a73db6c42ab10df4ab3c6b96321b71c482925faf9b3f12e
Date: Mon, 21 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753126193
