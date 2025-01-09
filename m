Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FC118A6DF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736464554; cv=none; b=TvBMPIsErd0SgTPLiwldJmiz5AGBkxJE9jaj5mYVBoRkJFfaU1++0519+VuKT/JH8YINPZk60Ox01cy8X5T0IswmWdXvU8xRl4MGkpfFlRC+bs/MHiqHw/9EYH3EW6DxV5hRz2TysksennJuPT1WCzGV4gb0RCZk1F72n6imIn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736464554; c=relaxed/simple;
	bh=vLpftSPUQXYIIz52MmufawWzdXMDeh1quuicJRVbers=;
	h=To:Subject:From:Message-Id:Date; b=XTDBcBos9Co5OIIcRir4pYGCo7MhYch0Ol9KyZQv72gKosrc+hCfYO6X+5KbDj0uZa7HuF8dDS0Xd2IMUXxhc0XwdZJR+IaDuTLVmB3dXG+XsXAIotdgqQHU+Dod2AH6u6C581alhmnrA1i17I7v25MGO+Lx/6rdNXtAMRF0YW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbemfGOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbemfGOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF072C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736464553;
	bh=vLpftSPUQXYIIz52MmufawWzdXMDeh1quuicJRVbers=;
	h=To:Subject:From:Date:From;
	b=EbemfGOfvH22VDNkcLIOREzn/8tOUj4GVDMen7/S8Q4CNHna1Q6nxOr52LXrW9m6K
	 Ewbwe5AaXW0ST9op0yVjLB8PEAjuy0hyMvFh9heoUV96/oPXlcP7x4QQ+75/B7mQZ0
	 66iteQim15t7PozFZ/CdpG4i/dSzD9zfbtLU0GBsUn6mRb4h66zG4lr0WuOkGsAg2n
	 iozB8s4aw32tjyKJd1kgUarlLUGnCCHh21gUFML7rde42jWOoRs+umjsRBTmKj317z
	 46fqHp7psPgkY8Lp1M5iXZhhMIQ/QM4+ZsZKwZ3pqNfsj9w61cV5Ug/dClA2jHg0t3
	 vulX/htwuIROQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E451E7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646455361.20169.18135792537490920715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6754372714054018d71451d93ba15827d4f7c53b523f895623fab9dbf72203e7
Date: Thu, 09 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736464553
