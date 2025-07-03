Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105BB81E
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751548794; cv=none; b=d/kQn+6jVWCU1cZHYJXi//co1o+o/h54feXVEGURnj1z6JCMcq/jwvzgJTBrzD2SlRrJjkBrbRghpOW1QjlVW3unz8rIjtlJx10yj+3nr5kqSAjKpX60Wv6lZfbsQexOx8Zvgh9NNmXY2mP/MBe3+NKJcVLXb/WeSZ7cz7eA2i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751548794; c=relaxed/simple;
	bh=uWv66kHyrzAzt6Qj/ND5WogDUatWpbbWoF1FvWKpVck=;
	h=To:Subject:From:Message-Id:Date; b=gKheRYO5rcij6/gQMRm5tMpXQolAxL/RgNAVCmBMP96oQRG79P4FP++NkF4lquMNIp2unMVYCP4sffNyHWHkMVUULlTfQNd3jfcvR1wtonwBNo+pgaVOaHrwNn9q1fJJfMaUt9ezAVQkH1PRFcyuZmReTVC284AqyvD0B+d9KvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPWL7mq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPWL7mq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC78C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751548793;
	bh=uWv66kHyrzAzt6Qj/ND5WogDUatWpbbWoF1FvWKpVck=;
	h=To:Subject:From:Date:From;
	b=EPWL7mq9tESzkjqo7PUpe1p5vFOc6h5PolAQ/G42DXpWr4O4JRld+mz8dlLvekR8M
	 6/+Tge5zLRhcponvezq+R9fKPbmRqPfNxVmA3fthHZOGSpsLrSr6mG7+SQ2yh1Unr5
	 F2u7K1+iFp9WscOFFcw8xosEVzeSIv55ItBovCnAra7P7qeZyyJ8t9hS+x7sA18IOL
	 gCpZ7smVz5iW6T4EX2bW3RNC7/PQ3WhWTzMV00zeLX1e6Gr9DLQpL94IgcrFGnItHK
	 j1ays9q+3U0VjkcUd+Cbdrp4T3w8pH/LNhmaTFwMapPAVzy6ceKsBpV0byIqfeHyTL
	 j9vb5NNBFIpUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F8C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154879357.553.11387863847424168765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f4a16474a38dc67d44adf2ff7e2cf87433a06f7c3a54001434517fbba78ea2
Date: Thu, 03 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751548793
