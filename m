Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308A94204E
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749968394; cv=none; b=AloHa5EKh9hHRyi2atKDeSX1mfhm/SrjGxNWR0veJV/QpiKuACfeusZG8/ZM1d3OCdNRJBzVLWFvwD+t4+nX4+NjyQsDfdeVcaj0xKYr6dij2hy+SsHjfyecjYkxxe6048UElGGNOiiFgDR9UAoI4YtMrKKPC89JrhhwFPF1aug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749968394; c=relaxed/simple;
	bh=PL2H98GR5qiBXQlcFAMQDByckGM135qAvqB6JoJL6AM=;
	h=To:Subject:From:Message-Id:Date; b=OfrOd6iJRE2LCPYPi7KnfJw/eQ9DFXX5JavfGIg+mrB0Rp9lu14VRnPza7/CO4N3EbMgSEq066bbQAQ6U9Bbrq0dBnZO2fBayxlSJrmghEZW0ucZfwwTrIAa79JlS8A/X738Ok0xBdbecYAWGELOoWljLYiSin9A2c4rkgegVkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgUNNW0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgUNNW0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87CCC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749968393;
	bh=PL2H98GR5qiBXQlcFAMQDByckGM135qAvqB6JoJL6AM=;
	h=To:Subject:From:Date:From;
	b=jgUNNW0UL+3K4XOEugAMHQ+vznjQkYSqLDckH+hMU0dvxNVHSeX8bBH8P5MgJdMwg
	 84yMLTDf64ihy5vGhB53PBfvmNnwSgF6/abyL7cQ4DiCYj5JalRby1Jgn9i/nFZGud
	 tQHqRlstrVlXhyH2EwYjLN0mOkE0ZBYOWKNoLlTNjvyvX+ym/X6yOgQggKZgTA7w2L
	 iTOIIsntCcBGlyDaQ3HgRcaCTxb33lddKe9GJbshvQULk78kpl3FVXy+V9b07u7t+m
	 FwBc+kfNrJyBNL7ZK2jrghcndCAna9ieyr0fQGXrEF/DyybXJoVnhDdZS1IZocKJ46
	 8B//xiTFcDOCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95854C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996839357.17140.3179475675448706453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f513142730c409d4aa1c45c3c847201524ee198f06ed08d6081e210402eb7687
Date: Sun, 15 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749968393
