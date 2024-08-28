Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8E318A94D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724859954; cv=none; b=llszGTkNBM+jpisx2N16enfzEQEVMYaJYXXI4JHFd3pk8WWJgbAThMiAVS6K9Ilcz4zWQEtCJbBM8H6P+r6lNGsGmb3zmSZ4XB9LTKMTmUGr2cDrpDVSJyg+IEkwdacHg+PU76Rl/q/bZazVrI/6Mda7X28vJJeh9uJncQOBz3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724859954; c=relaxed/simple;
	bh=MIZCN5RTbVRBZLvmSxOr04Xt9uCW60w4ZcjUh7UpFD4=;
	h=To:Subject:From:Message-Id:Date; b=j1umQEehoVAjeM6mOapDU2tN1Xk6nn8HdFrG8iudPWrJHKO4VR5avuXbg6mWR3RKtLlsuo1E9aaSt1VrhqUXja8K4XcMt4Vl7sgFLYV3jNGz4gH2wKFj992gaUFeY9+dU+qDFGMAZmGfQcZ3c+mU8hIf5s2iRnB8BqHNXG6Dv9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVDCA2iF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVDCA2iF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2BCC4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724859953;
	bh=MIZCN5RTbVRBZLvmSxOr04Xt9uCW60w4ZcjUh7UpFD4=;
	h=To:Subject:From:Date:From;
	b=jVDCA2iFooY7zu7DNw81Qg07e1O4L1J9hGNCiNVdDQjrpp8u98hq3aurptv0rlEdt
	 6OXbj3NFjH6N9hshvC39gh94dQwRVjuOYxiWGhEYMgWpuH8TQ7P0sNFBMLG3Rw6phE
	 JK0NrexAQn6wWUjJEzHzGcqp1E8wntDThnJr+hLHOdujSuRtgJMdI69CW/NGblLoLD
	 aV6mcNoQ9kVbcoZNHcDQ8Q+JtsSLLBHBQCkAeiJ9wmCmYaqWY2UYiKgph36652IBBW
	 xDFrVgZJGMk3LzuR2akTG70pkXXxmCpZKOL+zvoyPlQjlcJMiHnCoODt227OjP+cMx
	 YiqzzGddkAlEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9486BC5AE5A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172485995359.28508.6457708575999813053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269ba601cd5c8b431947e09711f623ff5bfcb1b18d976808d756190a4fcb8190
Date: Wed, 28 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724859953
