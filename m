Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF93B274FD0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776718054; cv=none; b=B8Wpdi3+ZBmJwQGu0CczFdr8etG65S6JMg1zjZ/9xbCGu0HfHcpTPTtXbO75aeDXY+wYuv9Y2PjdRzrJes0SSE40hLOFQ2dyMU+2pbHa68ebr9aZJRXAk8VdEZg9qlYIAtdHa8gKgw81ERvGsgtaM1SeLHot1sZggJ9w6/3wBFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776718054; c=relaxed/simple;
	bh=92gVgYi4ATATst6c/EbMJnW4BfUcMo7TC/YYAuXSxrk=;
	h=To:Subject:From:Message-Id:Date; b=itam3lLy04EeczE9jjET52EapJOrWAxw5AAdEPwZbk+FmF9ZCM4snPTG7pFqr31E1aZccNyMZJVcaJCjZBF4Tur95GPR4oqNn57TKb9u4YMfLiMz1yDtgGOanb6AI/JJkLAXrdzl50K7N7orI7iORkOMVjaDKwztbRiC9Vxk89k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7eJY3+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7eJY3+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2337C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776718053;
	bh=92gVgYi4ATATst6c/EbMJnW4BfUcMo7TC/YYAuXSxrk=;
	h=To:Subject:From:Date:From;
	b=e7eJY3+VPiWc3k2cocSAumu2GlRjtpN1Jb6LaQQbyTIcwobev53sJLqNUtSDxn4He
	 b3oV7KW2PGwiiRsL5E6kUzaKEmNzhFMOULnr5wM/zG8Nw2FGEBBfjcQhcwsEM6wNNF
	 QbWf5FyFXc/QwWeRSjaMTZFh4LL4N8Ye5K4rXpnzX1xi58lVhYrkW01bxvB1bx4FES
	 36t6I3DutvjnfJULnG6I3h6Na2ACjEh3Kfi8MrZbY0YgiJmmtqq5AP7GZEiisv3kRK
	 vemV3zEmLSkcBO4GDjP8sqhQwSIO5OAyvj5c5iRdDNkNx2fypQMYJIzl9mk0/O318v
	 O0hdR01PGbnig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FABF5A8C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671805371.6585.4140192282058825804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb87c6b9d99d23e965e48e28782fc98f91102b1337b43f5d28253d5a64f3b0d8
Date: Mon, 20 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776718053
