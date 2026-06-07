Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430EF6FC5
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780794274; cv=none; b=p9H3hfS1b77K2QQSOsk/CXxX3CKM3yxVqoIpS9kHiuydmjecLAbcEO7sRdDBWQaC5fBgJL1VS4B2mRnV7QmaPzgIK6d/TgNohioPYDGCpgO5tr4+A3CZV4hzJfS8tkBx+mpuMBmghYLtRc5/NoUtaQoOCMyZZ/G+V9WgTwL5a48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780794274; c=relaxed/simple;
	bh=xWV4zL4qybwBpFrzD/6OPi3wehqm6WxoJq6FfHct4JQ=;
	h=To:Subject:From:Message-Id:Date; b=KS9rvfytCLK5QGG6X1gWUKQIc6BiYdRazJVof7LwAivvK58AsGu6E+O3ELsy3ve8NH5FK/400k3yBZaS5gH+YtVXQtJb3ildaNKljTBOSKMOYbwCqSDVzMx+pgICwa1wMNPovI7Tl5cMz8Aup+0NsFad//1AELIwoOatXCzDkow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8erqqgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8erqqgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D902BC2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780794273;
	bh=xWV4zL4qybwBpFrzD/6OPi3wehqm6WxoJq6FfHct4JQ=;
	h=To:Subject:From:Date:From;
	b=p8erqqgnTAZ+GwqApCHD7RU86MeJAB3BiDjr2l2T+29dc3Z2MA9cP40ObPFl5L4Xp
	 GripAe2ui8rxDGMSWQxvo+1o+kxLxiIthZwovIdQPu7euTOu0WHRJQu7wUqv01KTq7
	 bb3W2eE593J13YBzRrtQ/sFQz92VEwx9QWwNCRP/DB53BKBz50aIvVPfJstDhiLErB
	 8OtqV4Gg8/7obr2nJ1zcELbj3wxuRz3ulQr+l6qMh6pFe484Vaj+8zliAwu1Th1epP
	 UvgLWTuaXb7wmtxhLmi09A7OINnTp+gWOamdNF3NfojraC+X04qVrtQoVmfn5XnJPD
	 2D0o2Y2YQdn/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA54ECD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079427369.8884.13852545698556870906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f7306ab8f704123ca383049f6f86023dc2ebfba703fe2b3e3703323c583fca
Date: Sun, 07 Jun 2026 01:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780794273
