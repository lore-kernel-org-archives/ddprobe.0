Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29087225402
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745452194; cv=none; b=bT8ITk3EfJ3b9lha4xTUteRmHvc9OqJlkjCNwEOJm+ineAbfeuTu0cBq7U20BclmJGAi8EK7RUZXdkpceI9G4adqJooMV+UsB4DAF7TFfHdZ2TYKfZo3E8JBgkIvRk2jKNS9ImqsVCU2nahLv9+6vVpVypQnFirnK08xYvhRVoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745452194; c=relaxed/simple;
	bh=xcfpWAAzqiGogTgwrdV7WyO0jgTz+jj6FuSvU6bd6yI=;
	h=To:Subject:From:Message-Id:Date; b=HuAagfePqEh76zaziJ3RPcZHT59Wr1TWmNTsM149DUg4wyJsnyI2hi90j8nR4JF61BuaVqIF9x46qEXWD92uA9fs36zSoUBCzcm0CISICoj8e8uxdZj04XBiORctG4XA/rA3eYlHCejjtgkZeyZtOC12qrRQmk6Uly2HScqy5HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShkAy8dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShkAy8dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47AAC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745452193;
	bh=xcfpWAAzqiGogTgwrdV7WyO0jgTz+jj6FuSvU6bd6yI=;
	h=To:Subject:From:Date:From;
	b=ShkAy8dpbdS26cRWjxEk2iZ7/+9kJBbHWDpcMsWxSbGfQWWmwnaX6lwq0jhQjRHAY
	 DPbO//lmi2JJs6yZfDZGhkAuOs1sBG/08aJ9luRg2uezT97QL1ucfEsfkQJJUAMr90
	 9nEyphHJiJCTrYETLvaPwBerox4XRUK0rTv/om+TdPv1GIiG4R3nEQXbicmRFi21Os
	 HgvtLodi9FgTxflMH/tFt2DcB7OFLfMOj14OQ1gtuoZN3DY4BDRdq8ptJVZR8NqeJT
	 4qAp3y5Uldiw6+XFH1qKCLx68SHaJ6xR7kNQ0X9jySgTsXEeI/0u79K3W55f6ISh3R
	 yySBtc7VHozYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F177C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545219357.1809.8633726391436098394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00fd30e50c6beb77a31b379a219f9d8b156a0c16beb3f92ead61321c610b6356
Date: Wed, 23 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745452193
