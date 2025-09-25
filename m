Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3372520CCCA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758798594; cv=none; b=jaHPN06E1D3ABdrbHoBZKOmi71hpuGIGyzZL0BgT1ptRRdqSUsVs60sAn0V/e1EFok6012F/KVZsbA/OFHSJ6yrmTvQJ5eomZH2DF0ppgJ96ZOQS0HlAN1Bzypf3b3smEG1BBU0OiZkskG9+7IZhNo2jPiKn2SCSOjP9Y8GgWPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758798594; c=relaxed/simple;
	bh=raVSDt/iA4upTwTWSDgQ/aHFBjk08aaESp8lQsR6axc=;
	h=To:Subject:From:Message-Id:Date; b=hmpNyZKBontDnjUFaeL0Nc9TU0nATSerfDvmKD+ODaAeFonEvXBXKuRylUZC5P8cI0888F9xwiO00XZidFOpuq3WsoBlUhaldBb6ANq0ACs9sNimi6rgIT/tz/OsDG/sBt98cn2n/sCQ7ChzDaub7/+5qvGMAFVsJLzBwbfTOlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIT0s408; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIT0s408"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B935FC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758798593;
	bh=raVSDt/iA4upTwTWSDgQ/aHFBjk08aaESp8lQsR6axc=;
	h=To:Subject:From:Date:From;
	b=lIT0s408KoV6n+6L6VlSNOUkxwW0OS5JEafvDGvR3IMENqrtLBqRwyyAOrPjCXHWG
	 Bkpy9K0yk853YPP9duXRoXD8AQlcpVpjvaQN34bJekfXfmf2Dr9Ahy65SpM8HQGGNW
	 McYvpYH9utkf+mkytpCVHBUsqQIim5gG1tSJhgWafQ1UvAK3EhO4ZtD5VLV1FiTnu2
	 Y/TN9f7EWzvyNFriAdf3lQNy9fCvUZD5tD0wEjjT6wYne8+skhV55grpiZIJmSj6Kk
	 SK/NwtPmDC2IVVGfm00LEj4O8axG8fYvf5C7+P864XC18+pAVT8FXy+Ieyq2AUeIDN
	 5PzFFoyi1WZhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6554CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879859367.28535.10045303682944507897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6712f301870a6e25efbc62889bc24c8729add72b7e23155bbd0c542e1c645b
Date: Thu, 25 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758798593
