Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CAB54768
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773480294; cv=none; b=MgBSyix1pPSSFDv/ecjNIWL2MqjOvdjbArIguINFZaWLROz4o/Nl7JRe6eThCyqkHDABkySYr52qO0w5Hx1QQY+8Xe3kbBha1hB9fxCZADozzG+6xlPj3Gh0YOdXvSWxQq4F+WTAUxlQ3/FX4H/16J/pmIHkZEALX8XZe6S3cWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773480294; c=relaxed/simple;
	bh=suArTtVx+tTVeX8ss30QEbFsRdcxKtbNuMc1Q6u0tJ4=;
	h=To:Subject:From:Message-Id:Date; b=Zwq+28pmjYqHKFHTRF0i+wuD78sEGXOiN2XmKrHhld4TcG/DYPZ722Ra/yEIZ6sGbfrNtEPYr78KGKZwezkaGhba9+wyvGIW17RC8elvMd+aWZ3+MvP1X+bEP9DYmIq8K69xyugjd4XRyXPnmW3EOs2lUY9aetrg8XMOnZwHgX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpiOzPZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpiOzPZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D56AC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773480293;
	bh=suArTtVx+tTVeX8ss30QEbFsRdcxKtbNuMc1Q6u0tJ4=;
	h=To:Subject:From:Date:From;
	b=OpiOzPZRNhWyTXt8KFIlWA8oDUVDXZIG8fLcMRoyYEDYcafA4/xqbFbrI3Sm4kMD6
	 TQcbJO46Sppb6+FAtCDTRirPgQu8R+ksoeR1EORuLFq6Vj3b28ToAWhom2acrg9cFx
	 Sq2YVS6nEiYB1P43brLCwAG/KWfqtoZ5vv+mn/Kkjpd69Fina7Qu6lIQLJfiVxNpvb
	 DvstK42Lk4ZUqVjivK6QBOV0tR8qvVh1B14eZaZQ+AzjWYsfYvkoOVcuBwn8MEhfU9
	 9lE7amL92Ybr6bTtTqnHJxzsFRcJlKxKG0uRJzuyPcS+Gz3VmtvGGYl36vQKtfcPS0
	 d0s4ieMf+G6GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB84106FD81
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348029358.18818.339950341268976856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c661b82221ed6bbebcf9ce1699f78b050779516e6f4274f4405cdb3f1df2ad55
Date: Sat, 14 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773480293
