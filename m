Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677FB493D5F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789051234; cv=none; b=LRWqRRxtAFdShFPXcC7GgJmTLUh8LELcBwKqDNeUDN032SWYZ+uB4s1xcLaqzTvJZfxvNK/vB8SH6dYco+8R8eoe0VjqiYsZfyA+dd8vu6Dea8/400LuAgLJID5RXiUn8mbwv3ElpwSvkKEbEoHVk06rDvxcYSJI5xGHg4xm0Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789051234; c=relaxed/simple;
	bh=5k7pou3ktHWdewCDMdGQSW6yfZCfcDvt/cQJR9bh++U=;
	h=To:Subject:From:Message-Id:Date; b=i3Z6/1eaNjbzOLH4nG3v7N+WbLpL2ac5O94W5FL4QpJtg+uuwyHIe0IR4GwpuikGr14G1tFJYMpOhtz5+AIFIfHkj3eYxZ18zqkfyzMA1eqgt/TjP6wj8/UnvXvsaQoOJYogbYU2WBfjCPP9ynoV8dUc8y8fEGEyKYu5YuKsfts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k00LpRy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k00LpRy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFDC5C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789051234;
	bh=5k7pou3ktHWdewCDMdGQSW6yfZCfcDvt/cQJR9bh++U=;
	h=To:Subject:From:Date:From;
	b=k00LpRy9HF9ULmaYvTJ0fzEouuG8VE6tpRMwN7f5Jv1u3xVxp4ND8BiITF2Gx022s
	 459RBCBeqv305R4W3B6ne7VXurGc8FQVpLWINjAbOOpg7hld7Fhv+MC2VeE2tyJeUr
	 ohXG0IwOyPubMbHHs/AX73p7rZQuXqemDTmDALC7XB+FH8GuwLgztUY203PtwsNHhH
	 wuA8xmjHSDp/jf6nfhtApCKeQD822fs/W1KDfQ+NyztZWCA1Re66xx7YzQZp5bGfZD
	 Zd3IDfUFIzmTtGMSwCl5t2PruZvUZazEA39uRwBHcwcXKYHGu/Cg9BJaS/k+JCy4Zt
	 +fRjdRA5hbyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2005C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905123378.26773.16592950866739847929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d04a9e82d16ffbe8a66dce0024f5763758441a1b1f6e4cde2c7614f3b66d6e
Date: Thu, 10 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789051233
