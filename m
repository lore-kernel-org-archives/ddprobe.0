Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C682D24BF
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763795514; cv=none; b=bAKJozDBH3jXgIKjXCJdaGLknQAftUpHkfcx8a9B8wKUcwazCy+9C//DkpQfK6Yf6rdsLCaFtKtJvQlvJquVDPfUXvye9P2aqdK8WK+JOSdgQ5qge6iZLJQ06VnBb259M5fsBRZI+2sORa3IegQ3EC05I0RIDKvcXlznHfJAVWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763795514; c=relaxed/simple;
	bh=O9IlfcFzjhzM5ykIB9Vhb7E1HLTsnxhNRlRhNZLnHDI=;
	h=To:Subject:From:Message-Id:Date; b=amGq/dfjXQUmFhpbHUme3Y2JB5o5NAxuHXo9yexabEHYHnmIrpH9mWm4LyE77BnSU7kYzVQUgKCATJzKIZ7jh9k0yWLDeEWCK2UQQJ0v07T7+Zqd1cZAuyr0ExJGF+9lVKDTJXusGFY0VN7SMwLUl9hkpF9wrIY2nAtXx/gblLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iuwcu26i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iuwcu26i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C8CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763795513;
	bh=O9IlfcFzjhzM5ykIB9Vhb7E1HLTsnxhNRlRhNZLnHDI=;
	h=To:Subject:From:Date:From;
	b=Iuwcu26iIup8OXuV76jkAYjL65gGKL8XSJCuYVvBXH2QbCKPmZD+8tIsHiXgES2Qx
	 1l7dLB8vL/schj10XPjuhF3mKEx6bNbnES9mdtTha1mMxf2MHxLvx/GsbcCyW1dWRN
	 Hd4pk8xcT3lFLjxlYZ3ctjnSZNN8PDdlcycb56vtgJl00FYtdxwP25mxPy/PLtuaws
	 88my2ex28u5vk1QzPrBw/+y6K7zmAczRPWH1h25LVma35Ry06ISemKqGxvH0RouHlQ
	 4WGCbEeREk03wTSAHZr1BJFqP4+Y9OgqPULQJnQTmoFcmjRjMRyWetyJYjpEMLhu7o
	 70KYWgHS/DQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934ECCFC51D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379551358.20050.9070740915520409212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e7c51423775e4fa199b875d912bfca9a7fad506d9291fe2dc919b41b68c98a
Date: Sat, 22 Nov 2025 07:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763795513
