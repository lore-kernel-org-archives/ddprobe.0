Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407332144D7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775785654; cv=none; b=YOKmCwD/MhjM2W38d6kychpC2n8f0QUIoJF7jlsZ5EYXH75kQHUlMHptoQXpC8wmpkmBQAcHZBKCgAappdOKi8gQ9sZUOzKPUgqkm6Fd26Ch7UmyfqhdFVSm9s1uiI+e+U64n3YAVRzcOVDRlzGsnDO92Ml1hUYXDPKpG1fE5E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775785654; c=relaxed/simple;
	bh=10pNb8VWSokBdQqk3lDbhMAaOUQnQEuyfGvDD+GpKME=;
	h=To:Subject:From:Message-Id:Date; b=DxTwTK7G2GflVhvRWsbdZMUIqXb43eeNj2Wv0FUWvGw4jU4sy/DurKCfqHjYLii1VJsmZD+S6QR9gswOmu7FWr6RzC54QJOI2yHFq/PecTk4WnzkNGM65zMsmoplCMInkND8f1gsSTAa7mu1CqqCa3PlveKpGdq9F8qQSLYWVrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWIyDSHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWIyDSHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3B0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775785653;
	bh=10pNb8VWSokBdQqk3lDbhMAaOUQnQEuyfGvDD+GpKME=;
	h=To:Subject:From:Date:From;
	b=hWIyDSHr56o/bOH4o8thks6sMNjfoWAChLwlAX3CAI7LFqmFRvAd0f7BmIFSup93I
	 /WziFBtRCJ3yirzs32dbypxS8N7sEVLLn7bYfo7A3NS7SbYLqmrprT5I/Ro2muYmuh
	 DVTgTILzIC1HvPDzEcLjIf7a9rI6L0Nn5/bB1QVXlA15VavzbpfYH0cmDE+jZLK5pm
	 Qp38HtKspCfbKXvhyAVfIJ4m6DQqswuEGpvr0QdEWhoMADYknyWoPBXzPIYZ7hJc/7
	 4k1DmWBIj4SwDPLXJ3JfLITAyLCyTiVp3BIM79tjbk27h2FSpzhp0ZjoYuUOKRqTOn
	 uPmTg8MymBfSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B62F36B9F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578565368.3813.16880838623840240668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e1c1936bfba6c3b42061955fc4ab359a97dd7497d948a7079676fd91cbc0ec
Date: Fri, 10 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775785653
