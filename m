Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4A5A953
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718015843; cv=none; b=ME53LyJEGdPCAIb9364oTk+X8LoFC4Ph8aTIJuf8CaQ2rSf1S02ILATYQBhwr3uCDEWN9rKqhTjlb0s87YLDygJnRt5BxB6f4PypKcbO52S2V4UFBgNcvR8693MoRTqtSYsKmBeyd52nFvJw0wETjTwf4KpI9CwvpQnHrHJHHoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718015843; c=relaxed/simple;
	bh=opFfThp+Zli/WWRudM9yjJWgzdctEU+FaKiG67xxAKc=;
	h=To:Subject:From:Message-Id:Date; b=V8Q4jtNQknQuGXm6tX+FZbORu28ySNkOTUSqcYL5WsV28kE0Oi5xr8AYT6EiZpwxyedKtWLCPhfVcaanh9yV5BOH8kxKuALqpBXKd5j62EVhjrJY8FV2CihIEuCMCuHfgWN1lMu1YZUZeJnQvyFpVOA1kGEoVjPjY0GBhg/GquM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gh7AZnAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gh7AZnAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EEDC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718015842;
	bh=opFfThp+Zli/WWRudM9yjJWgzdctEU+FaKiG67xxAKc=;
	h=To:Subject:From:Date:From;
	b=Gh7AZnAP529SLeof7B74PEE5yDYU0L0k5N46qaNHdL7O55m6Uc/66EJmoPGfG4QFS
	 Y/sO3HLw1M9tQ8mtalINVUmvgXcbqMXKzOhERqh19LkktDc8/80NwMkOx6L9+iR+ZK
	 bY9E59Ey7nyu2TzLGs53tZ2YiE/IsHr7ebaFqdLla7OJwY6dNCxphMqBPth+JrdOk4
	 QAONcTK97cs02AqYbMtsocLNhbCzICAt7BSMcAzmRzT61Ul3JVua5vGk9Kl5r8+NYD
	 l4cF7pTL3wYkZ0dJHCklh4L8qyHVT5CG7xZiarWv0TQItG4BvtAX/AqLg5H3ECbmOD
	 KCRdSUDg1Ncig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BA5C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801584276.19391.12205510259677289390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a25ce1fff940ce8f3dd6fa9be59f760cbe6e29ce5780e4212414a8b4b30975
Date: Mon, 10 Jun 2024 10:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718015842
