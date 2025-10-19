Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A38178372
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760855994; cv=none; b=TtXXc8pSG7xCZi1uQMpS3h0rF6GS2dojMb0MPGkbaSrExkK5NRnFf8RZ0hiZIb3fmusvJkq2fSmKQ3Iu0d4K9PHJOD/xh0XZax4g3whZMlgp/+GrTWztUBphFITu4N/rMRLKc01I+51+HVSMs/RYypGlUhYDPo6tvWAhdivL8vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760855994; c=relaxed/simple;
	bh=vr4VEvK5YwuapBGz3x8A6mO+lIhw/wB5U0hwwIQNStA=;
	h=To:Subject:From:Message-Id:Date; b=OEg+SJZKrmHhicoThkfa5CjJrIT5qO6nQjGK3mKMQ7mLiTRPXqOQGydY0NJvxsHY/VQTDtOrVSTCN9jN18CodLU0JjNS4v6F2/LaNmFM7r7cxVVkQnbH/9suU4pJV6fVHrpk7qSlgXMXSC2Qih6LLHYvkszI5JY8hbeVlha9x4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOXCHUfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOXCHUfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3023C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760855993;
	bh=vr4VEvK5YwuapBGz3x8A6mO+lIhw/wB5U0hwwIQNStA=;
	h=To:Subject:From:Date:From;
	b=mOXCHUfd4bLDW4MDVG2sTzI1d0NV2gs9fuBfly/4FqPKp1aJKSZkLtxVqsgqD8DCl
	 yDemVzzibaB7e+rcFMS+9Ha2/+9BZhSrPfc8UxqIxuxJRuXznpT6DoVhbNTfWtUx/m
	 0SFzJB6cVqeaymgsJR/vZuvo+rTERu0kUvWcTEqyWYiwuYHA1sUtOwEAt7TEBlCri0
	 O6xahHwDFmSEuqHfIumJIPM5XgbYRI5b+5GAQHmBU8uIMot03Otn4rIzWdbaRBhaOb
	 ZK61jv41775VSSbfXXAMw4HFSpcDHBT4z/rD6Ai4OG57jRKZSoJw9FCWeMA13PGjpL
	 Ny0uMOJi9PFPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90823CCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085599358.10319.11731577785203497265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405fcb6e28b8c25847a79870ba7b0472875ea8b5b16460266ddb6045d4650da1
Date: Sun, 19 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760855993
