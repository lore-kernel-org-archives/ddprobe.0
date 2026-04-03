Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2548F38D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775215534; cv=none; b=Vghu+wXmn8KEkaaSppiOMAqshBorker54eh+B+5d913pSt2XWjSfJY0Xv7mVVYvahSYAnypUJXA9KG8/2/yo2H1RJBGt7VDi+ee+2WcmqUkHQ0MxuEk5N4wYIqLCZNO9aaFbL3GyAtSpYoWJgl104UIEl0TKUzGP7yQFHCtESIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775215534; c=relaxed/simple;
	bh=PxIb5eZM5YRAEhl+4oVaZMREBcp1RuR3Mpvdt5tg3wM=;
	h=To:Subject:From:Message-Id:Date; b=h2Mj51vXC0zpmSUaF/kHuGJVUwjtVwIYbGLiNFORBTqzRH1JwAEhwInFdEkmXKGkeQgE7QCdFFYGeubquXvMgACdQrhPV3jdeZCPq52YTMtuC33Z6fGPLxebyD5zHA1VdnZz6MbeIKlMugnR8HCGZWE3VrYMVc26wfyU5USEf74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzNEYuG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzNEYuG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B811BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775215533;
	bh=PxIb5eZM5YRAEhl+4oVaZMREBcp1RuR3Mpvdt5tg3wM=;
	h=To:Subject:From:Date:From;
	b=nzNEYuG6QeHpxjCmdZ7WPs4WdSKPlGJ5Bj9z7WlTST7aZoWAbaPqmLkRjARSj6lM0
	 +Y4tlPOs8exeyquN2tms/slI4B74P73gFqNVi+SM0TlRwIYlD5GWKeXxRfTkn3vmLT
	 H/DozMEB4ix9cIWMILlqSEMxzH2c9H1Inwcp3dMWDI2aO+UqZcvOvZPhzofydDMHTh
	 EhtZm3eyFGzxRX8d0KeXfAhAG3qKqORbUekHuxEF14TcPZ83AJ3hDN+L5wSLECwhln
	 voS+fjz4jx2l6o7xmc44QgGu4Fl/ZUyx6tuetRDWJDDCi4BRy3huN4ChF1a8+dpOUN
	 A2JaYaG+RC6Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA561E7E376
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521553368.7858.7435058249618452609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80cc32dfcf3956df75ec181f40e02e3ea0c75a91569de6665b9a0579e79249e
Date: Fri, 03 Apr 2026 11:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775215533
