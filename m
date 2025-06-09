Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DCB1FC11F
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749465594; cv=none; b=mtdcn/g1LAxpWqkMHd+rMxVSQjC+5I9M0OWxbmp1jZJVUiidpqtBdKfpQncxEBvKzLeaoUbjDVkTFnsTm9UNF8jX5vArPQ+US5b7OFSBYVnOXjA6I41HMmEqVBUbcf3gfz1lh/RpLThanQZRtnOBOZZ1+8MTpRAUoI9NJ6tYAGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749465594; c=relaxed/simple;
	bh=uJKyXiTEIcC+zqxZHaJnVVbhlbykLBXjdgsgNgBsIoE=;
	h=To:Subject:From:Message-Id:Date; b=Dd2KkfxXjGS20UmQOshZhdinI64nzRCeGzSYlPeu21aq3YNlqwgijPi83KKXNuQalzKMk79UZLxVRfpgCQQEML59UEoju63nhf04NMd3v2JV9IDWn8AFBK5/v3I0Trtj8dM3rShj9QE6yiQRVrFgTWc7AfvzPPUwUwSUdEKGVOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QG7T9DrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG7T9DrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A291FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749465593;
	bh=uJKyXiTEIcC+zqxZHaJnVVbhlbykLBXjdgsgNgBsIoE=;
	h=To:Subject:From:Date:From;
	b=QG7T9DrVoMpRymGbAcPxX+KZbNqUvGL7KmGL3gZbYoHPNvh21RB2/X8buRuy93S+J
	 Yn+VHMAWQKXDx7ZkS7LwuXqIUfLpWwRh3qkOPM4cd5p7Kw5/hZJat5LReX8fQct1nK
	 JBZLL3WWENh2NjfJOtiMcIi9BM4PHYBOPnXaevWi/QLYS8VZO7+shBbGVKCq3KIYyP
	 gEyc1Hi9KfQ6L9vZ2ngEaF65EnUr7fSGlDodafGfdAOJRW0vWeq38110xquoTuBTRe
	 RhiIgELgZhGXO3Ij6nBIKCVKTtaRPAnujA7JR0V8VK+WcpuXEPsawKOX35SUW+4WfD
	 UTJ2xow7qLMeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923DBC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946559359.29768.9304546913109134097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52bea3836bf0fe8a61f89936753df7a0c27da70228b6077abbefb7fb02b04b1
Date: Mon, 09 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749465593
