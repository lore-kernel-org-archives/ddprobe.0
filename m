Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED5554856A
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790193034; cv=none; b=uABgZsMOJECAcmTX1O29Pw+PeJwEfqCl4Fr5aqJv4pNX7lQjDfqqIq8XJjoqjBH5WcRoIfI7E7RJZRwUBs4nicLwSDeENG7JLxbcuKKOTQDB+JtBADZv8UVkpAI0btackJo4fmitc5wfSnDRaLfzjKnJF7nQoSk+vv0Pw211kY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790193034; c=relaxed/simple;
	bh=EiS54gBev0sBe8NrODCvM4tMDXrtxAQPjsB2RBsUJu4=;
	h=To:Subject:From:Message-Id:Date; b=ixKd7ZlcE4l4YTAPDZaVASCCyW69R2Z+gOj9l2c7OGjvR6RI13oykMJuh4UN1GZftE+Gp95ReY2qSswOWEWUyK/0Tptiabr6IzzXT0oMbRFyWotnEGquVKMaUcPx5PVDRyQbGw1CvJ0iwGdBYp9D5Y/h1VJjmrnS0lZqDvWGsgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch+5hVpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch+5hVpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E240CC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790193033;
	bh=EiS54gBev0sBe8NrODCvM4tMDXrtxAQPjsB2RBsUJu4=;
	h=To:Subject:From:Date:From;
	b=ch+5hVpMBS9uwF3nQI3UUOUtWMc++xLRgNykNMa2nKjcmhqHta/HoXBTmvLPlnsO2
	 pRDQkhJsLBJLo+7OoRqNVXT8dVAShWiQd65SxYa/5YKROGn+ZE1+8mKkU5cT9mCEgV
	 vQ8qvXVYZ1aLE37KuiJUfI9DEHYDFWsH3FZ5vNBXRoOUZY5GWgwPXvkJ0SU8wilCvo
	 Gin4/RurIq1Uup6mu0zpiWVjJ4HGVA4mVwmDxJAL5UsGBLPawtsE66pfwwJNvNg2qE
	 uEXWe11VbGUGsUlrtXveLsyhMwaUCSzVIM5N+6rn8Zum8BJCxfIF7xq7CN/11y2to6
	 Uz1a02A3jRQQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E13C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019303374.15866.5933578093947365609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4a74bb82217b09186c904b783e6511894f634acb29b1fd2e302b8bc29ce483
Date: Wed, 23 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790193033
