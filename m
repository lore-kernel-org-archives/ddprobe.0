Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347CA347BDB
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780917274; cv=none; b=MSu+N+RdkkQhV769x0Rg8NSINWgiswNTrlxrJ4PeZ+2oA0aOWDhWnV9pJTIau3OlYmPRws1XM3sGEbYKqLNR3f1Dpl9rR2HFpFAli1XF3CPdRtxl2aEVLQkr1cmOZIzB0W2OP/uqw9xrvyzZ/Down6QW0iUCuOMs6yly51umPvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780917274; c=relaxed/simple;
	bh=ukHsxBUvByjV8Kxp1vQ0yi/aTbv7UolKQJipwvJt90w=;
	h=To:Subject:From:Message-Id:Date; b=XxQsEH3U9Hdfsa0OE4KbmPSiWqeRw5fgr+RbS2oO6zA3olPh8MbB14U7/Wt19rbN9197KpcdUeVn5lcdmpA62t6qKaWJywkEd3h1QmTFYNGcP7L+ma3KxUgj5pVAXPyOoCgjZR2+z6PWm0ZIPwUSYuTEfK/AOJBgW58iIh0s+Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIgbq5Sk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIgbq5Sk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62B5C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780917273;
	bh=ukHsxBUvByjV8Kxp1vQ0yi/aTbv7UolKQJipwvJt90w=;
	h=To:Subject:From:Date:From;
	b=EIgbq5SkVEEbAF0ojYUPH76g7lOFghRYxQtuF5B3rvdv4kD+OQOh8oZkCQ0xH98QX
	 78hKyO80c1ImlxOMLI3EW8aBbUt06f5pc56VRHXcbNkFni6jVpPXxuCtCmQMJE0gzT
	 Zq29NG2n2z1iUqeqDurnQylOkZHm1WkjNdKmTWwEGg3yEdlW19+/IvcRb5XrfoLtDV
	 9aJL/JgGxyB8BrSRq05Ju/E6WOQl635g2UqbHg8myVEUwILoXzR9FPSNAEdhUnlbY1
	 IYhyP+aTzz+s/hY6ut3aAiJwmfKodz9Jy3qi20kdjm/SeJGj/JxPWH+AjkWqyYhf53
	 95/6LnbKryoIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA323CD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 11:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091727368.6513.7944299811791878711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3a6e397902a5857604e5ca9b44a88d3ff09c50207e357230b3e1c13a39e63d
Date: Mon, 08 Jun 2026 11:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780917273
