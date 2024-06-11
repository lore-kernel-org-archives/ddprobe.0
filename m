Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A76938DD1
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718111303; cv=none; b=DDShaPnMWqoL2OEmD4hPC9n3MqTX6VJPEX+njKgv3zCg8quKgLjPHyR0Q1IDLMEcdn1NCzf5oDH1sT9oZ9ufjb39mZVmnt0EJNPaA3Gg9CEXzuWLWGC6BE94pgmygv2qcv603/0tn/ZwoFqn+YAgSIMfiFSRfpFStznsIguLAMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718111303; c=relaxed/simple;
	bh=3CAVx4s8lQgXvXwy2BSKg4QsPqUUu5872u4rtmFfgc8=;
	h=To:Subject:From:Message-Id:Date; b=bvy1aa2kcg9yDCpo4odjh7Dd7ecdxD5Bv7LSvzfT0iIwxwmBPPi+WB89dPW3qEX6crLm1clT0hugQCC9kBP8LMo9CHzuTpYY39QvZvafUpO7WPrXhB7tjYdBFpNrKQAjsuvhdKciXW1/Bl8AUrlMKXIRdWlLFtdl5PKu6CmyyIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoNhlvxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoNhlvxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B09C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718111302;
	bh=3CAVx4s8lQgXvXwy2BSKg4QsPqUUu5872u4rtmFfgc8=;
	h=To:Subject:From:Date:From;
	b=eoNhlvxjY06qocScYVefNbGSRf/i2L6DjUApvSChFhRanH10uHu7YdncTFG7qZyvz
	 Q4V/5sMojgd7a5N4HPl7bSceMSbEBFZnrFePF/iHK4xHRc6ZbBXEB8Z2yCfYXowf93
	 HrblXOVZ+zHweOqBatzKyshn58W3PvODgL0qjK1iCHVxGvcWX5q+foTjBlwHdKiZ7Q
	 sefnfg2PxljEiYFyxgm2rphhM5Nng4K5WORFM8JoSY7vKkm5ea6obpZLMWvCCGO0wW
	 z4Mz3bRRDlyVqgkXZO8qGiINzHULjrVZIWjKoGvvRyzq0qnbQmEnb/uAYp72jgWkC6
	 tqQHxV6ZeSV3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1736C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811130278.29300.15323698441212787404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1e0575527256121baaea7c48353846de89859206b4e639f14d6c5a25f2d742
Date: Tue, 11 Jun 2024 13:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718111302
