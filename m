Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5760E1FD4
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786077634; cv=none; b=s4FjEFqLrhcpyOZYX3iJhdAdmG5y/zK3ffkSLdY5xU8m0JbOmtQnuSb080NklR13LxG9LUzeZtwol6nlyAi2/GlPaSZrnMGA9XBf69Ek6xeLg292FlZtTfZfwu5Lw7qbCVcJxyAk54oJPQattMOlgFcKFwjJo9teJlfU4jCjrIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786077634; c=relaxed/simple;
	bh=NEAVejmsGcIedPunjDPXq5BpuGAmuaebJcP3u8pbBmY=;
	h=To:Subject:From:Message-Id:Date; b=IHJe/nw2XMpwRjkvqm4zOpfNsvUw5cZih1DnsTbHP1aMxQybIULUxSvH2Haj0GVS2AhCn+cjNlNDzGPblwuV7gH+ELlkyYewhwWVrMGnvVo4jHD5zNIYZbtgWdcD60eEmnUKKT5+yUlEZmY6fZCh9HvzM8+bUyunbtt7tqCLYTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjeF3k2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjeF3k2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E21FCC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786077633;
	bh=NEAVejmsGcIedPunjDPXq5BpuGAmuaebJcP3u8pbBmY=;
	h=To:Subject:From:Date:From;
	b=RjeF3k2//GplAMKARHE1ywpwih9wG0IezQRmg9wdsvznxFYEOKMCu7ahh0pJmJcvP
	 WQYnCBkESr2G7ulDk51ZSpW6R5VrZNEwdFX3HpjIIwPDL5h0t41UWYBkrZGZF+8nev
	 O0jnPMSwrK90MMqywErkZLpv1hOUeJ9lU/X7HdVE67CkN8R1gkED9H4rK6VU1R6nTk
	 Trl/lLngGXUr8XCBrTCMdrOjPMmsKADoKPaV2419o9fNMJhKzop/2QP9JGql4mV2LT
	 JzcKFHqxzd7HtMzJVMoiHiVBb70/JxDsdR1JIHKaw1cJZnPaT6QetSVoEL4s2aFVOb
	 FBYb/gXOomh8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA64C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607763373.29940.12901655132480703108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97fc85b904352bb2b9e9f44e41770284802db2425abf4e7a870d73c03f227fb7
Date: Fri, 07 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786077633
