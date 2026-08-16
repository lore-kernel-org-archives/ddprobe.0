Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F09341650
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786859434; cv=none; b=AizbF4p4Elyre06ehlbPJjn4cV/dl/st7AcuFTDCVaA8Zt4HFXnPP6n01AQey6twpUu7SYi4cAev9j4Asp1l7rAPjg6MK/OSreAPOH+n5E2mr+LFEM4WfU5IrxG7vMPIPbFbXNxrelLtcnEjOlOgRwPoI7UGliDIISP4dRZ/o1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786859434; c=relaxed/simple;
	bh=Ul7FzkgYXVgoecaWy6os2CWfcQjlvl4ya9jZ6ftPZgY=;
	h=To:Subject:From:Message-Id:Date; b=TikzfBcHWlskdLBe8CxdyOjMzNCcq7ixhXXwgVm/ux5Pddly4L5fowN2BzBXz4hoSaiRoAFANIw10YvwajZ9oL6bgmAYLBuHP1i+hnyHPGF6v8r1FKYQPYwpq+Di9kkgWabsemH6P6N27pt40sXHxdurlH9//ExZWmBiV8mJ6Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnvWekbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnvWekbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F8AC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786859433;
	bh=Ul7FzkgYXVgoecaWy6os2CWfcQjlvl4ya9jZ6ftPZgY=;
	h=To:Subject:From:Date:From;
	b=pnvWekbzPWcMj+Y+DR3SvbocB0xdR6UMYy5hcgmzmh41MWPEqJKrd3xZHCxnL3FnS
	 uMutpov83OzcwEmGViE5psHF+y2LNFor3BSPihO6QZ/d/Ak/DDKYsLZ85bCnU7cidk
	 hRuPxiKT3GNPrMeLfXvGN1duuZ1dg3wxXYtObQpkacYFGIf8+/hvt40bXa+5lFFqoh
	 GeiOme9dfNs4UQbiweISRUQwjVueLZ7iyDYZpHDqome0lZMS7y4rYKkD5lH4y7WtZW
	 s1JAHzpwxE9lUyyYU7ZsOdSkNs5ToTI0qyiMdcDKe/3lsjWMUnKJ1Ec3/2EWycjGw3
	 RDeKY5242b01A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D05C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685943368.32242.8410780015452354200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0256a2914f15455f5b368355e7e45ceae8e8374ce3353f7446194098f3a4b25f
Date: Sun, 16 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786859433
