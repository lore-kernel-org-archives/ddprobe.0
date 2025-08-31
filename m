Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226324C79
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756631994; cv=none; b=ZKckiM/SMDbEj7B1qH4GU2GhNsqd1FuGW20gzP7riRcuWGbypD1hq9qe42Ad8QIU1TocWMyXlJnwyfw8scMDOjo5sD4+OfA6nmFf8/s3IluKdF9LYLDwT69c1rBzcqP2P4ck2zVXHQPzscskAHoZQ3XhXCOYrKBewDxO3fOyeHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756631994; c=relaxed/simple;
	bh=j0oc0oB4nWGedX3Xru8F4g1A+qzKbBg/26xiRp7Tg1s=;
	h=To:Subject:From:Message-Id:Date; b=DN3s0qQ4VtPu7SUwrdfJVbj7iA+LUrcWMEv/GCMcLHpZCw0RO6YnMi8makyArFCJd6ZtW9RWdUi0iFweMqHLDM2nEEQDSgz4IMphdnlTOhE7lKombCS5s2fPdbl2HWA2l1SecWgFw0vvY3DhkmCv9hLIII63ksT4InSTaqP6BsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UC3CBpHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UC3CBpHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D92EC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756631993;
	bh=j0oc0oB4nWGedX3Xru8F4g1A+qzKbBg/26xiRp7Tg1s=;
	h=To:Subject:From:Date:From;
	b=UC3CBpHKY/fGrnye6GV5WKn/edUovVghQMRPnxOJDQk5JviyrTIT0xUjOzJDFVVz6
	 ffmwyfcnbaS0Mwz8t+Tq6prWoqL12O+HOl6QDmsMEpnNnXY+yK252M1WPFWGxYs1vY
	 5qDryLcIbEc6YAm+GUMdZUAzYfrZ1BLX42wyd4p0IkqS38o2RDItEgsmn0lMwMFNLv
	 0OQex4XaUa5xhmMSoE6vuu5XuRCWsEArlBec3et5fHw2YGxRUgmBcewbADUe8Ifi4F
	 DoXwVYCPA1nSYRcgJL5kbTGedjKhdql7Uhx6OGhg0Ci+/dSFuBQ+4z1DW9gcTugivV
	 jatQ06D+Zf1kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE3CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663199357.31335.412514480877639466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d739c5d9c7ea3db238b836c1777a8fe23306bf009b20904f8ce83dd00b97e31
Date: Sun, 31 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756631993
