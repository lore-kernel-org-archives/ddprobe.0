Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DE143169
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744523994; cv=none; b=rjVpCeUhE+3o1xBPIdFGYKwIIOtGwrYVwtmTfoh52IkLWvXVHxNE4qxRLeO0HOX8iKB3eH+DGRw55Kdaozw7i7kBXEB9G8nkU6C6v5VJQzXW9dPljeOtsUca2BIKnyJUvDxO4zM9gA8F2IXCk58AUBWxOHk1utbyXKqFZw/JOjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744523994; c=relaxed/simple;
	bh=mEljmugt2rDpQkbHxD2s/+pw7EGHXaPxeKtkC6iVrRo=;
	h=To:Subject:From:Message-Id:Date; b=abCD9VLmU0VlWgo4LUzMS7YNym15kDNQEp0uJLo86xGXRW6C7gXJcl8nfTal4MUFO+FC2tBKHj8FqUbQtHe4W4lVNm1ZRt/jVNRg/IqNjKha5wjspXcJruddcL8NEpTAsuqhQ1tuF9VZj7V298hLHLydrxaerpt2j0EcJY2UeGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGi4xDkw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGi4xDkw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF739C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744523993;
	bh=mEljmugt2rDpQkbHxD2s/+pw7EGHXaPxeKtkC6iVrRo=;
	h=To:Subject:From:Date:From;
	b=GGi4xDkwfsAtFZCSHba96OncPh80zoFUuGczbr91tRVBB3WSkeMb0L8FVsmALrptQ
	 84XM8mJqTSWkn1UScL02iUhJk1b5Az+L/RDqsqTU41s8+uSv1s2Smv66d208HhqdSu
	 W5wm3fi2KWyY9UJaM9pI0xQACHERg7sfJXvaxc6Kkv0TQw7iizI2o8VUKwlZcX3AiC
	 plhh3pL5b+3EtqeVR1+r6iAIpyzzS38ferRnx0Ng017l/t5EFA5614vRh/UXcxpQMV
	 KXjouICLgziBfbzsxMoKYDbqMPTMwaLgVtSK9MHmQP2QtvesGwJIkv84JFDwFBD8PR
	 UJQlc/sCi9pcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63EDC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452399364.7328.3490503829121235840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49900bd1e0b4a9a28ccadf9127b5c2733b1e54927785fd415396e9db706e2827
Date: Sun, 13 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744523993
