Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1613278F26
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776982054; cv=none; b=YY4YHCX0SNKEXF8jItBXJ4web/vhWWm63C1xpskP4DK+14aXPRCd6FUuBbWwT559/N8H19p9PGVWztkyPb33JVUvqk1XQNXakx7iT0OQc7D/cm9kl36fHUgdFp0ksw2Cq/lwoITJEOPUJK+t1Ps2ESG5Uo/pvjVObxpxWRy3gUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776982054; c=relaxed/simple;
	bh=hnFzEJ9Q1pBfLu5uPB+CLmOoHYN3/AwTROEIZChhkYw=;
	h=To:Subject:From:Message-Id:Date; b=Qc+0blyFwqzJdPaUb+KKGbXG0oO4GqydzUcaA76nwr6yJETe8PJxFFkobzOLCjKEESVMaq5lzfLOnmq+Les7RfjczruE7hV8f+NqDvXLAly6/wKHWeeVQo38HQnDBaagvfprrF6cP4iOYzHMgTpDamY7F82CiBGnGdscqYqO6uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXpPmoPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXpPmoPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE50CC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776982053;
	bh=hnFzEJ9Q1pBfLu5uPB+CLmOoHYN3/AwTROEIZChhkYw=;
	h=To:Subject:From:Date:From;
	b=eXpPmoPOAXn+3kYAmjlkYDavFr/hNQxz5GWQ05TN1ktyH/KufqptPvGxHKKPRlNMn
	 flrr3xmD03MNuh/m/bc105tgdLouzVtmswNKgjtnF5KMhucmynEFPy2rXnz03CUVfM
	 Ji459S4qX4lxZcptocQmr8yuNJdSsZZkPPpLuU4fxygGXdYNICCl8XjUBBk7/675Mu
	 mTCe6UVoMOnX3jIf2sn550MxnOywTC/I/sZrrF3ph/ssxVn608p12Mt2yqIwe60v2u
	 WhqLUCs6uqOEPwaAqgm3d/X7GcNJ8CNZ29Zovr1j6TNPWDHYcFyzl/zCWCnUwO6t8y
	 ccGv8r2PUaL3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD92FDEE52
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698205368.27588.5379954415862058571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657cf5281a748733afc4e065a5834d564c81051d8625c60ce96de3b1c92098cd
Date: Thu, 23 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776982053
