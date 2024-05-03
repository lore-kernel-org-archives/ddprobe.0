Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F9BE574
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714701143; cv=none; b=jjVh0ECbAv1/fYMZc8ekWoE6y7qu4CSNFwa0e2fJyEONhgCYajTA4kVRGgtNsaSWMMuTkTEFAhYVnjhx5cHTh1czxfpvsejJffXsJpmikH9tYpwcov7Cn/4Q68Yh78/YeyGBUMawOAYgyup9Mam2fsOkqkzvUix/yj9XCVeAYqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714701143; c=relaxed/simple;
	bh=b7hWXJyh9Ri4Dx+xwr0A3pxuWtJlortGTLPh2G+1gO0=;
	h=To:Subject:From:Message-Id:Date; b=a6BbQS44WWCMi/wnDxHSsrGDtNV5329UsaZMALdj5cyFYnqHURLd6jirNawJq/i8JCpPEe/Vujpyc4B8iRsQH+EDOPgsukIkIzCQFOTDgWMi6Q84mNv8z1mhoDPUEbZaOfk/tdImdY/QMofDu8q3BZUT/IGbZ5BgXqvtFSRpm8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uD6ZBoLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uD6ZBoLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7BAC113CC
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714701142;
	bh=b7hWXJyh9Ri4Dx+xwr0A3pxuWtJlortGTLPh2G+1gO0=;
	h=To:Subject:From:Date:From;
	b=uD6ZBoLTvggGli7YFdwLbVRL/Z7SX3KeQnAb6IklRHXG3RM+fxLJc38o+y8rxRHSU
	 gsgx+lBjrvBY1I9xcIcZc1RltBAVXSvLl6nOSJ4O8a1pUc8PR9ES+1y4FE8t7dl5tX
	 B2Lrbrn7gCjZ6N1FD5B5BBFdEeFOTCViDBQ4wzImHbbYyUdu8by8CTFs+XEYIPmrWF
	 q2/qG7dRfqf/HanVxwFqMsLB5vmuyCVo/q1nzdkmZQJ/Y+ofelnxNsSPr17ETvDy+K
	 3o0kqcnjJsj6+g/NUuVUi6bPcXPAs1Mi8LsLXlSUZV/F9syAc/fjWI/oT/K/zLnkKt
	 Va60MmpxDWLKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE04DC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171470114275.11583.16862733596583251990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699f811e4c6882c2ed4619339a06d88d830008bc22b47b6a5073baf62d767ae9
Date: Fri, 03 May 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714701142
