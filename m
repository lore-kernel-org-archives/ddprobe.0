Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32749539A
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725578154; cv=none; b=kR+/pRhjGM74UV7ED6LTGubzMlQdWQF/O2owkYb1Vjsu42qUbTOTfiSigvcm+5ruvQTvfI6mCHD5ar1WopUKMkeiWfJ1AVn0HdgCLyFi482hKlcysYnGt7KmIg0sr9tr7geqDaMvWGSStCQa8kCPmRjKwif7+if7/qEowWpDs5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725578154; c=relaxed/simple;
	bh=TTfMoOspaqlVaA0kOc89i2hC5eaJ92pxzsYzSJeJx+E=;
	h=To:Subject:From:Message-Id:Date; b=IINcnIvI3S/Ha8hqfCKIs7IwhvPRzJPPuKKdrcGR7HWoC/XhWpG+1nBDgEDiSuFbB9tddOMxUDQ7aAWQ8zV1iRphM32tJy70LVui3j8ccXBnmguaoAWIz+FZzN9c1jKgkXEk+QEuOwpCQL+CmA4wH1+qHUdXvT+FjPfaHjyCLvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPeweZ+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPeweZ+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3332C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725578153;
	bh=TTfMoOspaqlVaA0kOc89i2hC5eaJ92pxzsYzSJeJx+E=;
	h=To:Subject:From:Date:From;
	b=PPeweZ+sgedI5/e2cbRlEiI2W57iZrt2+3+Wl0Y/oHgngDmyWAK5YmEFl/Q4ICHzt
	 6ZgqcGPNxiUppbBcmMPITYBWgpoggTy+Yt6QO5th+Nu8ssUeMHgZdHGFPh18jSv0f5
	 04QZDhqrINcxJWU3VdtY4DR4qB/y8EbHnK7FyY7ZAE+GH4aSHv1WJvYPLAFgTXCzoW
	 mapx0Btswm5utdBtq//U9Wq6Ns0Y9TO3SOJHpX2q+0kv4yIdQoo5UlkOcare62/gWl
	 pk4IUBNBrR1Y9fb7lZYqN2+hdsrBrXG/ouESTs1QcQxiyiucM+juVoWBt0G7Kk8alP
	 3T1NAha/xOs5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7EFCD4849
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172557815360.15602.1841980972516807489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7fdc35b04fe1a5fbfb21e8dff6fb4a6fea0b16a54b77c6131e39c670935f7e
Date: Thu, 05 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725578153
