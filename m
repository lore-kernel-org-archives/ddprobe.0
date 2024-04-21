Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754D7DDC3
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 22:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713736823; cv=none; b=caSkiLJumw19HUMuxzefqxdUX7zhed6+dG01hHsWjIxDlj7MXJOLkVcNqpjbhOsCofLLlnv7m3FSmWrDIP2Xo4TXmfeEJVy4xANGBNBwW8ffxhNOOPOC4OxKHP0nz03Zibnbd0nHfxRu4Ejsm8FPbprcOnilqEW2rkHBlPbxGSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713736823; c=relaxed/simple;
	bh=kFgWhmkO0F8l87udO21lHGCrDYKH0Vgwstq9bKUQwEo=;
	h=To:Subject:From:Message-Id:Date; b=ChQ1I4dO3ZD+zk74Fi19c5j4drCU8Fbtx55bp9e1trhpNJsof6Ri8q1NB/Zy1mQdq5xn/GcE5pA4QN5clsSRIhhdFR2Ph8vbLvsr7bFfTZFWUvwpuLshqnFLXuuViDnWJs2ckcX7x8RnHw8f5BExKec0Y8gg1/9NjO1F8xnRAOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr5jcMoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr5jcMoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B24C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 22:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713736823;
	bh=kFgWhmkO0F8l87udO21lHGCrDYKH0Vgwstq9bKUQwEo=;
	h=To:Subject:From:Date:From;
	b=Xr5jcMoolTYTfZIgM/YNoUme984Rsvwerdz/U+BpvyRbRRyc5fHxsmDWPR4nAdBEM
	 9VbawSKj7otxskj9xC2InTy68yfo2mGMcVDdTg8PnXRaPIZ1nzeGy56hnPti5LQ87F
	 zqNStuaLS1/n4RxpFW8WdqMZUz25c4tHJ+hxC3iYzlNw1qRZD6y3mM45etWa86tVlf
	 f/F9tmaatzbx2gzzWMUe3lC4VeH4nxGRZUHCng31edirH/w2BTezQ3msxQ4hfOpUXL
	 hMue2/AZjOm+ck0GV2rAoO+P+3lxfUX6rj6e8y65dkt0088SYOS/ns4fQRjCizwBKq
	 374N30Qt0PsDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB78FC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 22:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171373682283.20388.13631710114189295805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e88b4daa872714acfd0124f856894e27904e30677a1c309258c9d02bd443cf7
Date: Sun, 21 Apr 2024 22:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713736822
