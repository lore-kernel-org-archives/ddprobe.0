Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAB92F60A5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762856394; cv=none; b=fzlfveCaGGoMS5YXdNBYXVdLf8eEzGwrOkQiYZOMz4NFRa7P7wwGe6tseb0omwKp7+aPx0rIM0+y01mH62RbeDDI/V5tofTnQKhT8EmXjho41v8qNy8YCL3JJcjO0AqISkJKGvvy8dQyD2REjRNO9v4PdBCeCmlfVAryIoVKbOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762856394; c=relaxed/simple;
	bh=QizwO9p3rS/x4CBSe1aZtzr5g6vShl3RgBoNwBV32Y4=;
	h=To:Subject:From:Message-Id:Date; b=E6lZCe/NoNIFd0X/G+I2tVdvxfTWS4r+eF0Q1SEC/r5LCqvtQueLyXwKDmBYuW5DuDDMglEpRKz1AxlE0wtaV6frzyF3jRvf0LDHkyeu7TwU3BGcMczvFlx2x3tMX+8XE7ocv775biY/H9GlEKPBJNCb9TwR9HgDOgDygNPncYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7KxyGgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7KxyGgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ACE1C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762856393;
	bh=QizwO9p3rS/x4CBSe1aZtzr5g6vShl3RgBoNwBV32Y4=;
	h=To:Subject:From:Date:From;
	b=o7KxyGgxxLGgk2koaIZImDrpY3NbmZuO9s1Pk0ChuF3RrZjxk7fDfEbNM1oSgLlMl
	 9GdxKr/ZWyvFO99FOXV0DYAi7PPmNk9iBikgmeRiGYkPaRRdnGA4NLDdlzovKk5Nkk
	 RC6zOftWpBhUx9mMfgwK6AS/yFvq+9S+PZRBU4W9b+rDnzvxf0uBRzDRElnzcpsQLU
	 0CKUdhS6p/CUx6Mrr1Xapp9/eEUZwvZ1DMoLcgqj31FM6P1hiNcLazj0ZjmyWf1bKm
	 KshZn8IRJoLrLP2QODb3ISlHGB8kLorvWzt/CZwUPunnW3/RoL6DchFydodE2NCvdK
	 1M/9NAVZ9Q1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CCCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285639357.3134.9827809875617709926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d9f637a7873b0c057d06640bbd185fbcf04a48879854837d84dacacc6be8d0
Date: Tue, 11 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762856393
