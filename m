Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E4D635
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738527954; cv=none; b=i/eic+/DbNsE5/QpO0G8NjUHdETyChN83YPyG4JS668tp48sWmGJ6QP76FEfHiamlMbjzx671xRYFG9wV7dM6Zs/bhBwG+aaHgE2BvEoeFPLMwVPujECDjdZiCbJWfgBWsO73YrshfFS5cdnZ0saS1PZtzGu/WDVAIoEbP7k2iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738527954; c=relaxed/simple;
	bh=QjEdX8K7/cNyE8wRIytJP745oTUWg7Sx5cYj9YDKHR0=;
	h=To:Subject:From:Message-Id:Date; b=sie7qskhfhZeZiHUROihNdDZcMD3TSv9fp10QTwFqZmE70oqL+XlFbn/uv9P3VAgSfw3sUDA9EuUPnZpZO0v4MLEw3CGn7AdasrhdyucjDJQpxibHn1IfHZS+Y4DP7anOQjl2dXeHvQ4Ma0Rl6Wx54APCATybnC75TwLD6Z/la8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxci/eRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxci/eRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6E8C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738527953;
	bh=QjEdX8K7/cNyE8wRIytJP745oTUWg7Sx5cYj9YDKHR0=;
	h=To:Subject:From:Date:From;
	b=kxci/eREmFkHhb/TT/b9gA+vprb2uQLR9pd75MgsaYzNbfLhw0tP2nW23wHbBLHMa
	 6KoVqPf1L+a1Wzqmi9kQ/y5KutMWMeE27Ms/cHk6xRNc8Y5zIZO1fJW94sMA4CrLvn
	 CDOTwk+W1RUz8dlrWicoCMstyvaCjEegnEtukeEA7RzLW1eJWV176R+P7xSuMMRyu7
	 Jc7ZyKo1DZYW2bm4WiQCQFNHawBTvTkVdYBKrhK6UnUd6soOtgu6OFpEk1E+8zTD4d
	 JP1PFlhOYeq+rnVmo9zJjZlRAGN6IhrDrroHq1WJ7ZS6ZkSdvrJTafJ4Xh4JsJljJE
	 HYAuEgn6aTRjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AACC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173852795363.30074.5238381541808153169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99dc74517cb5e46d3f3bfa10c9a4b83e58ab2424dc8f1e33429bab53ebecbcae
Date: Sun, 02 Feb 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738527953
