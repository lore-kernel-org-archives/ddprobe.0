Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422D3134A8
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733070354; cv=none; b=WWzYyvU1RxOqemivOEiSB8A4DUFPTf7LQwNGGuPRWSU0LKZbDIsHf0dRbyMFzK3C+Bxc8GSMwhxDLldobOLihDOF5uLN3VCSODHWo7Yato+0Xr/7RxuigL/HNSckNrLbb2h2AGhMiha5+knJqx8B7094TSJxBmozWjrmUOyHXcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733070354; c=relaxed/simple;
	bh=QfsGoWqq1xmyrxy1NZOgtoNTNd3L2Y4tc/Cbcv2e2Jo=;
	h=To:Subject:From:Message-Id:Date; b=DSDglJvbW8hbvBhXr25eG8qqXQGB5HnrtV6e4lqQPCr62+LB+46cnHN1nA8RTBN2+I7l37PPcbMIlhPbtQdhUtvasvcEqFZfFyAW+hAT3h2Ow+Le1uYKBGqUlRAtc6NA14zJ9GR1Wm6vcsaZVrBhxSkJ5YVSjHbwRzA82FU8yAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlBmT7VT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlBmT7VT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24D2C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733070353;
	bh=QfsGoWqq1xmyrxy1NZOgtoNTNd3L2Y4tc/Cbcv2e2Jo=;
	h=To:Subject:From:Date:From;
	b=PlBmT7VTqeoAh2wC7PfaWWDmSIEq2LlInvGs7QZa0Ez/gTbV+ecPgJz1NJ1r6Dl3z
	 IBdS0HA9ltuan+QexyzOtY4o3gBu3NcR8Carz88pOcI9nwLVeRXOPl2xm4vfWoBJ7Z
	 GJVUSBsorodFHobcchE3l4oBXQ433j+o4tqrZPz7XdLDWrDRBxDUg/2H6UC7uOspAb
	 8OZ7j6d18iujae8yuumn3eBoVs1XbB3lUdID9Jg/xj5IQumpokC2xC1EesXWYjxFSx
	 6GKIyLlb8imcWnmxjKP1iRwMJqBq+UzDBKK4d9khvGy/WYyLNbMKG3pyg0v7Rb/6Fw
	 24aJqzqjmUz6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97238D49771
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173307035359.18878.14354256560711603990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5b9c65652bde714085704c5dcfb7892daf8adcb60f649c91c0751b3c6f97fc
Date: Sun, 01 Dec 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733070353
