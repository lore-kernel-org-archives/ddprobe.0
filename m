Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E5619CD01
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738060554; cv=none; b=eyZgIIsRxItFP4JxM2COAfKsKwJeK62tFeHY62mC2FSZM5iWjPxlw5qfJg9F0DK82C/1wRS7tLN9DO8cORYkcXpmhhYNS5mmICQk4+fZuvBZYaeByNjys8W+/ErZV0f9Sie0guS6ZoztwAHsZpHbCtwdtjwUoovLoj4BonB0zWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738060554; c=relaxed/simple;
	bh=u1DsaldQ+wMC/piORLayRliSWpeSA92/qKmuoi6vuws=;
	h=To:Subject:From:Message-Id:Date; b=XeAzgixp0rO59KFIVkC7F9hLwcpnjFxo6OL1YsY23bUk6CqSEk2LMNTXAQmoddu+pUMmOBOZNyHItsamOq4/bPoie9IWQpEhO8J+4Y7uYDvINBCgwespn2Z4QZ41L4sEbiQj7tyJNvRXsWNOOe2dlIO+EkKSawYbCjeDDEGgT3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=no7NEcu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="no7NEcu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF28EC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738060553;
	bh=u1DsaldQ+wMC/piORLayRliSWpeSA92/qKmuoi6vuws=;
	h=To:Subject:From:Date:From;
	b=no7NEcu66gpt5VGQUfk57DaFmp9iMcNhVD+3+R2Qunx43X1UXx+sG5MxLMcLmiWDW
	 mMDNyksW2hZGM+IygUlxRRsUEPvaOsHpxnt0pIMeQoZ1nxd1Nqm7Xa4bXDYjdG4cDd
	 EZq5hvurH7PjIMINsJIoAtF2Xecas7H7NIo9thyylChwV3SeSeMoSHhZI2Qo2xhY50
	 lrIyHzpIw0o0CnUGsZkWe10j7CmKyg3jSKOnjT6gQWlhHdW2J57y/RpGuGmjiUaExR
	 6tXZ2IfDZUL1RTlbCPMxwixQbTyKGKSGO3WwEVG9eKZr+AER4YTG7LE8jVs2bxC30t
	 IYeFC+7pUXtlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3E2C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173806055369.23847.9044056798772151433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0284ffda43cfa6b93136abf04c21b5bed49cb49ad548c8934e53b6529d7a569f
Date: Tue, 28 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738060553
