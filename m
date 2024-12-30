Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D9DEAD0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735586154; cv=none; b=J9gkauOGUQfY0XWXLjhmH//2i3Qvs++mAxSZqfTngK/zQDNyRnQAR8Wrf6pgeV6KhWhMEiQG9yPQ0/HVAoCpNv978uxE0g1gYa1DkCrreYYYeB+UtAbyIZlGiWOrkpJXGEdgAxGzTPVCv4I+SJBCtKzvVOc/W8LWfS8hdyC3K5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735586154; c=relaxed/simple;
	bh=a+UlboP+W3G0iqJTQQO6EIjlH11BpLOkOysav5YvGY0=;
	h=To:Subject:From:Message-Id:Date; b=sv0RXAJNJX4fyPar/ykWF7/2q2sR9otJhMFMnx68guNcYnoj8Oawm8bxmW7O1L3l6eAzcXcdCsVZBwbAf4rsV5vPocMWOy9a+SRcTp5ZUaAFdDPT5GyHuFWDYlby3R/n7t+L/2zk5+p1rLbAXuibsGlSY4TCAcTJtrT8sqKa3Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGgerCP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGgerCP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC947C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735586153;
	bh=a+UlboP+W3G0iqJTQQO6EIjlH11BpLOkOysav5YvGY0=;
	h=To:Subject:From:Date:From;
	b=sGgerCP3tdesBmATu2AUDEOAkYI6IhSiec6DziphBvFBvtZkj8wKZrjDmJWqBfy2N
	 bpX5A44lWgjqp0u5CCvigx5z7OnmhzCsglYDzlqhqrkMoSTAtca4mWzoV6fMTKWYLt
	 yQnEQwoOZv6ft5gxLW2fxsfRLwOyTK822rMivfBOn2lB2Sqstt5C12PqeSnpJkWjXL
	 mF7dtdENxHqfef++u2occAVdY/V0fw6CRmhF3igCO496Q28P0lMoK8l8gKMcROUG6B
	 Y+8Ks+48BCKQR6XntPy4AEY5Yb982cWmSnmbvo7aX9WLgHir6hXGCmlRhV6n4wGB7e
	 DYasJzdW4cGXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997BEE77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173558615358.4159.7084185348511023326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174a9f6d885bb2e1129f57dd6a5921eba47c8bfe7ef667e5219fa4463963f861
Date: Mon, 30 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735586153
