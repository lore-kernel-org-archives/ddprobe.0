Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F55A2AD00
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763789514; cv=none; b=gy/DDtuRHEkyBC/msbNS3BLKoxp5S+K9yXF2LXjFdwwFb3OQ/Jwb0xRI/4oL5UoN8p5K/YQ9H3tti1u9BUibGitpuCn2wMk/XAWZ7MVLjpOm9qVm2A2JOl05DjcMC80JFentMLFxK59noA2AyrA5Jxn2LIIuQje2KBICCYy8W8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763789514; c=relaxed/simple;
	bh=t9w8LFYyQLjox+DH1EmSea7U6rujgNYCAnWUXLAeWxw=;
	h=To:Subject:From:Message-Id:Date; b=gSDs8Cmz0U0D6bRC213gJPw49LksJSYeT+D54HPBFtQbgySvX83gqMjWe1ibT+BWnv+X4Ur1dPqnIIBlDC6L6VwYKQCc3fWbrS9xUmYj3m9OT4DtV2JUi0BQnDonZCJ6nsFGJ5g+11CVYP70olHYpF+6Y6aRqRlTrhJPhXQKcJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuQZJ+A1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuQZJ+A1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FACC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763789513;
	bh=t9w8LFYyQLjox+DH1EmSea7U6rujgNYCAnWUXLAeWxw=;
	h=To:Subject:From:Date:From;
	b=ZuQZJ+A1++QMFqvjXqOCC7mbKlHQGVMXgA/deHq3RveHCuFYV/TqbuB5wKzb52PXp
	 2mQFdw+tP7UJ2wtiGCVRd+RT09ZgCv8jRVaC7fG8xq+piEhnrdM+n5lxe6cxjRMe2h
	 5Wc82A7tS4P6udaXGV6nNJQDBZbo/+vPgn0ZJmWS18lfbd07tNCjdGpwuFU5dI3ocG
	 uaQnqX/n+UdgWgMKiy9SfKTniU6otgX0x8wFfPO8S9alyW1CCNiN+0MtwyyeEVr9UG
	 gxR6qoFPCHnpLXiMmCfs1xtlt0S8NJR2ghgkQQZ+prv1x6/OnEOz1U3+qYKSolEmOo
	 vr1aWjJ8VlFoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A1CF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378951358.20232.912067683146975026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90cb86313f1cb4ac1a4c4680b0508511ba9f4a62e89e7cf1df68916d09de3db
Date: Sat, 22 Nov 2025 05:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763789513
