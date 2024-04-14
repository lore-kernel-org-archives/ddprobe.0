Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459FF134CE0
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 21:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713128963; cv=none; b=OL5OaZuW6qENh38gxLDzMOdDQNyKJzFkjnOSQbOpYGB7y/Mdf+OPQpyUTcA1A3QgVEzmajgfJ2hGBRsiPr1aJh4fADf0PZgrQEXH6XV896W4dqn20ZM/yLd65feLcpTIKyaH2aLmwQLfDGejXNc5MR/RglCxzdRWchI1e8IwqQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713128963; c=relaxed/simple;
	bh=LfvsNCEfrnjFueJJm6lZCGvc8dLY9flxHQ0lM2aXaQQ=;
	h=To:Subject:From:Message-Id:Date; b=miicGjRMlSCthaub4W0aHSzEK1VV9bDiS0N2GtK587PmhPUp7tIiBPc5dr4n3XxYUojczP8FRH6BzmreeuW/gJJgWHkUgjqPEu4ljNt9gi/oSWwqz9T6gg9b68ooX9BZh0W4LonNQhgcxfuTJr4qtvxxI2YSt2DUXnMdoizkVTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsuG1QH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsuG1QH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F65C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 21:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713128962;
	bh=LfvsNCEfrnjFueJJm6lZCGvc8dLY9flxHQ0lM2aXaQQ=;
	h=To:Subject:From:Date:From;
	b=tsuG1QH4Lcvxe5o0xg6knyWT2QHJ+91Oh1IpGQ3nejgKVCNvRDmR9u4xo7lOv0uRB
	 QOIZ88ALr5eYvpuLq0n5woEE37B+RnDWEmy4zFlErSnMWdhlQby6ccV2rXFIixHMPE
	 yVPFcNbyAH7QPfv5bA93NGsEtUDqX1usQQozLxv8fen0/bUioMjqFpeN/TKL6wAcpe
	 9bH2Il8ijY0RmFOVb1+nBZKyMYjMqYjUyFTL3XsFNaPMZXn6MSsOW16QWzLZpdHJTl
	 fekhOwp0CtMDPdZyfKuNHx8AZS9Z1/YMYzTkZAy/Rf7P3CmPCK+b4AVzRxpHs+u8EX
	 FUJObiHNzuyMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C63C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 21:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171312896275.5323.6763150579878211743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e9c2ea44cb1b5e060e96117a40ad87d26ef06ab4153e6d6921572f2761ed5a
Date: Sun, 14 Apr 2024 21:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713128962
