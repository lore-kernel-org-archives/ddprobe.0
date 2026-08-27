Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFB5361657
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787832634; cv=none; b=YPrKMTNbQlGotM4YP3AUuBbq7H9BWButHAtaZO3vw3n7V1SwxYSJwlPQ+nJTi5ki/JO0n7sFZW2a//V/Q1VsmYOFHme22/vE7Itvd2QDoZM8/5M/muQBM5ZITdZBbgTKnyJcM06iC3L4I+Df4LKKU5WR7bbWlR6ARjh4hclEI+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787832634; c=relaxed/simple;
	bh=74Afk4WxgJUa+AXCzShO8vfik+I7W47mBS9swRk6ng0=;
	h=To:Subject:From:Message-Id:Date; b=oOaVwqxwuMgBZC80K+QWPrjQ+VkJMfiwp4HAV5yHG/2EiyG+ZvMxJgwOiTLg4asthdI5ePdzofG5QCVt8fpgm/RKURtiEhPZL15CqBdXqk5RarEp+FHoWYKmnU8Xw0xvka1KH/BKW0nvIkFxZ0owvLHIDvsSpPgsnDH1U+hH6Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8dGM5tL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8dGM5tL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD522C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787832633;
	bh=74Afk4WxgJUa+AXCzShO8vfik+I7W47mBS9swRk6ng0=;
	h=To:Subject:From:Date:From;
	b=l8dGM5tL5owDTNx1ZdULUkhQtA3eHAqBgU1BgvlbwmvmKaAMoyU3LRwuJ1YM6vXmW
	 /5g45vSGgmj9Ewv/RWY5sIzTibneJBNIapeisgHb0oTkN8swLU5TxXdt+Kkq01siT7
	 kqgVr8sjmBZmqkGkwk+Wbpx7t2xvAHIrLdRwLsAxY66L5+oyIkSK4QekMjcLf8ZDO2
	 J+M1hiFvQGLcxRw594uw39IwGINt+9vZhfl1+m+d3u9OfHFbzZysI8489SSPNEhUpp
	 9rRLzCnpMAopOGAPu1EwLmoU6Lmzb2YfAwRUU1/ScBdqsZqtmajDv8RvQKGedgoTMO
	 bXPNX2ozGY8sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE8CC61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783263368.5211.6229445373953598764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf956d754b1455de3bb235e75dcf96e193980789f85ad3a0283fadb33e0c051
Date: Thu, 27 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787832633
