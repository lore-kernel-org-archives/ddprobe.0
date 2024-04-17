Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6622BAE2
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 23:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713397763; cv=none; b=BSdKVWTwAFv36/dYhZ7U9evUgGI7dDhsNHkPMnaYyDkP+IFOchL+dnbvg3fdpsgGfVX6g/goJttWlhPyp6idRxViehRlXvw8gkeCDbonqQu77XUqPpykfOhBN2hXu327u0YnUnX8CQt7DgTinTxSNu8D/lXaVgvbMR9sdnBsvc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713397763; c=relaxed/simple;
	bh=1kwfMWD2th6iovkv9LV2MCAAHEu9lWQHhuQOZ+gwI5c=;
	h=To:Subject:From:Message-Id:Date; b=E6ZF1RCmyiXNE1DTzWb0CtxqF0JLpHOkZoURjjzO1KPZc/BW6Hn88kBzgRItddm2OOzSMLYLf8Zntl/1NmPkk9I7lji48WrSQjQmnUnj9pSmbMpyy8bN8Te2BMwz9skz4bMGAWX5IEQnCx5zsZHiqwhMV+fiMTlQ2nMDxMwEvfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6CwK0SB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6CwK0SB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB19BC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 23:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713397762;
	bh=1kwfMWD2th6iovkv9LV2MCAAHEu9lWQHhuQOZ+gwI5c=;
	h=To:Subject:From:Date:From;
	b=U6CwK0SBm4iNLoM6Zqosk0mcOyEzsbVEre1UJ1hWa3GIbwIRP7qlgi9qcxau4iLte
	 o6hJhJ4Hlf4MQuHvzKj4D5xuHYsdWg8cluqaj7n1rlQ5TACktf517i9akbwkayHSAD
	 X3WcO9nMBt03gNqnDyIUJ3DDK83nYvKmsiJGA+PGfu2AF1bWFl3XRLz9M2uck1U+2p
	 5Pd1D83mJnzcpJDcMfzLuIqjvxXZyiR8aX7K3sq3R6HJCOAi8xQzFBcxaQX1KBn0Nl
	 IWXtRq82DaHcD/CR1qyZuPFTucE7JqUdV3tlp3kWSkGQNS2gztQzT0gsqsJmtOXL2c
	 gBlbV7vFwS5NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9611C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 23:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171339776281.28615.16000612313399340124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95860829797cdacfa208fe44db616b761fc91a61171df571a30adc89459785a9
Date: Wed, 17 Apr 2024 23:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713397762
