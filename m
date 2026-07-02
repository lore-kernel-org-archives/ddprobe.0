Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE2648C8AD
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782998914; cv=none; b=Ldpr16iPv8l9rebrOp2FZNa51hmhO/U/2I3CMHnvcP7oIZY5r06H5E4B6S/ozjwg1Jo3IjV/Ckxx28lxJ/RdRQcgoKODPqfjzBul7c0GP1wvMSOUYYBWCw1cp8mmJCBrx0oP+t2J/bG7dOhjEAkY/A+LW9B+1hLrRb2XTwTqulU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782998914; c=relaxed/simple;
	bh=VoKebxj3pUbQTaa2zeVLAqCMc8QLC4mgMx4KUdSi1p8=;
	h=To:Subject:From:Message-Id:Date; b=jNatHCOO/izs5q9Y5/JMN9ApaNNAdPqvI+l3IGZt0iTfn2OLYLz2BcvjdGvKtK6mILoaogGkTp4HOtV9PojUpQ3/3xPa2fbiq2wNL1yFrauFGBlgdUSW0pzlcDgNtckXMWbUs1vrfc0US5VVptuZ7AvQgjzYJlR4qoMggkb+IPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4SsB0aO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4SsB0aO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB74C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782998913;
	bh=VoKebxj3pUbQTaa2zeVLAqCMc8QLC4mgMx4KUdSi1p8=;
	h=To:Subject:From:Date:From;
	b=Y4SsB0aO4bbAiv++5mRSAXeD7F3P2ELQcrZGuM1Ve44zOjlOXXdCNXTMxDQmurJg4
	 rxJdI+a2tls09j89/p7WiUQHfsFUsTOy/kU/ztCkdvWWlBuZY/NnQiR7M4exhrOytt
	 DZ5cpdtXOpWrgQCfIEpMZUGqnpvp+c/mkvJb1+lt8cDvm5+JdnKSMjMr34OiaaAdHH
	 RyTRbOxwqfQyzUF7cNGiT5mmPN4ELK5jRT2exLtk116COnqLcOfbNoXAhuScJ/XsFL
	 NJBs86lK1AHWlicMK3wzAz/l8YyDzJBHEaIs8PDZTDBuzqy60vuyUuk1s0Yoywa5US
	 yLwQeP0DCH7OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA0AC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299891369.21283.9926692413243822664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aadb981bc0d169033f078154929e761746845b2d62d1242d26254fa59b795c0
Date: Thu, 02 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782998913
