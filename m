Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CA920C00C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767471834; cv=none; b=UFkpQDQxXzR+DQ12TpmSji+RJynMEvykur8okX6T7Isd8w3kYyl0VAMEIQ2Tt4HHKfOlluAXqsWHhBdalvBz3z4y0NKhvbFkgs9QBayCtq6azWVxttWGL1MhAy4SkOvHFoRlywaMw/RM1+0Pt2jTkDIOcCTh8fx/orSoq35wTpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767471834; c=relaxed/simple;
	bh=pTwdSICu+gd0VcxotYqYd/8z9gv/Z8+AC7LXKlN1T6c=;
	h=To:Subject:From:Message-Id:Date; b=ljIiqbPjO9Y8yl7cl/jqIHXtWJjuo1r29HFceN5Yu7zKjExiOLnzjLYtSlZttrOYHqSvRecorYo7lChQoVWK+oMM1owDPYg84ufiexZvUID9FvSLsPFSV2YqPBdiDxfTCZJW1iCiCzluAn4HrtbVUoONOltVo7m6sbQ6QZRvqeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hekozAN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hekozAN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A534DC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767471833;
	bh=pTwdSICu+gd0VcxotYqYd/8z9gv/Z8+AC7LXKlN1T6c=;
	h=To:Subject:From:Date:From;
	b=hekozAN5rtI9zXypGgBK/HaC1Cy6PHc+NwIJ/fhcRYQJZfJ4ymObGIXk85gidHkBv
	 xniCViP5ADY5F/H1h+w/MZqQKAoAiWM1boUgUSjeFsaICYqNnVZRHqJUIlk/DsxMhW
	 D+riPaAejnIzW4Glhqxg9KYpbLVr3Oc6Z1XvxHKaygr6zKQ60hcz6R1H+/L+wN++DG
	 jy/tsXJvDSsi08I8ypc+ZXRzJd7TQfGp/qL9pSBl236dEL6a85bQ5o5b/G0f0yJsuL
	 eBhI6kOuUEwAwXPRSk6pBXgsQhc+2Z0dygnhBHZcAmpybleuZ+1PecDIr8AaoP3k3d
	 WsW/9HWkHw1kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DCEFC618D
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747183357.10209.6906167939026188224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ceca766064a1203485649cb216829939822d592e8bde6fe422d1cbbbdf0db9a
Date: Sat, 03 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767471833
