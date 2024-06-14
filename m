Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575BD1487E4
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718393303; cv=none; b=gyWocUS6xAbsNXp/vrRF8d87U8aH5ZHPCTbsjmegq1WwvLQgYfa08hfrFhm/HtR0FUJQ70ccFD0g5I5K+BZIyTKJetlSm7yWO0daQSrnVhEP5fnwW7xxZYA24cJSnFQNjgtzO1luu0q7/WSRcr/2XM2w7Z7og7MtnQXLY5zNOeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718393303; c=relaxed/simple;
	bh=IYrlraXuqYDSymOYABNAqGWvJBd2UYdEo6uNgSj+5OA=;
	h=To:Subject:From:Message-Id:Date; b=bNcFKBdjh8oVhhrKDjaaznnqCIVtZsDAwk8+eYE1UmPeXZeCeE0+PW4iUItWkwzICgOFNxKvDTIOo4eVZZfWI2Tw4turqTtzC6ONzVgK826JJCN70Q02p46+q/fi6Rdr8P/LhNAsb/s+b9ORGs2ee7VhM7Q/3VrLssBIR0sZClU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuMFchHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuMFchHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1AEBC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718393302;
	bh=IYrlraXuqYDSymOYABNAqGWvJBd2UYdEo6uNgSj+5OA=;
	h=To:Subject:From:Date:From;
	b=RuMFchHtd1zzTCsHPeav2u/TP/UTUhyMZEFpTIK2rTBtxqWHCB67og9kY9INdu9GV
	 btaV2nCqRb4u4yExtID+YWwWUaDYC68LFqf1SK5/mKSCSD/e3i7Oi1Ls2iX+Qvhol+
	 sEpfAY9xbiXtXAcxkqhSu5EaU4c9G4Mo0iPQHC8gfQBW0/cA9xYGOM81OrjmknnMtz
	 zgKg2T582aUs2gFxFxXeze4rSXajZddRyZ7FzhDLEI7Ay7luEHpTgfUAxnziyu9pg0
	 aAIs7ToG6lWBnXir8lTgqPg+8McFjeACIoYwMtU5f9hh8B0IPCiBMnmCZVKLoebLnb
	 icHyIrAwD7VpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC34BC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839330282.18523.7727895550178861938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba73518cd55f721fa2c29cdcb600f63d302d28a11801af1430d4e6888478a07
Date: Fri, 14 Jun 2024 19:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718393302
