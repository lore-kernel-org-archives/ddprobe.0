Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E630837CD30
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777471054; cv=none; b=j9wZRhqFyTlIo0I4k83oYsmMOJBa0Dp3P8Vd2P0bQZv2vkb9KwbfTBUWn5rfHr8ophnSoas03raWXAVYoTHws235EX4XXiGtjzbGJsRL0mp0BRdj+Fzzv4Pgu6D25Gufc03lINECjNDBLetvHz2NYkag/NU2Wjz5Tvbx8XmUUWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777471054; c=relaxed/simple;
	bh=jzddyNpnqlS80CR45aYChhzhcK1DZlw5NvuR6FEbrn0=;
	h=To:Subject:From:Message-Id:Date; b=tHrcMjM/t5tRZ1guNKhFgwvWVmOYYv3SEP7CX75G+rGgX0FB/ShK89pEjzkqygIH0uYdZmJxZp067z9TeO769AdtZ1aRaORVsDRPoh3VGYXue29RmzCwAQ5v5moI6Ktxa1t80bEW71v0CkDH3Xos6ArO0UgQaJaw7x15qhDs398=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GljSRz8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GljSRz8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB84C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777471053;
	bh=jzddyNpnqlS80CR45aYChhzhcK1DZlw5NvuR6FEbrn0=;
	h=To:Subject:From:Date:From;
	b=GljSRz8cqFALpjYVlPcB8XRS9SnBRx4ak7M68/RROhZdWX7FRFUIs+NW+GC6Cbh/N
	 7o7Aa7iimlx0E383pWF79V4tFbEq76JOugddyHRAZVTkujpHMLMEdqPRIDQ3LCi0fu
	 CUrsSA4tH1WRse8cXeX84jaagkzS8s0O6FycKwHIshJcE8ubCVcN3q9U/ORk3UOcWH
	 wXWhCwFXSGssDvhGoUuwTFlb1YZ/VM+FAIPEmoSPTRBV7GY/6/rxtM3V+xzPUILu0S
	 wqu1qCU5yBOdFrwrieasgT6rI0w42yU57QjK+yTEzEtdnp/MXcS7EUq8cAdfasTZX5
	 pqPOVdJHM0/uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B029DCCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747105371.4513.12013783863687760767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944212e07ab55aacd2b267138ffa4805d23c40c523753ec1c0c6558f7ffe4934
Date: Wed, 29 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777471053
