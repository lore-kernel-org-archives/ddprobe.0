Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F3E4F797A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772560494; cv=none; b=UYyuYhPZLACWwXuPfago3A2vy7HF8lmqKcYTs3NUWfb1m5IPshKT0GBIsrI15uRzp3t09Nt4K3CTy+USdqgtHUP4Vu3tCGXfjscnWJGDDQVqfohxnAghPOjRAQH5zE1CwIipUFBl9VLJDNcnH5UfgXPGLTEUKIoFfnPmgT1FtaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772560494; c=relaxed/simple;
	bh=TlleeKv7+KtgeJxFhJXhnFeiSeAc7R98JZ/fKc/PHJE=;
	h=To:Subject:From:Message-Id:Date; b=KipUOBYF8sKje+EJIpwHv3Ud2S/1KAEHtioIfkmzGAgJu90BIXd62OoJTiidAsoiHJOHOBu4e2VBCaGJ3BC3Bs9JRT26qjZ+PddUXeXaHDCF1aEEo+Rh9OmsC3nJ6iiWy3Sls3aB4Q6uykkN4btr5HiQ7QDNKO/evCh7jQS4xl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApUKETjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApUKETjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A7CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772560493;
	bh=TlleeKv7+KtgeJxFhJXhnFeiSeAc7R98JZ/fKc/PHJE=;
	h=To:Subject:From:Date:From;
	b=ApUKETjHMDKQcBkjFQLCkrqwln4JTaCTFlb7FLnduheUt1zu0CRT+LRrZk4vNQlmC
	 6g3F4UKUrQxys7HsOuN9Z5WqkslyblHzhOfp+PIubgTCwAECJgbwUoUhoi1H3ZCCSi
	 Kp37SeRCOOzZJiJb/o1ypC0UV8779CqNIMwuIYWvI+cnMH4m41bViEEp8yHXpRV4Nw
	 tMAFibXusGsrocoo8862UTogJQ2z6Yl4R2BgmNV6WMlxdbUUrPiElMA88a635zmmNA
	 4y3nuKmeSJU50RWLL4+K9l9itjoYZZCCwA3yVXxuYtasoaSqLyZkHMgI1YJK3lOSut
	 sgMWyIToqx1Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF41EB362F
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256049358.21453.1608834323231158931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72da042a6768bc8d5c070645576a4230ee6350e52f5758a58f873aab2251875
Date: Tue, 03 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772560493
