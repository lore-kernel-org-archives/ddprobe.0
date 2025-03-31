Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C10216E24
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743454194; cv=none; b=tOATuu2/FLgEm7vPPbfsiF9H0kBuc5oRiefJUPf7vm6oXyGEkJY+2AfQRtvdESe80coghJNrHL2Y9zCOakQu3qHotB7yopgIq9OAmyPkzYCXXuoG2N9OTfKah9oQtfP2r7H9mkiuNrnmRNsaFZJFoI/ZTR8bW1Qr84oS2OKVFLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743454194; c=relaxed/simple;
	bh=q7mfXVoflQNtSkhuMe8oi4LCwmxCqZKQHpmp7We0p2Q=;
	h=To:Subject:From:Message-Id:Date; b=KE3Tu8Fb8PqE2b2eRCLXZDeDa7/Gwkvw4Uvv4ZB6Vv3mnwglZ1bWgMZ+3zART6I22oUlr8z3nbLUx/alsOrVz1QGHbxwRqxeAiV+YIopyjkXowlroeYhXiF7TYOVEwk8Z4YXoBXvYUxtyyiYD23+iuaNsmA5lM7dmfc38XN7DNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1e7mJTf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1e7mJTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF5EC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743454193;
	bh=q7mfXVoflQNtSkhuMe8oi4LCwmxCqZKQHpmp7We0p2Q=;
	h=To:Subject:From:Date:From;
	b=t1e7mJTfLYuBRyXJWuaJvs20FEAdvNPnGZcjDJXB6w4dYrDb3xkDUdcs2qMj8xR7x
	 S8ee9w6QEYVAN2UCBCWqgUjVoWd39COV+sV+V4eHQ3LpyAgXqAuiZ9Pg6VF/d7VPrb
	 2CxDMIQpJxhuI4HqoF5VeLbwL/m+c8/L9vN/nULs3eJ6ZJN7OsqNaSQsVCK5cBHOJF
	 B5A8QZYTl0ipxPA0fxE/4EMzvK/j82rvZ7dmUTo0tCb+cq+FxyHFiTWKZNhtjHFF4P
	 gmWDe3kbzzFtYFi+AGuetLI1I47KSfu2sN4ofWCQZnLQEgH+cPYx3trKGrj/RR62eQ
	 RtHYDufMURWKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F3FC36014
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174345419358.28481.15241538171788783098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7772567e7fef115b90be2c0bc35bcd5a053021bb73fb4c09a74169259773a896
Date: Mon, 31 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743454193
