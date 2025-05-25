Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1F98F6B
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748134194; cv=none; b=DiRe0nqNTc1frAVz+eTLlJWjm7M/k33uVhgipVIaElQ3/fkImGdYwKfrppKy7VQf3HbMlw7VgMBXdvHY3sIiHtozCpNjmlRtX16TLuEOu23OQ0tTh36Ut8e1tgkM61svNMFMFLRjPja4ivJo69WV6oyzx6ZFdAeYLpUfyaXMC/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748134194; c=relaxed/simple;
	bh=cR6sRMkW+rHByz2Fs6Ew2B/B1mrO+eS/R0oZSz6PUrw=;
	h=To:Subject:From:Message-Id:Date; b=H6Pjobc09Q4IKQZgi6+R1odIoK5UWXXGubyqouMlv6JthuaSo7oVeqhNPCq/RvPpkkP2N8hYhDR0UZxhzCUBb++eUizRVOQ9bQlc9eWREpzE/woQLT5mj7OqZVZEwOf6avLFlbyHyPpaNAiu07Ct26EjJ1pccIgL7HHOWoC9VjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUjwYg3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUjwYg3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A280AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748134193;
	bh=cR6sRMkW+rHByz2Fs6Ew2B/B1mrO+eS/R0oZSz6PUrw=;
	h=To:Subject:From:Date:From;
	b=sUjwYg3JRQVbBf3C9RkI6iRecQN4+9pHNELUKBONRBNUKBtxcWbT6l7FCgv9+mYXi
	 xCIn+Sh8KzqOxqcjL0aGZr63mfpnwDVN211AA6VJs7nSYdbbiORJhLtMfDU9T0VWxg
	 c7VDtDM783Wc6ABQ2HrRKcGxT/QvCqFDEPXEi7n/SakDukz9IwR5dwr9F0F+Vq5bFF
	 9Gtsylk/MTprq+fV0yNnQk4HTL50ukfwsqkqdkbKnZbd9uRTVdOvUCJcfGUEWtBnyt
	 fQofWUEoMln+/EXf6QNwJH90KFJNaG/iAkDvUhRTYqplV+7n+Z6KXXSnm8IMFAKEak
	 WXJ+gCfDosxBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94436C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813419357.11578.3205876687108190030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e87f51ada61e965ecb9e0d9131493e90fc8bc0d44824a9acf3a1e8f18e32896
Date: Sun, 25 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748134193
