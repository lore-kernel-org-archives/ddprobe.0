Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F08218D656
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752458994; cv=none; b=d8j8n22z2M53ma5nRa57Y0QAy9UZAMbY/vPl5Kner/OrJaXjNeJsnVXxyRvp/cqr6zkZ1AfOfVozABSB9DyJEkTtyoZeepCSGixE2viD3N0fJ7kefETbBvK6qGHYvdkhbeXmcTT06W0/o3OPJmshevpbWXtaspz/mIZmlJlAsX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752458994; c=relaxed/simple;
	bh=vn1tANQRYDA7eHDOOK1zj888ZhY0EkP7Ow/uUrA3+0o=;
	h=To:Subject:From:Message-Id:Date; b=DEj/BuWBjYkGHOUvrB+ZyjO5LF6q6aHFswZLGHvx011WX/wHs04cfIz2B2MQwr7e6Hgy4P1QKvxdOsaEnO05n9t9puTGImKMlz14ClvJOK5JaqgT2P8+l3PcjTyZvwCnZOdUtm2bJLBe34yM35K0FYqDORrfVkWvw6xuCi+YAo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1cYrZcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1cYrZcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9304C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752458993;
	bh=vn1tANQRYDA7eHDOOK1zj888ZhY0EkP7Ow/uUrA3+0o=;
	h=To:Subject:From:Date:From;
	b=m1cYrZcxLlQWHZW0bKxhDK7uzxONeXWP9VTZIvu6DgouE6jXdgdaWuSKql53xmOp+
	 JlJ751tRrZDAI5W3djSTzP2jk3n5djax0DECwuP8xL129AQxq/FYCWxhQtJaefAs9I
	 PTijQSC1Sv7NmWL7T0cktz+72lFvHoZ89V+y72IY8s2BbfufOL/+oYrDCO0gHQc3py
	 QBUgqg78Tb0fX5PjNWs9mdYKdKSKa+iWgC5Y7uU8SMh8atAW00REIKg9EBkhytkfyW
	 +dKd86t2U1eXkz6bx8cmoQUye/mCfBRoq+0rJ6IC9mwtN0h+9c/WCFLk6vQRFfZ86a
	 lBRu8GJBXWvZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99677C83F1D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245899362.21750.12519817989238668732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ccc3cbef48c791dc73d353d8009895834c94b0239f127d42d02124b904b35fa
Date: Mon, 14 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752458993
