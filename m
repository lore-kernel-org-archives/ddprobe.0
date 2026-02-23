Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3157ABA21
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771818294; cv=none; b=QGsUwc0ubWKRmtG6y+5GH8ktP58NiGNrBS0xNG6O05N25d4tT2EAyxLxIGVyPCVEKkPWXVJUQ3je4ovHpR4FVWdO85E5mtL8J0YEFCyzcNagbm0RDNwGyA80UkyzhZ/QRSvbzUhRlUHR15d987DTMSCync6HLSkfFhcOHWbNglg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771818294; c=relaxed/simple;
	bh=37jT2g3OHqIZxUo9sLuM5G9WWOMS4NhSEllO+DyJ6Sc=;
	h=To:Subject:From:Message-Id:Date; b=t3hxH0fteFktklysCCcgldzN1XMjJCxKfY4IrEbh+mBr2kmnRZ6D0NXvTTldz0khZpoN1R9MBcRgIhT7GrtbOXbJbuMkIuTdLlUHhFgesQmFXg/0bO0QVidiPCLAULydSZJV5saX122oy6hna5Yt9QtLrHjEHERHIaRPQ6/EZCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBP5ywwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBP5ywwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0187C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771818293;
	bh=37jT2g3OHqIZxUo9sLuM5G9WWOMS4NhSEllO+DyJ6Sc=;
	h=To:Subject:From:Date:From;
	b=XBP5ywwqxPzk9R9MQDJOXflzGVUUyUQBeHz4VYb3UjxveIoJysriGTanFUUpGzguZ
	 I2Hr0C8VMFzRa7OcPWU3Ea+6Z9dDXIHYx9OHUjMdnUdKiWn7z6wtjelUFm2a2DzRlb
	 f1nd2HrByin7506bXpMCvaMyt9ofU492VXtx9zl7fFH2qyYUOPipG+hFSx9n3B/dck
	 WayM06ewYD9k/GVgEG1bOLiOqwCYDZwq4pPLEs/hEBhuIj9I7rr/CHbVHnQ3s/zQVG
	 QkZgmVNzzrkzxv6uw+7opXapqsv+SxxCfaGN/4y+xstsDN7h6cqopijm3R30rkEVOc
	 1f+TZcGlXkDbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98765C624D6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181829360.8132.16636963331261040552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568cb910d4ebd4d0e59a49f97ffa1c994f98e5637f8107d932cfcae9da1ddb30
Date: Mon, 23 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771818293
