Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4874B25A650
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738737354; cv=none; b=BAkjHa17fvjw9YAIMoPDHhsMeRbDVkeFhrvC1Rc4VTwpfvja3Z9nQUEYwVDupnmFNIBRdX3J6hvXKjIgAlpGsjLwX3cCymC9uj6j0A1IHL83LJ+BIbVpJydAPuABCO+ixk1WFQ5UGTCUKooas1vTdvfZbO37E4n4NCa8RtoZXAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738737354; c=relaxed/simple;
	bh=6vtNBOhE6hk3OupD3WXPvVbhmXtsdPAaKjGFAIscF4o=;
	h=To:Subject:From:Message-Id:Date; b=IZ9EQFyGi4hqdsx2SgJnFApa6STQm4l/uz2wxJ0869/wubDKNibGDWlXVOMd49q5U6Vt6Cq/bLpYQdIXKMu4XvCvoeRnDLkAl66UPstOY1phjC2aHlLIYSuwY4DlvcjvtqAz5DP+ENqemtDAVA6t5zJVAR2bg22Jidyk8cNFohg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2r4I1Cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2r4I1Cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D5BC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738737353;
	bh=6vtNBOhE6hk3OupD3WXPvVbhmXtsdPAaKjGFAIscF4o=;
	h=To:Subject:From:Date:From;
	b=D2r4I1Cw3NxkDKQbioUPB0WsucJDf+Z2mCp6zd97ChwRtG5c7pVCIZp0on5oHVT8C
	 /kE5TLESz1R8w4XV5mluDmILajdm1sEcLTn+Q2+xYAYeaJ4asvXU6HCpTZaVNMzxKj
	 q3KVk6oksOEhht2buRid4V+vIYMbaVtN2qVSS9qN5iEqpyZL/P+ToPwZBJ+sl6tiR4
	 k8qudwC5JIcIUFjty+Q1JWZUE4ilZlHhSNay2mymgJcRjt6tDOS8JDEzmk1tpFvHob
	 m76TUIQgbDNKk8IAT94gr0iHTOlF0LpwJPQUll+iLehJHGOcyLcjibtqhpbFf0bDeO
	 3lEuTGoPK4OYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC0C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173873735360.29797.13888325506992090105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4595289f650a9701b32eb1da96bc176693fe4db2847c4cc29a354f83150c4d
Date: Wed, 05 Feb 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738737353
