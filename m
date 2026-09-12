Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B0230ACEE
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789250434; cv=none; b=jbBUHeQx6epqfZqUJt3uWC1RT9FmqQ0UuyM0Zf/tHlTH38EqrsCMLSA1ltkMttt1fqvDJv9kqwau5P5dOhM5XGfERtvVIs8Bfe4hKjyHPj+tEpzDhv+R3WE+q2nE3fgoKr5SrtZbAIsPQkRNKtSepiRmCRo1sI9+kwHXr6P40sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789250434; c=relaxed/simple;
	bh=hB7bDSPgdPyffUw3jUP6IViuc2ZY7cwm7JSjj0s9/as=;
	h=To:Subject:From:Message-Id:Date; b=aDxrvpz11Uaw/+uKBBtiqwJViDDyevViDFA8IbqbjeTaDlwHEydvkLzkw8/HgaiSnjf77z5CWM1LVxR43eM+NkYAhDipIa4pbwCynlkvixCwATa5sQDiQwEAFAswjJQwppn+LFH3pUeAA816Uoh1Uz0MPJgvUq8E4FspOkgmrGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8kMqx43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8kMqx43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE21FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789250433;
	bh=hB7bDSPgdPyffUw3jUP6IViuc2ZY7cwm7JSjj0s9/as=;
	h=To:Subject:From:Date:From;
	b=Z8kMqx43gd2TUGHL3XFUJ++21abg8iOGkm75/K0XUGNeEGfWy2A+NwERrIoQ5fv2k
	 D0eaMaiBwaZL3hwhQd9HApuUJ2lBb4EXFtFe/wLseDahUHYXYVZiML+rpRIG5pOuuw
	 MemvnoN9YQeHsDw5JHF+sPt/Q51mnh5SdY2K6eM5GE9OC3Q/hEay8G0Jltwi5HbF7W
	 0CVoeVejJyZxfAlxi2dZcYBoUCjfTwUnUI1PkXyVzZ4FIFteJU9cSo6+HGuCb16Quu
	 wjH18hqB1e9mX+fbV5alpF9j/Nlg1pDDEhOSxwgjFc7ooTxj+02+5INEB7y3K2HMGm
	 ndQVecsHFxGWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABA7C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925043368.30682.16676257031533525001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7992c75a12432fe3822294d5c2eb53852e93f1093476aef2c2483d05ac3b590b
Date: Sat, 12 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789250433
