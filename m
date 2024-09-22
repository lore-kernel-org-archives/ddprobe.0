Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B2B63C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727046354; cv=none; b=DSOjg9lVd8oe61cqBWM/0/vcdzG6NUIMSCKTsb+uVW7CcZWCkpo1DOjHE9E2C7zkuN9/gyR0jYjAJcyfcOKjfSiou/1Yhgsr4RK44HFyK7WzVzsnKaQwwVepRCLVL391CCXMVtgWIOSFdNHYwaEg4gIJL2bJEvprPCu8BVj+THk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727046354; c=relaxed/simple;
	bh=K78qqYIKAPsIVnX7eCRWBsojVaEqsjI0z93Z8lOa+Lo=;
	h=To:Subject:From:Message-Id:Date; b=bC7oZR3cHg5yc/iJhWICS+ZrLCYezr6yJzSjyUOKmZG0fl33hHr0E5xMxz3agJn1rWpdfgYXq3sqj2XXFHFHzzGuAGm7JFN9f0oIjwkNqfIOv9pX69POHMbz5nnTTPInICIDiJIJZLmwbIPoTrbvyX4wBbNBi2fxQLPhDawm99s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a39pqg7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a39pqg7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE6EC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727046353;
	bh=K78qqYIKAPsIVnX7eCRWBsojVaEqsjI0z93Z8lOa+Lo=;
	h=To:Subject:From:Date:From;
	b=a39pqg7rgFOQRYy9+s0ooMOkNMZidyp9VSymylC7KWuHGGtFmb1BT2siqJAjKX0pv
	 PDIWic7PF1FdgqMgADjSSU50exsnldmVcKtRkwYuS9pRFCve+wQ7RjeqKYGsyHaw+k
	 aNt06ySYwaLkO5B1d0R+mTXVv9NVQM1WFMECalIAP430/Tpc9gWUraAY0h3oM+ugrC
	 1FJABkqSmF5VSojviUxr1Sov3xlwMJX68tK5ceO4/myern8oxIl0gE6ag18K9YlIrg
	 9V2UNP/f/47+PrfhFV7WRiqXMD7ZkdzZDxD+lWi3pIK3YmM8m83GZOah+QbAypuLVj
	 JRAqlyRJmTyoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A41BCF9C68
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704635362.19217.9749621544165448086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c215e8da64f1ec1a34af5d85e2e9233d0ac22e23ccaab4b0078cdd551f2ed1
Date: Sun, 22 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727046353
