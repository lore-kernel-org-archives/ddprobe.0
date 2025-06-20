Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161F51E7C32
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750441794; cv=none; b=hmSFv8FDpqGGJIMlARu3BD08cEsOX66vkX/4VbS1R2oGj9CtHFd8jyEUuUBx6xGh+7nXicGv5Rk6MITsu6822srZhMXmE3ma8ZlQbB0636eTM1D+UzROKS4XOwtwmGJ7twURSOYivROoUynJuTzd6ujGrHE2PNgRJg5W7fX5OT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750441794; c=relaxed/simple;
	bh=g3koSNeFh+zPiT6QstuuZULIToPM1D+TXlzbh2ECn2w=;
	h=To:Subject:From:Message-Id:Date; b=LLSwyPSaVpbKOhKD57muWCLMgZBrbhetaVKt6Lu3T/EwuUUZkCpzasHZGw3JBTETpB6xhqhO4620fD7uuzrwxFy7XMgxQOFemz5cCC4U24FU83MSRqdt/nGzIYoBl5Zkw+dtOjRBQI5S6ffuybySIscd8vJ5vEU416iGDT+XgQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOkCl6R7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOkCl6R7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A038FC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750441793;
	bh=g3koSNeFh+zPiT6QstuuZULIToPM1D+TXlzbh2ECn2w=;
	h=To:Subject:From:Date:From;
	b=nOkCl6R7C1RcwUXeQuhzsORZ9CnyLNKJcZzGLBI7E8zwM5fmiVKGUn+ZJadwzWAoD
	 Y7SSlsxcirJuS2EV/Gl3zc5CNKtzNFCIJiYHsvKBtM9gThSwQJQKeCjTE/3yWEi8m+
	 ZPP/urKt4PRfgDfkBdBOFDIbT22/Q4mznI3HLXriPS7G8jPuo3cn3y0OYVV+tpl+iz
	 UY/C3E6fG4nIXEJ9nU0QFc0rqJqFro/VLj5JBTIcGhNr7N4JmPs5ktAk+Db3bAk292
	 idSCkvdplAIFxbhTc6zQRTHAZRG8gMGxMfox/UPrb4safmZKe+YmRUKOmcvNVzlcYB
	 uUHIkamo/0j5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F219C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044179357.20549.11173812048076601070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059b369ec2bbca7eff21d12788b64d23752c1666dff1c53867cf5254c8b66c50
Date: Fri, 20 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750441793
