Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1686D24466C
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759255796; cv=none; b=VeJpbjLLkZOEJ2LJo2xGnV07h3OrH44QuzOnA8txifMI/NlIeHvPxW/DaoabDTy1p3POlebNRJW2a5SBISutCnifep3L9Jy++irUD0VMdN6TnjEZep45ylBzQ+gJl5qxDM5N6X1nw79I5DNyksCJUf4XBvRd7lVNdFTYDo+w86Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759255796; c=relaxed/simple;
	bh=dtdqxItBaHbbu9HNmqeLOhwQJRkGqhkAHVyWIlMxecM=;
	h=To:Subject:From:Message-Id:Date; b=X4lt5nvVDv9uvRCNvh8ELlDZ4slO4Kfz+mizrQHRKPug0rqgdNaCMPrAhY1ZtK3tBEaquXYvQ76KVGuSMNR9jLVFs4GAVT9nHL+F/4vwJroYx5QwrgCSyEfR6DTjz6LR0T3xrSlzRi4YP2zbo9qeYzKXtf8jYqzAtIKgc36h3WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSlwCvRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSlwCvRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DFCC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759255793;
	bh=dtdqxItBaHbbu9HNmqeLOhwQJRkGqhkAHVyWIlMxecM=;
	h=To:Subject:From:Date:From;
	b=mSlwCvRt6XaPGjDBqxRZteHDAwT9937e/KDMBNvykjD2zFln0BNkw0Tk8dpiPznQc
	 iwccXfhZ+ksOBMXjtiGdIbJgUQHUqt8PMUFh0T+x6ZfACSSzbMsG6zvQXxmBzAIDEr
	 OJA7Y3D8ievtMiWygS12XlYeb4CuU0FbC9wpaWDo98HmSv8K3rq9e8VUPSJgso7xxs
	 Tv/iSPmi22Tv/sdPno1OoKjAe2OUoocEJ0RiMqrbDBWR/z844MZuGe/TcGgfNup5Kl
	 Mxoe30kOW1y4LpVVC1p1+/lFBnaMXuD+fhU4q+6p1C5eRW8ueOpMGF5KrAdmAS3InQ
	 +2+zTTr13UJTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78CCAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925579357.24581.17524520807974025006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9a74d0a8e2dc1a86a4bfe944aea0bc16a7c043073538d7d4894767d66e5b17
Date: Tue, 30 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759255793
