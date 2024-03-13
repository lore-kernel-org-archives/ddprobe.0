Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7CE653E07
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710367696; cv=none; b=Be+Se6ckxKRqkPnuUhhfvXRdZa8GONf7RyaErDygJ2aAi8Z4OWmUJQMJNc1vDRxdCQOMlwXfBaRExUilNmIfyevjCzjYuZt0r0WZMXdQ8IDTECFI9KzhW8bmdXvIfqcC11aFPwwXzR9R0wtV4tlfZPKf+2Vn+luVGwmE+8GBo1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710367696; c=relaxed/simple;
	bh=Ln0tN/QV0OuzVtt6kqM+iQ+hCUGF/UJMqecACQMjkPw=;
	h=To:Subject:From:Message-Id:Date; b=fXmNGX+M2dJKQJVqRrtxqdaXm88e9uulvlL2fiS3Aklm6SZ9KgjAWha48S++WOJ9zUv+UDthj/lmb9bbqQSqveXucejY3w/iOlDvRiO8c2sXV2KAvjw9bnwGbHE/U9CYR45r/kWOanmPlDA2IUrkwEXAj1TbmAPOAKORicoNANY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfwvc9w+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfwvc9w+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A078C433F1
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710367696;
	bh=Ln0tN/QV0OuzVtt6kqM+iQ+hCUGF/UJMqecACQMjkPw=;
	h=To:Subject:From:Date:From;
	b=bfwvc9w+FsrFWCEnRgWEB8cDIUIv9wqulr9NiFgLo0TgsPC8NfVtk5Lspl3yXCpKW
	 yZGUWUGer22cG46nt26JSrs5/mvaWV4LP14f1nSKAVVr/16xqSDPks5micmE0oatwC
	 nVfnkY4o/u0AM9WkZLnNCfruBHgDjULYbaStYrwBrOjdpM1W5I+WQOTL6ObAWFiBFU
	 jTUBaXF5Y5PR5xgDnatdSiAs9UnOtayArPVDYPM8e20d87xtR2MOEmdY5+vo9p9U+4
	 2TeqgeAICrkjbzRpfx95Glpw+yFgTYtI2PmVkoh5LWV7j9GqFOQsQVXTAu/niUF1rc
	 oSxTNWod16otw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E863C54E66
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171036769638.8240.4124767102862277580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e3139e8dd8a664e9260bf7e531c506549714ec055ef1b3cb4239a63649e062
Date: Wed, 13 Mar 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710367696
