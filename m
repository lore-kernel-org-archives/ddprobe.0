Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1BD18D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752439194; cv=none; b=J3+98kPdOWVB/lsuuLdvB6vLp1lg6BFQFabCxgVBYHTcI6RP3GrHQIwJCf2gadCC6DOx2KZkxSj3Ea8c3gwlxT/NFL8zJV8VP5LaGr3abSrs4Mu563kTEtHVq4pRzyF25FHqQ6RHbHomTtOFkyQbv24350M89OEDupF9P7QTJZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752439194; c=relaxed/simple;
	bh=M/TQPSizlCPeZZX6KKZgUtm41c0ouh0UT47X6DBdn4o=;
	h=To:Subject:From:Message-Id:Date; b=CvoyiwcvM87mFw+M3oDSJiCSYEj82NPnzxMwUAlV9ZSLczWhxjyltb6gUIJ9ebnkE36e1+lw4SO22oLMtxl9ERQp4+/UOkRBsNDzhCe18w7MDAHMxv2+ZcoWkoENzEk+u/pbnlwIsj9mgFFS9P/rdzSHacmMH7oO4YmnXMFrYSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGPznca0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGPznca0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB12C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752439193;
	bh=M/TQPSizlCPeZZX6KKZgUtm41c0ouh0UT47X6DBdn4o=;
	h=To:Subject:From:Date:From;
	b=bGPznca0sHlVHPYKpMvWhShUH9+9wwKMxfdsPcSSxx0hkJZfCzqZcse5R0EBUurwf
	 DsAxGZraqMzijubgXz2WR2UUNUPDoMb7kM0ScdemijfjnhemFZvPTXns68sE2PeopS
	 ADrCwnO9O4ERu2x3WcePPzjyS6P77XZC/4/SacUX4uQEKTGjv5k+/67hTd8SD8yEb1
	 NauCgHvmeMiPzsHDvZE8eKliRb6ghsK47/niloJYmAsexpXt/KOulHZlxQhUPLVa3m
	 Aw7D0cyUK+znghUE+YbVNFtRbfRIRoICqDbN72biY8Edn+MDw6FLB/x2/z1sTtTZzC
	 xgX7U9XTV5SJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C7C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243919357.21303.15352585726864561694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e209824dde680cf393c310feab9a2995ac3b35de7c41d7e2783a716df059083
Date: Sun, 13 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752439193
