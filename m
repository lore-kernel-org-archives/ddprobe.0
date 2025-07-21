Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA622036FA
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753102793; cv=none; b=LGsdlPxc0NJYTdWgbo2zxcdahF0Px8CDCeq9OSc2Mn+qBCgfplJyYtuo5XZxm9aV5QkAbE4AaDyF2kADCau46w/59fWRiKTGu8pTn+01FGybh8zu2KQBfaMX52hScMyfmgIpY9fJx04z/hwiITlTLAjKNZpiNlxr/UI9/yP/xV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753102793; c=relaxed/simple;
	bh=0SIftE0dP236vrvY0kRPD0YcNqxCwvPUMhHR/o3MoMc=;
	h=To:Subject:From:Message-Id:Date; b=TZZA/nrObQsbQi7VBbKYgmhscXmifjBcOUiiLH6jq2YoobYa4EySkiuslLQWqCXVQX71+2fry0skti76iuZWfJ7m4DDp74RdJNdZDLGrmzEkgmts6BYg+CWjVhTkzPP/5YTbPdAv2y/ZnVEsyx4zpPHwmRQbppIhouDzm6qTMFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMNSVIUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMNSVIUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A052EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753102793;
	bh=0SIftE0dP236vrvY0kRPD0YcNqxCwvPUMhHR/o3MoMc=;
	h=To:Subject:From:Date:From;
	b=kMNSVIUgSQKMM1934aDJXcKOxmWj8EFEl1XTe03GkvpfIRJ/VV8yfYPBkBRMqwjG6
	 MHTiDhHD05pfd7bf3VAlwZZnU/Xlkn+SzflutaHX0k0CLV++dzZCXL+cxkOttJfcj1
	 2Iuf4RqWCNTb2kyE6QXdr4+WGYxtxb6O2/ECSxmU7RC9ktIlIHeqJKAShuDvzOpC+q
	 DGx2pjHFFJw+CLQO/XaJsIwSVC/dOKAC7q0bvLjwiO0L+KhKL36UcAFiHtRUN7R8c0
	 ar1qP4fgRMrWk5B6Sx5mC4+nw+1yHLpfeVN6yMerDgdQke1Ecll/Yl9NsrU4L3Qfpe
	 hROzZXvt54hUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92247C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310279357.27989.4748973746864096455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7cc15f61e04166938d58ba8ab44f9fbe6f1829af50c74d80740cfb8d2e14fe
Date: Mon, 21 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753102793
