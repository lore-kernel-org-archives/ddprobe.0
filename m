Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321E38837
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736387154; cv=none; b=MQ49p2Y+c0pBX8v93Thj0V33U+E73MYnw+h34FRqaXseLZysWXcEwO4npn7GmYafQhOVlZGr63YsGNdhCWJopoywVD5YqZE5oKW3n5GAiIj+V8qBqMy9ey0Ivt0Px0goQNEtMnlkOsW8QlMEUmG2c7ZDYpqGlF+HvveIX9fI92k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736387154; c=relaxed/simple;
	bh=hIBPAvLJ3Wzm392XLtDErdAEqHJsbOGXbyNaOpbdXjE=;
	h=To:Subject:From:Message-Id:Date; b=OE0dbHWK1B4GZAHUhN/Ms8Dl2So2fUilOd6eFPsmmiVEet+vq3+rFSJH+MneZgEJiKggCtmuF8yaeFrfm7I6gHovfHutgmPLculcawmWiO+d/pZ6k/tBSgbuAkuF+DTwGM5hfsZr4+WKw+31NOkgyblHmEX9FCKxAe479sjxB7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/X7X69F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/X7X69F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC331C4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736387153;
	bh=hIBPAvLJ3Wzm392XLtDErdAEqHJsbOGXbyNaOpbdXjE=;
	h=To:Subject:From:Date:From;
	b=b/X7X69FxDTYTsQlIcYtTJt8cBQZT80/6uiUOd2s9efHGCsFWUDm2lKR66qOvyej6
	 U3BXh61ebrFwWCjZyDZyWD1KMexH37XHUcznyyblfes7h/HS9i9A8OPArEojmnixNC
	 +HWDmZcPNADzqQivVT4An3UugcR5ILg4N1ojiKq04yXuhIGnGHR08OwIDH/yW5EWkE
	 laOi/Kq8R+8UHKWy6ZnpYonqiB80nP07XQq/G3arlXPnblGWM2L3XrisND7HXx0OHc
	 XBh+AM38Ljnc/giLwwE7OO2p9QFuU9v/d7cS8oS0H60yzd+aUkk48mCJC1i+t5dnhh
	 QKTMsUo/3k3VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CF9E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173638715361.3985.15102968693938956368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b777b3c71fd816c4302eda097647ba465b43b589868eaff98d6fafd5416872
Date: Thu, 09 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736387153
