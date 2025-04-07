Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2599B19ABC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744030194; cv=none; b=HlYF5UqDbS8+Uzj3bqvyC9E0pWJBadWPGLJtrIqlWrmmFxAz08Z9h0cHqDLQI4Pt2jXIWEKkre0CguMDawkqdNAMHBEo4Qw/uW+B9pQlsKb3Q9hXoWnuo8ebZ+YIVxJk3tzBmIyU42BFXjjb1jVvAdDebRfWKHwyzzG+c1Apy/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744030194; c=relaxed/simple;
	bh=A+/wKSCXn9kB2N4uyDoVwL/qR9Cbi0qiVifVF9Qp8Yg=;
	h=To:Subject:From:Message-Id:Date; b=etr876hqm8kUzxICII1x+SoZuB862gWqk09iiagqG8NNz4hgcGN1lB+9/LwzllcjMeOBp0a34QAibCKR4Opsh6E0R4nJeAxDLtky/VjncMbfwwOY1gvaSYcWSYpDY0VyrgKGn6HSUl1mlFLL2sQJDPkMzveKp5sMf+J8i+iDn1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enqjdyI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enqjdyI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F5AC4CEE9
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744030193;
	bh=A+/wKSCXn9kB2N4uyDoVwL/qR9Cbi0qiVifVF9Qp8Yg=;
	h=To:Subject:From:Date:From;
	b=enqjdyI01eKoKNv0hvDjRJLsikUp6INIRiuQE7GgqIhCTsyLiP5nBYDJxrv0Tg8G9
	 GfXGnpH8nJ2KHRz1e9mHTBucjeIE6WwrfLG8J95DddGjCYKioG6kYUlU8cFtc8Rntz
	 TobpVe8EVrxxmNITw7Mw4DfTZGPaI2DTXl7nN5ZZdgUsCD7o2+jtKVH7S/4Xif+sYq
	 uz3eExUem1iDSyCylh3mzPU+fQzUHms7Ws8bsy0QPM9OzdzeeoQS6Wg2OaL4o4goy3
	 T8fGz30Ki4fkbCOIGo21wOlvzieliMtgnhcQDp9YgPzfezgI+Rf9cp2qbMP9KB/B6N
	 CCfiRlH5bxVmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91683C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403019358.31009.5936757297438162381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86aba62ae2a08241f464046d2634dc187b0ceb35bfa7e9637077a3b2761e7c1c
Date: Mon, 07 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744030193
