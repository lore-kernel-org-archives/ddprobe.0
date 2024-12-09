Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A1784D29
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733760354; cv=none; b=BNJUKmhaQRRFSSknTdFew9FbmHaAkNK0O8WyuW9ybVM951afNqB74rMlPUZDZTvd1n3qAJ/3EhalVXM80ejC1VqW6mSy1+avk9Sc2qYxwZlCLNNg7r4j4HY8BqoZOp3FybDSf4Z6u/KIe2eyzUehGuSwzt+/PfVxcYUdrKmRWdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733760354; c=relaxed/simple;
	bh=t7ZKPMy7WQTvkn8zgyaWL0onzLbY9jhhX2rlBcBR1Qc=;
	h=To:Subject:From:Message-Id:Date; b=Ht06FsEHK81GQWKJI0NiXa7pFTLoDS7omw73qT5qR0aPXPg66HMSihMiZNsU/1m4hfExqnzGXL4Qw1tr5hF27TspR3YcJBpm69Pe3PzTotS5cymlSCVjYD7ielYwtPmYLVD54E1+CPcESUBaFS+4NtAUKsRbMNSMdT5Rh0IakxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZefr3er; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZefr3er"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9044C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733760353;
	bh=t7ZKPMy7WQTvkn8zgyaWL0onzLbY9jhhX2rlBcBR1Qc=;
	h=To:Subject:From:Date:From;
	b=AZefr3eryNV1lvmJvLWVC0v82MWzrnFFO23redB4Nj/ELSvcGy0roogX65kNvjMs9
	 B5R6JEGiXH4/tNF1C80dvdMGhe5g5LAQIPChGYt7Rzf7yevIDCm1wMhT9AI82yOhaS
	 /fTot0vEuWqEJQxopcIIn+PYv0QDwF9knjgxQr5HUhzoAyeWBgAVAPv16LMJUa8uPZ
	 YFQ53F1eWaww8EV/Xv60Qhf0NPCbXgHGlTS7eH+z/WC+Z+LZeuOLext8qQhBmhoNO6
	 4GYiaAW1BCarw+ryBErS3XVjVmUhEALtWFLhzGGT+M47fH6Pb7DLLtMP3kouk3JDNe
	 4bZk25xOHdIZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EDCE7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173376035360.2903.10518998882587161634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1035169033c8a5031702bff9fd4cc7b503d5af69f7ecd2028b663fcf14fd7975
Date: Mon, 09 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733760353
