Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120CE3542FF
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770182034; cv=none; b=a2WOlfp8uBQ7pPB/a12HM0TadxB7ZXX9G0uJX21dW9O98/4sXfcP1dI42UY+fA8g6jjQ3w5G1NitJRvixQagrfMEDsEQOy0Mau4UQTEgeTbneSkNZvLr7ZjxWFkCeFQKBRZwy+xHYQasxv/Sq7DR90WYBDHj8xboN61xo6zRnGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770182034; c=relaxed/simple;
	bh=yzol3mDRm+kbad76vbHODLgPfJfcTNzg6aALqCbx9Y8=;
	h=To:Subject:From:Message-Id:Date; b=snzTkaD1GbR0nAnyee4YijVnr4q/G6nB4MLqqaQI9c740tz4BrcTBEDoE+y8mPt3zbOtyZVyoBvqf9RiYXK0tci8+ZTs44cCcSaFRX0Wa/+m7efFnwbVydGzOMLn7J05+ZlnTvIID57V9IFC7QsjlDMqEEg7HsQfoJiL9RFsoTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7HFVQMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7HFVQMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC236C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770182033;
	bh=yzol3mDRm+kbad76vbHODLgPfJfcTNzg6aALqCbx9Y8=;
	h=To:Subject:From:Date:From;
	b=X7HFVQMuFyrYPkNqvM6CqTyw64rK9m2vemFHSGk+Qb4/bBycsu5X1o3t+l+nVNwlt
	 2dHp/1xpDvPGFCjBSVnZStvai+ErqrN821qRlxYn8SamquUJduutzWhB+SIF8zKm2b
	 GdFiZKLJ+f4eKJ6agtH6wt7QW5PIuWgWLM6U1CddumJV8iewMY+BKhgG7PEq5DEkIx
	 9fzzrcWqgwhvVxNrvf4FRTQGs/uxERAum1nK/8mtpAip+tJ5oqqCPeck4vQ0CDsOW1
	 pPguXyRvE4uK/z95OGKf1PKq71AcrcaUOrrVinuI6OsSM5xZ1Bt6HKadxz+T+LNa8Q
	 hlGrcF6MI0U5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CE8E8B39A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018203358.13706.4728584776940381630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb862358bee09428d7189d40119cff38938988eef2566140306f58115778c869
Date: Wed, 04 Feb 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770182033
