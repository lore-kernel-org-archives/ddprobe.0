Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB942E3364
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741919934; cv=none; b=gd1XToF804JrfpocEAuftJ93Imcp19LuyiBI7bkZDpSvVLNwtKhHerU0n6XUmvHEeKfaZFkPLboSZhr+BD9hjS6/fVY1iRliESfjO/CfbJ6TWh/JmbhqFgEQPYD++HBkQI8dPXC0UIjOqs628TUjo0rxcesg9S7iaOzIqUQT0eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741919934; c=relaxed/simple;
	bh=Ema2+vEn5fp88V+fzTduv9TdIbm6pYqeUD5AAwDdlqI=;
	h=To:Subject:From:Message-Id:Date; b=KbiIDlOnP7e0oQBfvplRTMmTXWaRVh42yg0BOuMJi7JB2NTN2U2sTTtM94RfgFljIewIm5hc79jnFLelapwhXQNjt94sFCBUUWBk+0r66p/rCl1I0PLcG/1/j5Iv2KuYIlzB78b5UvnIRhqoVehb6zCCaJc4moY/zE/YvpYqVU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRWurt2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRWurt2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30D2C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741919933;
	bh=Ema2+vEn5fp88V+fzTduv9TdIbm6pYqeUD5AAwDdlqI=;
	h=To:Subject:From:Date:From;
	b=NRWurt2HUODEn7b2g0HRi+iX+DVjW6fO/eDQAUr86h2I+pdCbZKdhXWDTxNrg9ff8
	 I1sq8k2HwULMjOejIh4l91Gw4Rf1+Pa1RRBN7Ka7DOL2m6wpvZd0+wZHCI8gRgBW5C
	 eRdsqP7E071Op9tEJtBnfawxBUvy6cAHJ6XqD52xCsnkmWeGGSzWxC9k/G2GdGbz5W
	 MS/bIYag1w+2jOKQw+fed6LU1zTNhk8/CMnwa0MVimBnqrn40uKHqWYv2RM26YRwzi
	 tRe8i55Qfp8KK4bCsBDTHkn+yIFPrEfZZIlwtFpvIrMAowifutrY3Ce71K0k7O7Z0M
	 GJeWSGZ6W326Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A805FC282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191993367.21111.12711293928944911253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc0f974856eb0cea206953ddf44c78f52425e29f8dca8c6cf314fdb47b24f1d0
Date: Fri, 14 Mar 2025 02:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741919933
