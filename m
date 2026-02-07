Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141092882B4
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770501234; cv=none; b=sr6PUyo7oXbydJ2vktKuTDpUk5C2QMNbwe5x5o6YL3G0hjR8TUKROiZsqBPFIaZb/96gu0OFhZ4g6NQg0N9acQVgmNwqm/pKvch9pv5r5G+LYzRQ4L1rc9wRd09JWHDAdZvWL695EUkyD5TYb6iFHydx/N9kfGbQXNlr9cLK5nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770501234; c=relaxed/simple;
	bh=jw4OfaIxrb6xniFkj/LPRYfpgehd3S3JQMNw4sDT1Lk=;
	h=To:Subject:From:Message-Id:Date; b=Tz0NYIrSpwiIwnkLmi01PCCKTTNyHON7enu7foQquoF5p9E+5FaAs2JIehjIpT0d/gIdfvLxeIjgzYUEJSl2ojFQmeV+mHMDSAH77HyZRaePGuy9DP7BYHGSkGAxNDX443fkO9/08K2/ULM0jbCC9YEHW+4yFGLF/IxKV/ijDDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKe/0FDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKe/0FDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91A4C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770501233;
	bh=jw4OfaIxrb6xniFkj/LPRYfpgehd3S3JQMNw4sDT1Lk=;
	h=To:Subject:From:Date:From;
	b=sKe/0FDNpI22zxAT/jVR/EJpJAvVNrKwVaSrwL3fF7qF6FjPuNp1c3U/D+PHStEkl
	 9kDXApAY1sZPVUbBpZgwJ3xMIDCSR47J4CUJ6JEOuEtSRa4uSe87aI3LLvzW6hulv1
	 9ekX9dkdgUGP2l0ZMQRqcTpistWkOIEpEi7nzFr/vGs30oz8HZQn4W3+B6KmVq02ce
	 HLpAjKJfMZuCGEdErn3YEOlEZ6O1qPxNC0MiyvED0WzTR8I6/Idx46ryIzd1T3yCbN
	 m8NYvxvH1VE3FDUI88+a1qRWEs/Blv7r1rn9P8P31pO/iqJl4izFCgXTmJuhNAjfW2
	 8hTBRZOeOBDLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F5BEE0AE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050123359.27865.3448935904454219974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a71748783c122d029a63e93ee08c04988e38cba2cbd9b3d69c1d0efe9de6297
Date: Sat, 07 Feb 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770501233
