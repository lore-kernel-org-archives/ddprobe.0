Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BE62AD32
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759621194; cv=none; b=dAIUsbHSjftzKfl9iOstEZZ3c02sJVxry2CAHOV6PPftYqeBJlMt7G3Pl8fhLyqcGwYuNwwViLwydHiQKR39x2rGDpJKiQtZQfwK6ijhSuHiRPVLMbl01AN6WrXptTgXmACCtI9wc6UtUXJYvEJWY+KhTgbSXKlXycTA8tgijqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759621194; c=relaxed/simple;
	bh=cLPUzkzu1bNMVhHTH5KNH4y6YR0aSk6lS4CXw7L/41I=;
	h=To:Subject:From:Message-Id:Date; b=e14jakJjcF7CT4/X+VT6dbcGE+HZJRNoJNDFbvHuFwIW/972vi0WGxsKEfN5su9XLht4ksEitmRTTjfWYDSJAqu0kQ7tmcmXybo2arWivR3B1WeowE+coF9+zZ8wK4RO7JDBB3l+mnxYE/tn/esMqyM3ghPOalr9NAtmvzLIgl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbRNIdcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbRNIdcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AF6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759621193;
	bh=cLPUzkzu1bNMVhHTH5KNH4y6YR0aSk6lS4CXw7L/41I=;
	h=To:Subject:From:Date:From;
	b=pbRNIdcjMy/w9+7X3yZt+56NGR48DkFH+ivW/+MsC5DNNxdoe7pY+vy/xGyAUoYV3
	 v6NMOBHTYyzbndnNpDOgBHUUMgy2GE0LWxgowfHKDDzh3OgPg0uUDpV36uN7KSGzb5
	 YmmfKlUuyafYdcQyXnU530mnu9q+6QB7MB1xU5N0sfJRm1V9QcdpEZerghSWHrR3qw
	 Q+PlYYTLVU3JRYF7gcljCEluTXGGRFCN4/+pXLvlfWsQRovD3Z6CQQiTb461nTC2uP
	 Jr3adtbmcbrJ8vZBHcfKz+jGjmY3nujhgktyEnl/twWDGb9q/nmMy9GD0ps6lg/R/n
	 FvNvGA9S7y2wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9299DCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962119357.15835.4022993661912126567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d8e41f93da60bf7003a385f9b8dff04caccfa78ecac3c60eed34d1a3c601a8
Date: Sat, 04 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759621193
