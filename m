Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4DF1366
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723335354; cv=none; b=hP5lqT9i3RSPsoNyubGFMLn8GHBwRyNsp02hS0BsEEA5Zvsmxw2DWS8rtxwahOSgUgQZaAphWJGu8Rb0DDFHF8S7p6JSKXz7uV4Tvx5wyFPBfabTZet+a71/Jjm4GF5VjZ5TQxz5Z6VDrSxGrT2Hkfs5iEAGDDHpeHlxJMibAzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723335354; c=relaxed/simple;
	bh=JdFxsagu3/nMfz6nIGJqnlm1mw0lmelGZn6+ddo2VIc=;
	h=To:Subject:From:Message-Id:Date; b=FtXp5EFo88k9zDWc4IfV/1SN9cYQ6y8upZl6LsJ9yvf0E0gJYT95l9cI9Y8canh7RLDaLcb38BXhaOWS0T6FPZ6xNRQBXVf7I/onJikNvfSdWkYvzFsq4vSAtzAeyzBDRVNYRK6k1faT1R6d5JoqEiBpOp1uM7zdDJZuyap2ekE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYGISRcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYGISRcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21DCC32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723335353;
	bh=JdFxsagu3/nMfz6nIGJqnlm1mw0lmelGZn6+ddo2VIc=;
	h=To:Subject:From:Date:From;
	b=aYGISRcsEIp+GP5p3TB9Tsueb614HBADTzBMX5dSLoAIaDRF9W1mnVm0dSZ+urum5
	 j7K4I4FPrqunfV9Iv0pv0g9W2uoyQ5fZuuBYXk6sHD/Qn6w+78mS/TFKj1hMBSkVC+
	 SgLnRcGPjgKSNW04sj7XshA98hVZyBMWjPx7F+61FohSC/ST6v5jMPDndXve58dm4Y
	 IuERqsVUUiA3O/rTDMbDy5TKUKUXqHP3SM/hr9fsqTiEc6TI0+GbPD8PgPvEHiNxr8
	 qN20BNdwlWn0VLKjIeKTn9fEb/VY364ahzd316Kc5N176UOSLuIxc+0Mg+aIGid4SF
	 E2mGPYfgNCTNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5BCC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172333535368.6961.8032831274070343721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c76f29887b2c8bb471eefa7bc52ff48c5df98a0890ad1f35d67d94ff01804e2
Date: Sun, 11 Aug 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723335353
