Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7197F5221DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788548434; cv=none; b=mSYh8Lv/FMyJQuGycCuZJLM11RjGSgFbCxkxPa1AtJ9oMZU5B2vFgAzwR+ZDYjbXThP6tvmMDnyJAB7zszwZ+li1PGcNJ02BAsWVQM8w9/IqdnFCLpGs8fDpis1DawdjIoqy869q7zRbvItwWKBUY/RR5AqHqp6fvL/q/5xE5MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788548434; c=relaxed/simple;
	bh=eK2NbUaF2O78Mq/ENvafC1clYjdnlQkdXX5sKUw691k=;
	h=To:Subject:From:Message-Id:Date; b=mBZukkXpZYEdpt4BPCHS0vWyjpes3yCLYqwSWywXVvRw/S8DXacFbgwft/UljHPQSAz3Qq2drkkZmBLpFv4goMA+P1umtuAu37DlpUIGXdqgGQdym56y/j27YjSPglsAIb9p9CTqoy9fXDLotw0n3IAXrTSic4YZDYGS8ikF61Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptlD/5Es; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptlD/5Es"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7E9C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788548433;
	bh=eK2NbUaF2O78Mq/ENvafC1clYjdnlQkdXX5sKUw691k=;
	h=To:Subject:From:Date:From;
	b=ptlD/5Es18fF/jjM1EcX99JwqJ9lNY0f2VHbkC/+sd7D1RiyD+ExrlITeprfS5asI
	 R7XsS+pfiaoCzLvXCJt+3ggp2oidpR5GbdPrf3efQd3410RrwHTz3uRYJxqhJ8Oduk
	 KnAOBqPpIoPHJAFyfR0kucuL0nUE6BUtveBl8iHzbhtHXic0GYERYxbnO8jlnjdk/t
	 WBJPmyKML5d7oeNp7tY/w8XM4kc/kkWDJYyQ2URBHslyUGbr5yybKM4nyzYeKRN7rX
	 jwlCNpterwwIt/QL9eaARaX/3EuJICun1VT6yC6nVqWzcParnFM1rFDEx37PA0VSYW
	 tniY4JcXkm7gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62DDC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854843370.21635.14971322000129236578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406a78eea67fafcabec71f856677765f503b2dbdbd9a29e4d4845d4852e97b39
Date: Fri, 04 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788548433
