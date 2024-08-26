Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518908F47
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724688354; cv=none; b=mVgD3v8A7XlfKN8MjVtL3GTXG+tOpHadQGsKwh6P9CGDqgDLPZwJiX8KzHbrSS5RQr4CF9u9ffKud75NVdu+V3hhLmvOkZlE+Gq4sIxT1WwDjaRBNS0Edvb6rFzapjJDM0vaKZxJMLWCiDuCzAA7QOCTf622ZlWOaiVsZGUYs0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724688354; c=relaxed/simple;
	bh=4W1B1c1bfgYJWw2o2zyH6HgjFfIEuRZSHJJn6rV4fGM=;
	h=To:Subject:From:Message-Id:Date; b=rU/NhZ2XwRwbJpgmG4Cv7ckI+BtIT+bY30WFVbiHOQrYxcAflYh+P3f5tw/3AUmSvgaxjLGdoJGWaj5kMCNB1JM12y5nFDyX0K0lYiQ4dE8o8mEdnn4Oh/ooG8vcxFzUZsAZKi6/lIqljKtsJhKqd970XOSmi6X0JISClAbwRN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmFH6aCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmFH6aCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BBAC5143F
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724688353;
	bh=4W1B1c1bfgYJWw2o2zyH6HgjFfIEuRZSHJJn6rV4fGM=;
	h=To:Subject:From:Date:From;
	b=NmFH6aCfos5hDA5JGjZOWY7iQPmOCUmkEDb01E1tLWUWOo7fjKLKuE4yO9o3qb+Ma
	 qxPjhRYCNJxKjV3QP0xE50iPn89rivqnAz+sOOztsjaJ/EWEP1tjs+w/NTAED4oHYx
	 8VchVBYQs8aJFcW8tuwWnoV7xT1STV4DvoiG8mUZkJzpcpSpqsSosp+h/hJcxFLPBF
	 NOpUlOFRGdumHEyqm0DjdJiBohckp6q4ZQgCbtASUPHfIlMAD5aaxmGIOrk86PcT3+
	 AVFdxD8kFmuDEOLq2IVL0bYWJtMQ9kXNHTIh3Ls7g7gicbJ4QRWpgIHutUJYOixiSR
	 rpscbNdKk6huw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB5C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172468835359.7259.17179701517630897940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c500b38f63c89234d7da62b0c81cbef1fe6606616f13a8ea6d7543d78a12fc
Date: Mon, 26 Aug 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724688353
