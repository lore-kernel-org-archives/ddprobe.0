Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6A11B7F4
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748480394; cv=none; b=MGLF7MH0aXbjT70LnbnZ7oPQKrmkeC8w13H18qocociQsPKtKCJi4YiCCDIqwlNgdPycr3itcokXZIY1xW/yDbktKtBxNHuWyxqZiHuJdPHJ7gz8Y5de8OtCSs/D3AgJBpSL/5z/8h80AiMsLEpWKWgxYVYOK5hb01AQbqkNu2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748480394; c=relaxed/simple;
	bh=cWPa1QdoadBKaDTQV4re4NDb1zWRZYLo6KTtVo5Y3CE=;
	h=To:Subject:From:Message-Id:Date; b=G78npLI1q3H+YhwbuYtA9bi38Pgow7cskkLcQRd2DOXhCR/xN8h/tbA1lLSk2XrYhi7rB0lrKJWmuwDa5ZUeVNZGXEUvVND44jxZ+NuguBopGDgYh+jTdA6jjBNkc2FHPQ4N0ptcGXlo8yOsuVlu8Yrs8OnUYgiNZuFoI76yPM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTqsn3nJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTqsn3nJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3935C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748480393;
	bh=cWPa1QdoadBKaDTQV4re4NDb1zWRZYLo6KTtVo5Y3CE=;
	h=To:Subject:From:Date:From;
	b=UTqsn3nJWX006nYpFl4sHCMdP3jLWiVSncvz3OWXqzI663ke3Mx1auftLgcK+153D
	 7l3gCujzNgnNrHj7pNUN6FRbI9HSgs4SiqeUgimTrLdag3WqdE34QLSSrjMs1tGjI2
	 UsEGT3FxmRqVYuvOz8Wp7mhz+Q5187UEopD1ALy84qZamGjyZWuWmt1fw0cStDhDcb
	 6EGbBZAIycB8zcfzK4xk6YYPewJin9uhl+Aw+hxsLt/3s0VaXJDC5LxoSPO8iZcGWV
	 mEKo4bovOhTG9xQ6g0nwQt/B9ymGdaC80azqoSR+Tdeupso2XiE0WuQ5WdM7MJz6yp
	 DgCZQMOowY2bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AF2C3ABB2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848039357.13922.14046408052149210208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ca865495ef33d10b79f1f5413e31bba859f2cf6f93f1dbf6e411e16275d6ad
Date: Thu, 29 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748480393
