Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B59B20322
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742327395; cv=none; b=rrohsFj+8T3IOpqR5dFoRSak6uNZCf/r3uXKO8/pgYsrJk3x1NsXrEqNfD12wdhKedF6EVpJtWMHlY7kqWoEcbB+Qo4LIebVAuLvHPLgGH6lHuT/+dpv/BBI6xdys+i/IBB+dQCrZrznmRrb7h6EuuyIUIhH5vp7T6Mf+rvyjWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742327395; c=relaxed/simple;
	bh=ayYg7x0ce9RXOzPJZOiNVoVN16LPJw1uoEt6d9ksQVU=;
	h=To:Subject:From:Message-Id:Date; b=PQ0EAobCWo0kTR8wK+FzxLfq/5zi7BENUwdQUgbwhk6HPhQEDivIHez94pjyTdhHHyjSqNffrTRB8qhJM5O8mNO2BWbr5A5vpdoUwaVcKn220GODj1tyENCKCjkyUdIMzVyojqxP93zq2cDdP7aT7D8ifiGneOWF/kUGIosveFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUY0bITi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUY0bITi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D04C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742327393;
	bh=ayYg7x0ce9RXOzPJZOiNVoVN16LPJw1uoEt6d9ksQVU=;
	h=To:Subject:From:Date:From;
	b=UUY0bITi85qVunDDrytqg58o3Cc3ifqJJB+Q3Rw8Tyqh7mtu9gsTpFFxoqBvRjJXX
	 QIUjJgMyKMfcu50P2dwTHFT32bpwrHch/4bDU1+zZrDYq3GpgEIiqBIJM6po3qmDyX
	 vdh2NKK0IllLeRro/D2IiIe842I5oJNj+qhiHbi2nix6Z8+2fzfW9xwHZ2mu90Ii1/
	 dfFeCVY0u32az6DedVc0Zw9TwZ011JmYywlbXXsOJDJwVDf8MktkO/Rxg6sk4hzLYf
	 LsWdh+fVFS9DffcHVogbFzGGI0fX0BzoAjcaSb0/lBpaHNBPy7svKzIBPqHbzU/TNI
	 +sE1TGxXJ1Xzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A456CC35FF8
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232739365.15356.15322097395148542251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c8a1c7b5e764008ef58f1838dc23c88c53f1fc13a617b5044350ed95ba183a
Date: Tue, 18 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742327393
