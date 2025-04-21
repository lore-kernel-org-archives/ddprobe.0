Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA75E8BEA
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745264993; cv=none; b=pkWi8Q0ImB9PJUJeLL7ciDucA6iTh9FCIiRTqFuzDGFKGQTz8dpIOtru33Apewoia4K4UioZmtO6KTtVJk7IpxYnOgr3yiCQpATcin6YqJE/T+wE7cKZQgxwx4/hVo6iVz7dNWscogwktZ57jygPXF2VudJGVRUQIyJ3t6pAJTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745264993; c=relaxed/simple;
	bh=ea6z8V23JV9EEPlkexIwmDOhXbtYiTPVcogH6jYVEQo=;
	h=To:Subject:From:Message-Id:Date; b=uVmjwGzO5RgpsffPzf3vfZP3Hd6QQt5qieOiFJMcQ9EX+K/vxEdRQy33I7b1xFSArWbkdeoYSYghC+JLZs5zQWRZXjkclUskMUEK/aYQwzCSgLxl4NUw2zGOFAqo74IqABttCJP/UdEO7FOkZW3fbf6rsoTpMecRoOb5aI4s8WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9AcEybN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9AcEybN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54E8C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745264993;
	bh=ea6z8V23JV9EEPlkexIwmDOhXbtYiTPVcogH6jYVEQo=;
	h=To:Subject:From:Date:From;
	b=d9AcEybNWkfZrVeoLdH6NRzqcyKwow5xpsrMPZDO+Ur6pRaRzq9lH1/7sxkKgmorA
	 rF76yPtNKNs1wyWVKtgMD0GBmpBJMPp3gM0UYpzRlGqlZzUfXsUyEvSZPiMjuaWg0a
	 Ifbdo5CDLuNP3uLPOLhFtP1Ti5+4MkwUAh+B+AoczgZQbEWNOj+rpWW2OQL8VR1Tm/
	 QUPbs5mAK54KjQmuEQunGIJxF47mYqRqWLKC2tI9wy/hMNVV7uCcFJfJ2oM48RQ4Vu
	 2XOEb8PCY0XPKsMKJQsj7HNUwiwwDs7mYsVDG2uzcTGhCeVzKtRZ2BJbfFzVvJ16bm
	 pMdSh58LiNahw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BE2C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526499362.26415.4649038847289333582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f587b4aa8aa1a65e4c10cd718b79247357487a2714361d0b272b68de11d9f5
Date: Mon, 21 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745264993
