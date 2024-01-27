Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7EF19475
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706327297; cv=none; b=nZsf/vUmkcD3njbjV6BFmYg0MEFEJfeu1NaQJFw9QCcVw9G5qqcb5+NbFXpzfrbrWI8num/XCTQocd9ozA0JXY7kG4m+EoDzO2wsUupJm7r4c217IVXfXisbokq/2dp5F/YL8zbJVuRAQHCsUAhK9hBFBQopr2nPMoaWG78Fkzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706327297; c=relaxed/simple;
	bh=eQ8KGT8r1WQKI+ds0a1VLkhkzKaQAtCY/4jnf1252Uw=;
	h=To:Subject:From:Message-Id:Date; b=juGCMI2hqG64EyWQunVFkE0ns63s/BWjwF3fh5EX8rXz6VXi8NMGW892FgMQETkie8P7nKVuQ2X6nw+qzQAXPxiDsfPskcYOzxsctGMYwHAQ0JGZhy6k+4kK6twtrpp4El6lW2AHBnPfjmrMpzUHFsikKiHGPXTvPbwabGIHLRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwrKW9sb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwrKW9sb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D793C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706327296;
	bh=eQ8KGT8r1WQKI+ds0a1VLkhkzKaQAtCY/4jnf1252Uw=;
	h=To:Subject:From:Date:From;
	b=pwrKW9sbEEz8YdEcHTXCt+FPKb9w9usXsYPzqBhm5ZDGOFnQX14JX6iYyyil9uMQ2
	 1h1qYiM8XTefJPt8O0h67wQ3Mvr41qtddHefBzoHQJEuOKrmVGA2zwxZKoH0LliVQq
	 akAV2DnpsFMUBkoT0G51waN8IbBDMWustw2mQBBdcLWR1xTdtyxmR8y0nvaX/TY48z
	 6K99qvskhNzxqGpPHOOWktobKVxK72qOJU4JFdm6Vp2ZEkH5UWUxQ7m9nCoQtVdAL8
	 FIKPAAB8g9CTww+cD2pPvWx2ZgCgitJE7RMvl6b7t3vxUq2NdQCIw8Dv+Q3PYr0d0M
	 jbFLuArdv/WCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F26C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170632729637.28188.13978952658173092561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5304c1d64c1b93fb5b097a919359972b15f9b23665abbaadf6c02b09aec46639
Date: Sat, 27 Jan 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706327296
