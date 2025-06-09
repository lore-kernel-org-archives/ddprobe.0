Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5554E212B3A
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749481194; cv=none; b=jlaA+isp6t+pDL3lW4yd4YwhboM0DIs0VCXCSaMcjmPu4c86Lep7pDLsHpfxUZzK0wyy6AWb4+A2KYShi0Oz+42VGUwWW1MSN5mkknidk1Xuloox3zqKBYjvajzMmMDtboYmYnDjhYSiHmN0QTHJsQBJEPjiYsLsQqXcvJ90oiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749481194; c=relaxed/simple;
	bh=rUuZqkTCPhtDdLAHBL9Ajd2aCQFD+RT5c1iVcGf35PI=;
	h=To:Subject:From:Message-Id:Date; b=grhOxVFPGT4xhfErQnzNVxpZ1CDjLSzk7aKfrE/P4gX/ELCkLIFQNCnwwYx6CXhMXyU+hyPjBMuuT5uFlekH0jUIfy1rwmNzOhpIUIiliiUpDhkTnA3qzNz8S31xWdYj7d1vriWY1G7VSrxlZXoaQghy5X11Jr9NdoRiUWCLU5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cicDKUx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cicDKUx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CA3C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749481193;
	bh=rUuZqkTCPhtDdLAHBL9Ajd2aCQFD+RT5c1iVcGf35PI=;
	h=To:Subject:From:Date:From;
	b=cicDKUx1gCZHTwaKiXDlUQRcuXYC/oJMW2yvRRheyx+5YH5DZDpI1vlUCrlxd0Hln
	 Il72AHnqahfm6wJh36Hf/FyBp4uSqm8hBGPq/SAQ6/61TV/5VAS3LWF8+mZsWBxoLn
	 tDXD0Lli3rNjunqR0LloMmJiDsFxwQ/E7BlkN0zIo5mXR85ukf8ugj/bMOXlLN3/jg
	 dtDXaO04LZJ3H0JjpYY1TENlI6eD5j8kMayb+f4MztkRV6BXE552JWHKMFmWUYiMm2
	 k4R84dNxXZoIPHt9rjTA9K1kP203jo63kdTiQuonwEHC527J77DkUT233o3ovBtmb1
	 Xp7c50Xhn+u1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9C8C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948119363.1976.13364740466508726578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b25d8cbad86fa12ed6689343b7558981cd16732c659d354d88dadfb374f6bb
Date: Mon, 09 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749481193
