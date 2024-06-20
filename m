Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552D21B14E6
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718899823; cv=none; b=PwCbb29uBphpbI3uBc0Rh5hlrCwMqRYTo55VzXTCAhgahMMn+eMuIt6Kl10nAO9bLuCtbs7jzkfuaVxbpEOw0eBWCwCfRRQ7hKHzAMce9bp3xh+7GyGOn7HqOLxKDDrYnwbShehZQNdqNO9PIjDy4nbiSOiztZF8+e26qeEnZVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718899823; c=relaxed/simple;
	bh=dN5I2cG774PsWCaZCWU2kbwXJgEOUUODU+oRXA1QX6Q=;
	h=To:Subject:From:Message-Id:Date; b=JYSlpigy8WzV/X31J00n0dzazKBtFsroJ7vYns39zxkbO7jK6gk1CoQG4uR9roD9LinGSorjtigOXZB7yjf7G0gTUpzsF6IH0M4L9dvddASM07NcYaeW7jLDkiNnyHlmg6opojVBrwW/kFtS1r4bPKPry0CDHDQEKr5SLIg2JMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cp17TNYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cp17TNYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AE1C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718899822;
	bh=dN5I2cG774PsWCaZCWU2kbwXJgEOUUODU+oRXA1QX6Q=;
	h=To:Subject:From:Date:From;
	b=cp17TNYHzfmlijwXY8x74sd2LsEGMu7pROzu7NJ9toWFTgflvzra5JDjApiZhyyDu
	 Xw5gGfgA/AiFcc9albNZQ2pbjySMb2BXL6jpT7bpkKOBxFLdYEj7h4feOKnx21n6a7
	 2KFd5zMHPnNCMGoYc0zsPz23csaZFzRl0E7YPEyfC3zCdo78VX0PZl9zbWyU3eymue
	 G1GD/kK9EZfaAujDtEd0wJvvMzz4VYQws2sTgJ+LO+pIjuFWbrD/z7ro4jma71Xhw1
	 eAAYa3fST542554L1cNN9kXDPy4vmEeir9atiGbHgNFlVd7gAL0bvTl+6UtXOpPFiq
	 zmE9kvVemaCWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BF2C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889982279.13468.9471333206809767003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e82354dd2987b45c347417322cfe78d81c038cb8845ade75e6877400e95d56
Date: Thu, 20 Jun 2024 16:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718899822
