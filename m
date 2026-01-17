Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D73F2836B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768652034; cv=none; b=Zf1HMKcoQAEZIEY4SiCK/N223CDKIOJcwmk+uF7L5t+YiQkMTgvELk0DAk1U2RHgu+N4ntwWUKTQBoTbir7Pz5f1Bc6YrtssfIau9ilQ6W/4StVpmSKMvSyWiJJH1PJwtbMnWa1kkyPAjHdtbSs4ViJJ5vqpsS8d0sowNXShs2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768652034; c=relaxed/simple;
	bh=KdDkyrrrVU2rW2luEjUBnaMlb6KVY6PeHowp9bqTqP4=;
	h=To:Subject:From:Message-Id:Date; b=lUwRaz3hBbag2AuizQIR3GJMwsLfG2nEBR5oa0rQ1ZoujJjGNj5ffem/ZbX+zr0wKw6SN9bH2YPV+w9FZjFOVBnX/I68NGj/9kL4bWjIRwW13Hlh7LY2GY6KDq1lufjQqG3cLr4CbQ4nLVdy8bnoL5xoDBna0OtcjbAMiQBFYEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXjm4Ise; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXjm4Ise"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768652033;
	bh=KdDkyrrrVU2rW2luEjUBnaMlb6KVY6PeHowp9bqTqP4=;
	h=To:Subject:From:Date:From;
	b=hXjm4IseAwyWieObEJAvm51t9pV+gMk7jzNzLqZ7sVSF3Z8YHMgC4dk+DWMz8ukK/
	 WyC2XKO9Ik8jF/G175WJlWUrftT81+gMRWO/Y44O9nuElyMGcJTkB3SdJNlUmqvE26
	 By+b7+osoW13uqBh5+07VrdtWvp4QVc/Oa6ud/bDjnRs+6DZ+QuY4zZnZ8pOPim/hr
	 4/iPmf7g9ZPkjMilZMV16peCmq2/eVhD2q9WN7ZibkDO9twYaeCKtKljZhr3dfZe3R
	 XLpJgvHdXbwTHYrkFg9ALKTVJ/dJPtOnPsrO3JiIwErdDSalGvNNbXNzaZIPcHn4DI
	 NvtppawamArZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EBCC98328
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865203358.14087.1297527061979862184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df552c6cb2c3327733ce4e019242a9c26a3f93b29450e79cf87c55bb428c2b13
Date: Sat, 17 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768652033
