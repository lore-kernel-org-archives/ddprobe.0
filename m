Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E00F1A76D4
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763894514; cv=none; b=mooa8ClYJwaL6u4VApt0kstzTFjm5F0oC17Yz8vrOHd1h3pgxRFB16DKgJLux34zugnZRoVdNsahWZpMsgzOhvJSYRPRcu0INVGEY2fhdSiee3OSKViee/NImvFNrtMNaULXPW65jJ8RToSX2f2uHKJ+5UlFDF08te/ML4VOrxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763894514; c=relaxed/simple;
	bh=40+XpUZbkoMEDpmuwOBjm97TRxK8zDVyVSGZpC00gLo=;
	h=To:Subject:From:Message-Id:Date; b=r2sKzNroFj+aGKfvkAUbRgli61AvWq2VX6ZyEZVGbZIagWtN+INoxQkgL4E8ca/ZEx7TQal/IAQ/bl3H8oTHOCmfl3g3KxKosv0t4OF+gCfPcAspk5QdI4PJkvS/E25HeY5cXuLG7vsLpfgbvVyoOQFqn7XnLgBpuFjsRQ0epBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAGRik+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAGRik+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5E9C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763894513;
	bh=40+XpUZbkoMEDpmuwOBjm97TRxK8zDVyVSGZpC00gLo=;
	h=To:Subject:From:Date:From;
	b=LAGRik+R5y7Wxa9sRa9h5dS9vlK0OGyKrq+e3x7hQSZdYgQ+8yWRpJZlFK1FmqRxL
	 cZl32ERmDz2+edFqTrm0td+ALDq3HpWKxEgBUHkq3v3nNpC0z0cgi0y8nI/imkIARH
	 MODIlnukI8KUIaSy+FPMIv1bNs0DqI2irCm1as29InU4qnRmmdwLU24faDBUy+IeY5
	 BSuyCeqRipPnk+4iBB14zGeiDAeSUJ3Q8CNDFl9smR6t5BXdcd/sw4aQazTUssYtBU
	 wIWfRc0kDcNBtuWv8v4rprDzS4oXjqKOzP5StOP/US2Itvz2SluVuebHhQBwqUSXbk
	 XQfb9QWY2yopQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E1BCFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389451359.23172.15753378987868147304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7eefdba7a2133f54c16915f7e36c2afaf519b9d147e8818942d2f62b14123f7
Date: Sun, 23 Nov 2025 10:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763894513
