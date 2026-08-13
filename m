Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0FC455161
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786614034; cv=none; b=tgXNq/FbAJva5we7oChh/0fhptHILs1Li6ktBOQTG9Fg7atNdQDa7gJePyNALLBUPJHrCB9rHh39NgrRt6oG18KF1s3Wl18ZJnN7DumrVAJeCApdGBmNu/m3TDQeI5RqlYHQbLnnCc5wZZNHX+6THW9lkSW7YmR49XBBhN7JJHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786614034; c=relaxed/simple;
	bh=IcBl3d6mXbuNhKxTcOetfQ8rsgrXut0PE+kDEdCxaCk=;
	h=To:Subject:From:Message-Id:Date; b=Rvq44/T6Lj1jpQC8QkDssqqWHj2CFxnWu5/QF7smJfl6OP82FVSrc08pDbzWNumGx7uwHUk4kkaHPo6MW2i9QJL7McFu5WkmhKKnxPnHA0yQuQMigYbaWu/qD5jtW0y1LPdDfeRlECHCLFUAuJrf54dhvgADyX4ofT3uRUfBKOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmt7nnNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmt7nnNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF68C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786614033;
	bh=IcBl3d6mXbuNhKxTcOetfQ8rsgrXut0PE+kDEdCxaCk=;
	h=To:Subject:From:Date:From;
	b=mmt7nnNoYAByKyR0nn3xMd9HNl8mIDxXB8CjqXZgyXQwNur5QkitCyGlYQdFVA/5R
	 QQ6p02QFCk4DrlRH0ASmFwUubzigHretqB5VLGRm71Pn32uZWaG7rH7BQqIZKRnCnN
	 xi4BDygGqHn2cxEtULwFtDMseURY+wXafrVzNS+QBzrn3C0JGWuoACBcbDw1ur6ogW
	 86VzE+C0lWA4xx4Qc1f0HsQFmpVSKygmmo9enJv57A8dDlaU4YEhBtFC54QwFCEaUO
	 iyZJOfoxw54+OKs0d9b/a4gW6UuG92r3ekPthZfHOBAik5qy8ViRAJaGlxk7Cj60pm
	 Zd1vdlraqwLDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78D6C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661403367.26132.12130217298598462079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ec3ce678a19c5ff806197fbba44748fc3c69a41e0e81c100adcda70da3a569
Date: Thu, 13 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786614033
