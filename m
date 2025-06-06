Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A232289371
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749229194; cv=none; b=hMyUUff9KRAFgBALN7zmhJzApuf2QN6smORMRK9HmI0aAVJucAAbhfr1Afkj/3VOCGd2/AHdw83ysJp3cGFzmDdP3UcbhTMVNg7RGKikTX3KnPckHLuHpibjPm3YoFpWeApJfFHqgw3AoDBDCUWWt2+/g22nh5HLFShJs3SIyPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749229194; c=relaxed/simple;
	bh=OouJcvh/Hmt8kxnmdce48BxtYfbFZpt0SsiCnH2+7xM=;
	h=To:Subject:From:Message-Id:Date; b=bQzAqL0xQDFj5uwjJnZtEcYHSSkTULZiIZXdzKtnb2to0A2+q5BO+UCFq9jMzyaGmV7UwmSbn16fLunEbyBYJ6mpnjgFllq50NAhL8qqA028X6b+eihVM5vXpNqUCJdMOtYwBOFCc33Z57ziAJIdAUVQ9zmNCVNaoT9xzOQOfr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u30VsGD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u30VsGD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749229193;
	bh=OouJcvh/Hmt8kxnmdce48BxtYfbFZpt0SsiCnH2+7xM=;
	h=To:Subject:From:Date:From;
	b=u30VsGD2kANxNzvn0Y867adSvjzv9LBe9LgNJ6S6S4iZ2VAKb9S0aCO9BoI9TDDaz
	 KUs0AMUNZlX3S3zs7KYNggX6ZqtVrxHf1GdN0Fnvwsqs+Cp4rIlMpCeZThYm1yLkRP
	 WdTpWBnhfCyD//f5oEZJKmOvahKq6TaBqi8D2PhPI3LRxuGGni1ezNB9z7qf5Ikp1a
	 1s2v7+B6g2oZBWTvd0B8zF3Rxef3BbaHoZ2Uyc4qtYVfEuBcR8KW+7xlD9DVtMxZZc
	 /rugtpEMk4cF5PV06LAOoBtEbpMCPN1q0Pb7KKAlADJHOSwyspVrMQLyinzmmT6Bby
	 tGJOkpDXq2pxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CAC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922919357.799.12966149055088405010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36fbe0dd1f3fb0bf300351f13fde3958562eac773ed25ff9de6bf009e926c4f8
Date: Fri, 06 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749229193
