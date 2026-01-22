Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7531F0E25
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769045036; cv=none; b=REdws8auOLrEpEJdbNZ4264aAWGhV70sHLKqiqkisYjhBOtMaWaRjA/jyNBB3ahnDtHWGEw5M+/6VntjK8auD41QGZi/iYRi1mWj5y+k7kkj186iZuTYQdHmpRPcpijlEoKiudl062O5xoZpnLgoV24Rz/HMh0r3YGh6Dvek4bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769045036; c=relaxed/simple;
	bh=22B6MVOVjn/yNMl8TqJ2GH0xJ6G4fjUra82Hh9yAB+g=;
	h=To:Subject:From:Message-Id:Date; b=OO26EZdNpaY2/STTnxPRzAUlucX7MXU1LtA/sNIEBAUZU48qqPrQgrSGp9KsVqPG/G6jpBonjamXqPdONTV7AwKKn4epmqdNiRQFxnu/U2Fimq3Iu6AHDOTX0CvHr90sgaEtHjAVE8+Vbc+7Da4D6tShbWJo4dbl/LC/gYFK1R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjliuCop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjliuCop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A85C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769045033;
	bh=22B6MVOVjn/yNMl8TqJ2GH0xJ6G4fjUra82Hh9yAB+g=;
	h=To:Subject:From:Date:From;
	b=KjliuCop2LMFoO/qNyeUW62DVUbQTI/xGJKF+MA9AaPDDFMms9JUlc0hWlvMP7y3/
	 g2gFiZKrnFh57ah7rqZB6lPSJZbeHl6ecnBRMogWTPPjpokZxhBBcx/pDQyROSMefs
	 EAFoN51nCUKlkqfb0zcTkVkXrcb2OxiLcfs8j586gpm+MaEshj9cFTMZn46YVjDVln
	 rtEk+WOFJOAVr3jZrj6ZNDAOX1kI58XRCFYPY/rq3mM9fAiUYrX8jhu/bRxB0BGDg5
	 ylJX7woe+Nl4OZx5UDizk9Hg2k4I1O1emc4TTb7qJlBh5V9zVeOZkS6BzJhRYYVFfa
	 ukerxZY8zmbbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F3DC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904503358.6697.5697007955537373324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626171b18097e1c47cb058e5be799ad338c6243ba1652d227c74008541138a19
Date: Thu, 22 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769045033
