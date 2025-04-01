Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EF51FBE88
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743507594; cv=none; b=sU4B8Q/pw2o08cAieYQc9gosX3epQUBbiqK0+kdS00wDhtWnsuJ3R0VeXJCOfDcVBGMWCXSMuLCowFKstyMofPvtZu9gbNHK2y6iF2CdHXMbKuhlNciTH0V9TlRFpTOkSXeVdjEoqd8gE/lwnBxuoaFrF9zoPXfC2xZ22+ihugg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743507594; c=relaxed/simple;
	bh=EXwyjl7sQ0JFaaECTJ4UP+RBCC9dy6KcBxToWai7OIw=;
	h=To:Subject:From:Message-Id:Date; b=kSd6B59lbZUHPIPArRuJZGpiC8zhNDbiqZGfbJqcxBlW1qocElxJwMuMqs4LyrPhLnopUsocb+TNwMOo1EXEuz4zloty+Ru3BsjIIpzYwKDz4jA2e2NGeKG6ZInk4ZHD9/Ps4gOtmwMIeLX6MX+vVGcZQhhdUYucZ/VSHJVd8sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emg93YYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emg93YYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5339C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743507593;
	bh=EXwyjl7sQ0JFaaECTJ4UP+RBCC9dy6KcBxToWai7OIw=;
	h=To:Subject:From:Date:From;
	b=emg93YYjFC6Umf6S+80spS0Cm/cYjqf+AbXZgQwIqtNmrSsWIgEUNbf1yqUU34lE/
	 +NR5PjKXOKwPuFXbMMqT+/zgM0/E5S7O7J5b3hpzGQqSTvjShVok0Bt7UHXXFXpy7N
	 febSxrJ0wRqdzi+mh0iFiO+Gr9MjUa5jsL9ww4Fai0xF8JlQS1utrkDWHbZA++XlWL
	 O3TYdjZ8vWBYz/9igxnf45UpmOQSh7Cfg0Z4HIMRLf0Wy93uTH6t3jbiVKTF/5cPut
	 ulcHB4vdm5YCBJgtLz7DStppaXd3xeNM/lijP4q80Kfj/zUUDx0Y44OgV5VXoblwXC
	 vDVY/V7GSAetQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9048AC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350759358.22214.8122880413399213027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c485af583657cb375b8fa51015913136048b8ed79350b6842ff649d352a80c4c
Date: Tue, 01 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743507593
