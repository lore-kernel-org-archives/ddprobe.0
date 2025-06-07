Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E21F9C1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749256794; cv=none; b=sVVnL8V+DjQg6KLdYU3mxUsnYeBbH6UfV44ySxHpAgx0UwvuBxsGH/sCB7lKc2FVmR3NVfaXOFq6Yr5x2KKXo7hSG23fMDTP0hrxbEhm7G/adRYFq1Uv1yXRdbUItXZTmtAXo4uH8G+Iq0fnh+SQrOAgI0ObZaaTp+yetz9GPcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749256794; c=relaxed/simple;
	bh=FXVLbhb5qsCqtxPKvGP0sxO6dDFCNQ0t9xRs3VYKxo0=;
	h=To:Subject:From:Message-Id:Date; b=G9GHDAcEjN49GKqEYNfD5IDl5kxhyGAJvBtBpW7JwfwQyZN9cBVFQiJwlSC7xUuD8mF9FKZynaXBa2DAScDsjA5wiLoP8dGiCEVY9F6kPem3fb+moRXHxgf98bF9gzHVo7BVzgZl7NtZHrobPXZ5PU6zuUdDJ1JtvOpHRbkNpyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3U8Erl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3U8Erl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A2FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749256793;
	bh=FXVLbhb5qsCqtxPKvGP0sxO6dDFCNQ0t9xRs3VYKxo0=;
	h=To:Subject:From:Date:From;
	b=V3U8Erl4skOIEb4sIszmLLtBqTvFScDgQZbFfVXomICmMuCjD6McJFhsPJwXPRdUA
	 r10G/e0J951b+cGm2nBZNUUQrSJoZNxn31ILKfGdDJC044nHdgLCdSpXiBUB6nFQcX
	 HP7/j4IDrzxseSehqoEifpneqa50EKgn0iI31I9XtWc31Bx/ulgEKqbBGy+S4x7int
	 BX9jIyR1Pdn8JLG+ajszHfSSEvsVHvFI8kl87il+Bk6KEoO3rctHYy3lodL+GIhN5Q
	 MqiZtmahvVPCoCJY5pKE7Kp5kryAKmcQ2jAeapNUW5Mk6YFum+LSuFmjA7z7bEsu0w
	 bsMN/VZPhqaaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96095C5AD49
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925679357.31784.7782584075622287611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd9debcf0564b58ed46f7b1472649f39ba9efc61b77680b5ad9cf9910ca232e
Date: Sat, 07 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749256793
