Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0360E31353F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757602195; cv=none; b=LCA9BBF1RPVCph3uqBDtgPzjTvBOV87RTHUDoCgXiWnsbShZ5Ql13nNU1QYZiJ1z/E+dVhNV+OZJ3R4YpJ3CYFf68I+zBBYRdpXSDPhFR90gzDCV0N44D8D0fXkfbWWBR05CrdFUuqxy17ihsFVfdc4hWmvpjsL7eG1CzGvDwN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757602195; c=relaxed/simple;
	bh=cANFDLclBxJbNR4sjOByHjeMxpz9kHvVgtWsCW+O6As=;
	h=To:Subject:From:Message-Id:Date; b=PYnvFH/mGEDOSh0w+Dc65hnEYFS+DkDCdgUNLUopDybhSP6xdEW0X/Wmck/wYphKlisqIWpK4NXl/WVqRY/fh/X9PB+Uwin3xicWZBUpWDsz0WUcNgY5FV4U8ERr1ZH8q55sv7OoxVwCygt04PkQT0nONCIGHq7w1qC0LDHo4co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LS9efyqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LS9efyqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2EAC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757602193;
	bh=cANFDLclBxJbNR4sjOByHjeMxpz9kHvVgtWsCW+O6As=;
	h=To:Subject:From:Date:From;
	b=LS9efyqAB437kBJZf3DhKwl5tiPocN4vBABuA8Fwa6FkfV8O6W22+mMLJ0Sc99nAU
	 QpNJ3saQXDi6+QaRcbnG81xoKKZ62mMTRxcQ4azRkrpomcorcBbgQz+/tDE1Bo6IDk
	 d7sHNJchhozNvM4hwS38yTACOh+a8e4NvDyr0Fk6M0EZM3CuT9NYYMqrmSsuAZ/ZaF
	 6uROIIjiq5YkMXz8NfVIjhefq6cKlTsoY00GY4wd7Kg5x/mnfaINn3+abIWvrtTrqu
	 0vKdBIF2xdUSYEOb8ljRSMIK8bdbjfv4mcPyGim9YXKkeXchBoyl5ANrlxlNzD4sfI
	 YoNQhRVtVW63Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF85CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760219357.12428.14480002550262458714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2255ff923ccb2c46a47a25ecd15b51cd0a6ac45fe6aced7c7a957e30f8ae5260
Date: Thu, 11 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757602193
