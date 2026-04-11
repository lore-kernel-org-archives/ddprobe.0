Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3563035979
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775945254; cv=none; b=L7d0MN573JScKngwR+KlKbvYUkoulZG7+GJ18jAOUMoR1zCHc7hkQnCFlZ0Jj0ARzbJMyyTClJajJ5shw3HqU6vanGZEJjKvfassTEw8Pxc7YtUyQicy9yqWB2seCWbRXWocMBjEUl4Iyht/LRuugzYc1PaBwlLWIkozwBpBu9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775945254; c=relaxed/simple;
	bh=LKvR8R2ufT76hMfwMBz26Cea0irJrLiokzYerkFATTc=;
	h=To:Subject:From:Message-Id:Date; b=HYtqpr3dZfwZ5XCHuRbe9HfMajggfdBqJCXPpSgEc3DM1UfI5sctZ6ot/rvA6xf0KgjUjkFDIk5U+NpQ4B95oql2HoVBfdww5nk/6gLQbP37YGi47W8KB1vbUA7+1t6t0zF3derIc5G1viNFwJ+V3zewErWB2Y4MJUhPzM2j82Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OT2Uun42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OT2Uun42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE19C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775945253;
	bh=LKvR8R2ufT76hMfwMBz26Cea0irJrLiokzYerkFATTc=;
	h=To:Subject:From:Date:From;
	b=OT2Uun42scLmPWYyrk2AP/PO6F301NYIxL3C9r6xZJG/wJEzNaWuDg50gHpY3JNxK
	 +CpEuIeRNVzg+l6Z82a+Ki0CKTsjX6sq5voEx6hNQcObs4lFHTXcoaT/E/GBJMhoSs
	 xq+u5FezuFPy992gWRjpGhp+GH3HbG1BAsBB+K1JJMiT1+ZQqHr2vcwVDn0MXcK8xC
	 zhXOUBL5losI05DbjJuzIpt7txD5XJ+vv4VOuOHJrUKiVXANs+s6NRXHzgzdFfLShK
	 9ak83nwvGTg7CW5G/GookmWB5DIfk8na0oCQ4D+gWxxepQn2AJAbdQexBTgzy/R6O6
	 qZN8tu1qZAGIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00AAF3ED67
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594525368.13360.12966077655344330603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648bb05527f5353f1565a9cd5d6491488283a4ed1fde55f6aeafc85c2d0150f7
Date: Sat, 11 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775945253
