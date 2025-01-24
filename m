Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B92D12E4A
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737727554; cv=none; b=WzgG+QlIhaJYIQSmg1qiPX39oZ96ZM70OnHehTclx/hUHE9XPFerhv7aWwIVKck73p/vciT51V+lGALh2VGN2PSHlEP40egsRpg/enpWvlaXwjIrfau/u5y+ZTMOMJPKH6oW6zYVdua9sZlTBZPGo820WABvdnj4KujpwBXvaXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737727554; c=relaxed/simple;
	bh=Q5+UvuOecrv8+OVbrqVepX9MgQpirs1nkLqthsDYzHg=;
	h=To:Subject:From:Message-Id:Date; b=h9vzmVsBKwnPZc0363JEyovjjRcpkOtXKbjU7kPpMwZhukNwQtiwfPffjP2M2lxH2DWrXOU8BRb3ND6bEr6PVpuaE2b4a357MKfk3wnLDzNCtvXZb720ab3Xl3/KXo4lbPoNZsUAv49TY9FtcjclllDLM8oK74HzW9I1l/aRkIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QopUH8j+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QopUH8j+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B048BC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737727553;
	bh=Q5+UvuOecrv8+OVbrqVepX9MgQpirs1nkLqthsDYzHg=;
	h=To:Subject:From:Date:From;
	b=QopUH8j+lQCfHphbfiLdO2mId73rxP5WmXu/ttWcHrVFfw4O/jS8sLx5dfDEU/Xdb
	 oZWbrWavgNcMQILMKtMA63mv5Cvju166/8gaSmcLPlHXMhlb5RjFTzxzvB4pz6XxYr
	 Ji8UemX4QympKIL7YT1xKtfEuo/bdv0HI6iSqMzh5kCVIatYw6gdTzUEMhQTLvgtTe
	 f6pUevXuUHBW+AtKLIFhm4kL/a3Y74mW5d/f7wWf/B13iv/OSjFPqkGE5rgfph1KSf
	 3liQteZsceIEq1tf0CrGEq1SPwQfSH1gwXzxA7wQwsbIygicdo8GoLJ5x5Yn2Tbv6K
	 jGB0oI78Xqxog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9F0C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772755362.1859.17303886117615074140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3875e1dad4b3ba73507cd928b9f5dcd0f2bf737e4611aa51046b21fe7edb31
Date: Fri, 24 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737727553
