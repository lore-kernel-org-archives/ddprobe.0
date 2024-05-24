Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D1F84FBC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716547403; cv=none; b=gSodzE1HuSLU6jjMdlV8JjDLPOAoV9xC4bdoIKU06CFtGn4YWk5Wn6EVfapUfz6M0HPp0gsNikOWFYi+y1Bc3sAz4UsJk/GfeSE6djRrphfv6IeN5/l+HLxUTWaR2nWCDYlfUpnN0hem/RdX0ivAaZyidJQby9HkEq+1ZKxX5PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716547403; c=relaxed/simple;
	bh=2zaE1LL9bDz5Raw7FpwuUCARhJaCdmlHeTe0fyoKCvE=;
	h=To:Subject:From:Message-Id:Date; b=GX0jB4oy4Ro/JCT915LRPlvOR7yjmC3LDQlqX6+1Y2wk4xGGez++mNOZRmo2ZD9xXjx5AGVLBkaIlzWLcb+YZHZ7mJmOqKwrAYs/rJkQQSRWVZquIDkrgcAPKZD5AY9QOpc+ObSgW5uE3zWLVLFzwF6Egydn4TZN8oO1hTKl5c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpMPEIOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpMPEIOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1C9C3277B
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716547402;
	bh=2zaE1LL9bDz5Raw7FpwuUCARhJaCdmlHeTe0fyoKCvE=;
	h=To:Subject:From:Date:From;
	b=PpMPEIOjsSy9TP5jJPPX24jnk6DWaRDIQJEOhGhu2MNPF36+P7G+Mm7PhIhrZm0dy
	 aEsUIYAGN2uqgawws8KhGhTgHxFp1FTs5NMFH+xlb1yynwABDGeVqgE6wyYiWLnQoH
	 RxvcItgncUG/4swdhEHvI03KxBE1LLgPoTSiyIwBf8YsU+Uo6y3TUisAMi2G/9SElz
	 JKzOKEbDYpvrzvZIYC1/Zl090E/Puur2texiyqfGJ8kwtaBkby3iSXq3VcqSB9KB99
	 eC1yIH4jxHYmGqjd8H4HnHJ/9n1oVjLZ3Ml/VCUmB1hlZKX4RwsV8EIfAUlvA7rf7k
	 PZTCO0bJx/5jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB92CC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654740282.27184.1462104291432222479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c0c491e8aae801a521372548d55914a3e39c4023f5efe959f4a9e01f264aae
Date: Fri, 24 May 2024 10:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716547402
