Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3904518D
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727139954; cv=none; b=oLZBA47eB+n5GMHlAlh3Ig3tRxaRE4CSFFIOuYQphsv85Eg/GY6qG7vYZ8tVD7w6LPWxRbquV+bNPQ5OMLVG7ACqTGQ40+P+ynpM3dvjG7Gd/HT7rwlnN79dswLy4B2saNGjBLo2vs3SY04Z8LJV4vqZePf4jcrh1WCh1MMjMss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727139954; c=relaxed/simple;
	bh=frvu4HzuKCU6UxkNmqNjLod6/bw3RIeYX91jEu0/1Z8=;
	h=To:Subject:From:Message-Id:Date; b=YPyUy8v6dHl5sm/vTwBVzlqqFwS4zpGQbpmWva9P/WEwwrUTcNh5vffR8w32Pg1DIZu9A3yPQX/YcaEmuAf26s0QSTbK3PQx2x4xP2g7VuypI8O1RvBuWzKpIYbJ88QwSUtctqCqOvrZeXbAHQSosrhEmIIswgUB5AODX0PMBYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VS/7sJl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VS/7sJl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE565C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727139953;
	bh=frvu4HzuKCU6UxkNmqNjLod6/bw3RIeYX91jEu0/1Z8=;
	h=To:Subject:From:Date:From;
	b=VS/7sJl7kB59UGx3oly96XVDfDLtJT1TOXQNKeOYBM1tfH3fAHPQqqWqfU4g4Jycu
	 LA/jB761SCeaaemvgh5V0hd/DoW1G+tCka4tNBjZJBtKdbNyzeTe5skeILIT85FriV
	 uRtvPIiC7dH0O2GV5+okLB/swIgDJd1AgGKkPhzWlCXz2x5BgKliXRCgT4yWBggX1m
	 niLov1IO/Cz348yCJKRB4ViA/TDaDINp26QqNvqQ9FbNf7NKjrTEUzNWCcSFLV/wu6
	 W6n+VpFsOzrW8AR067So4LMtPeq8B03tCzRpQzK6CfRNMxkk3Op4IJPt0cn1BlllB0
	 qbWfrBaxXuw+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971CACF9C5B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172713995358.32637.16536342848356768761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55863569eead04479c5620861c234bae67aff087b141c32e6f73652c93a1a2de
Date: Tue, 24 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727139953
