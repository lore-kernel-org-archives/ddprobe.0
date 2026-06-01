Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535111F0991
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780291474; cv=none; b=gFjlx8/aaxa3nrkoXKPz2L4cH52eO47gDcuQ9mLYXKtslEHpcZCvjJnWrL2EjIjnbIedY1RFZbUW9vpp93JUH8vp+wZ1dV0WIozb1DosDDOh3kuANzCLvBZvuqAl4bCmzwC8zpZKlda1NLyG/IiaY/AvCfef315t6Hp+NsoPV0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780291474; c=relaxed/simple;
	bh=ci0c1Tfg1uzEPojgZyxLge54Wx9y1OvogJLNzKpTksc=;
	h=To:Subject:From:Message-Id:Date; b=g7E/n48A6XGbAEaOhlpFdJBG0GJRq8etecvvdxTItu3KnzkQOIAzTGJy+VdU9B5jLUgODkG4ge6Rb5kYMjXUSi8qKYSfx7dl0rgTzLwF7GE+RRCGUnRlbmM6sL6OiRBclvp20cCdZspfRTS4C8a0z3alfu6jVrnbsUCQqhkhZkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9kbCIm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9kbCIm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AE1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780291473;
	bh=ci0c1Tfg1uzEPojgZyxLge54Wx9y1OvogJLNzKpTksc=;
	h=To:Subject:From:Date:From;
	b=s9kbCIm/ugHg60orDuWQBfm6gU+UMAEskev+J2iIEQJtEv4dsLN/hXOQXbfSrz1ql
	 EVJzLbuGCnVkGRb2DinPtVmtSzOnc/beq4mLZ5CwnHz+KXSPjNtXURBRo2STi0vwKW
	 A20c6KZEC7q6GyLI7TSzVMdk74Lob3ZniUetrIh5I8N+Scbz3WxegqVlKVtAPq55bj
	 JxvTkszxdtI/IIgQ0vIcoPLG94mlOHrtd0uWSxdvGoxNfiBpT71hEpnrQT935loT5D
	 CJ+7KyCRApnqmWjb4QZzdlyLAfr3BDBzJoET7ymzvgj8PHKZi+1pD7ZDjppqjGQwcf
	 lJ2fTqp6yvXFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A05CD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029147370.25899.7774308469316984783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2fd6da1189ebfec42f56f21cbb1d010e84e44f6e7628ca5553718d8aa77c2f
Date: Mon, 01 Jun 2026 05:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780291473
