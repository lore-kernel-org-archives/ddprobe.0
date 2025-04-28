Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342521D5143
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745823594; cv=none; b=SRDkpwyWDKodg5cAgVNBJVZ7FwS8EC7OdgBEtkMdOfjj6qiKLWZTFlUEYtEc4UExZlFz79NoDXa28xKE86SofCN6pRyms3uT//Xhi9kBkWGJzPn/xrosVMlejnEwwr/nHu6+nGr5xqaD8aNmD+GZnZjAXm2/Tkdwqqaz2TdSc/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745823594; c=relaxed/simple;
	bh=q7GLns+5JMgINowbUoYo7rmS/ywPUZFgt4p8Hd9bVws=;
	h=To:Subject:From:Message-Id:Date; b=MT5gxF1E2NVsGCuNEZlNDrsp1cLgk9XFGbBWqyywl1ieZwYB/5ltpS4H0iNo02bRpQdeC0LuE2rvZiO+V+CfrcdjNY3hqwmY4cmD3fW9qbXgPJpzfreqYPA58LGbu1xqiKuKTNaUi39ouKvtcUzQxg6tMHo4yTchQfFsYEdKrIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDfu1PnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDfu1PnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED4CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745823593;
	bh=q7GLns+5JMgINowbUoYo7rmS/ywPUZFgt4p8Hd9bVws=;
	h=To:Subject:From:Date:From;
	b=WDfu1PnLz6CnyqfeVcrf3xHT8oXYtxCa1fI6P2c8Ai/IHDQW/cEV6Q2JkP68CpAux
	 XlUxIP2LGMB0EIK4ayFa+PokFytjHSwCtZ3ahi0/Pr8EsBbViZBVMt15HRjHjAj8EC
	 T3OAT6YW9VLX4bTDzOGhFvCfosbuoEMVzCqAmb/TwU1XCT3Z+YmAX3Vay54XOXbSZw
	 hD4zm40hXgcTGVLokdQWwB8lXgXKvJ5E+rrFnuAnQdHa3W0eD5mK4J+bnbmYBwQ5CA
	 0jIJ97tg1gbCiq52WB0UX063pg9TA6GSg7TjNOBOf4DfJm3+oANZexn1mmHd3kuaae
	 VywxUTw9evUow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9040AC369D9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582359358.24426.15533461317740676977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7185eddf53b2b15bbf4fe7ebeea373d1664be23b82c67fc3d94a38f5a2e05225
Date: Mon, 28 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745823593
