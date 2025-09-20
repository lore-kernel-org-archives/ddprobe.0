Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3682236E1
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758367795; cv=none; b=TdH9t9nZppuM+MQ9Vtj++oLBHKMeC+xOs01VzUWpjpy+Fbch0wgfxOjoA9NK/iRi2Zmgy02mbRZGLWTdBvVEeydd0lcOpOmIBxjuWKaCO34bP/S/N0cuhY5URt3/vyzEt7zXWD5YwSbthjwQVQhCHJMaI8CBNVgpVQDNN9/usR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758367795; c=relaxed/simple;
	bh=29P1WkXp3P2a0HI+dxSByqdxdWQc1HFLh1wJs3CJWb4=;
	h=To:Subject:From:Message-Id:Date; b=NtjgnIAzuo5UHi1eGpSOOeyAw3viWySu8deYXWNeF5PpivfFKWkfFS321f7T0K9ewF5mlnN4Vif7C4mek1lJjqODL2YdIWROMLW1x9psnZsMjj63P65Gomcgc6Q12DkN9Z44JXXm3m221w1eeldT958t1RXIDb62cVHi+lj8oP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A823AgQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A823AgQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA623C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758367793;
	bh=29P1WkXp3P2a0HI+dxSByqdxdWQc1HFLh1wJs3CJWb4=;
	h=To:Subject:From:Date:From;
	b=A823AgQoylp2n6Fzz3gTjcqDcYVmXIbxVjRtxohWl7WtRN1LR3JB4SCJbKBBiRkhG
	 Kxpd3dsvn3gIEz96odRaxqKo7JakdKV3dMCN+9LjGjlNncS17jMcJMxh3bAF5Or8CH
	 3jy7YAZl0StwogKYn0/1qYSYLGKIeISjPV/Qtmf2YXJjlhLmtZ0GQUlkwx+UWdZhkg
	 k+EPxbhgf+l8ZAwXyGgoKUCfqBIg3KZER9x7cfJqjjW2YGmhWTGhwSBCLTIsxxz3GU
	 xC/nMe53hyOOmlgReNSB8zRIRPPxL8ebOmyky3nEYz0lsM07qKKCRjtFWqnJZbgsVk
	 6u/t/q3VwHuQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962C5CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836779358.16920.1855604435563225242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4007ac26d09573e2a824e5d52050fdb798a263f1b59b60b39ef5ac27dd337295
Date: Sat, 20 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758367793
