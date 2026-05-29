Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343A33DEACE
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780056154; cv=none; b=CF+S9sBwZL+PZqsGpUtxAdfNLIbhoFH0P1ooLzs0c3+E8yaUP1pYJkTwXMLI/c5eEwX1qyK5PwkHyW1q7Ng+bGo0JtLh9OyeNvwBWirhVBwDxY4tLIZIuGNWlbFJSlBnvWgIKAv0OONga/zxtR1D9LXwceBkXG4rl6bAq3Qyvg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780056154; c=relaxed/simple;
	bh=UNOYs9THARssVCmkkC9+ajTR+8cD15m8Qk9JqzK6p/Q=;
	h=To:Subject:From:Message-Id:Date; b=QuO6ydPz3bBn6JX0HNuqOcTMzsO0pK0PZ0XUqVdXOXMOYBWedKY7Qnrt27lPABPRO//SDWIvbagbtqRyajKoO8Qu4TP2D/YFMIx8q7XNS13EFMkLj02kjnAv47WGzQW2HnhRp5pdmolqcHntN9q/pXaD8ABZv9RqevSjVB5C/uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgZgaL4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgZgaL4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46C4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780056153;
	bh=UNOYs9THARssVCmkkC9+ajTR+8cD15m8Qk9JqzK6p/Q=;
	h=To:Subject:From:Date:From;
	b=HgZgaL4Qu0PtLEUIJ4XL16GQN3rbUBjToWu0R9oSQYmyDjkfSKUt+4gTpzpz1Wp+N
	 st+UcIuIL+YebwtN9a+Y/5qRV2vZXL8+7j5M7z8lDugjLfPIxVuEOAuyPNUOPblsLq
	 ANiV7BCQ1X8hwct0YVZbQowJs6HjyVhXnBJd3UrMD7S/POfout1Ul5nC2k5RRPVFaH
	 3KMmZOTX4b8ClxygA/XXBpyKzbgLn0Kl42JavWE2Bwma7q7WZkIzwwiND9PrTUm9JY
	 AhA4bDvk5X5cwfSO28RCF2trt5sZpege7/aebPsfj/NzEatBG8rq3NSRQ7ownvkWIp
	 /G0wkEk+dwwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F3CD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005615369.4900.14857199446704511871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3fdfda13b1aa43e1f53bbe4143218e782ad0a4cf97356c0db9cbd01d5581b4
Date: Fri, 29 May 2026 12:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780056153
