Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4397D3E5A1F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789371034; cv=none; b=Hl3pFpX/wqmBvDPtZZ+wtQxaR5qlIuyAgSpTlkhvpmaaZ3KWfkm40Clra76we+7U0ZNrhEMvleq+d1uF7yANNTn7Flm2E2tZW8+Its+uQkvKBlCPPAvK3QRUEJ3apUfDc/+lFp/EcpeBn3XIGkjsU0kUcXB/3OgVRUyUoaR9WvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789371034; c=relaxed/simple;
	bh=s0y+gmkIW2JlVPkqkMFwEnI+t/mchBWLWfXq0dsZ9zE=;
	h=To:Subject:From:Message-Id:Date; b=Qq5uBECDBeDsnYdWYzEkfRE9tNoVfwuVCluJlHg6ePvxcmDYxTTnQd864TJFs2f4FVk4BLiWv2bFSLMiZU6qnBWnK7NzWjyNe2jeb3a/Cw4As5P/15+mF8wmHf6TMWydJVYIPX+rzGpp+olJvFFfC+7ZccpzMUKNo2dIC2xoCy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHXYrHeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHXYrHeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB63FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789371033;
	bh=s0y+gmkIW2JlVPkqkMFwEnI+t/mchBWLWfXq0dsZ9zE=;
	h=To:Subject:From:Date:From;
	b=IHXYrHeAq127MJqq+Pb4rR2OogfrSdKOGs0FzPVj4VpWICI15lvL1IqXfexsbjSg3
	 +R7PUfgiLfL5Ew6MKSPjN+XxPgc5JbVu9G76w6YzUDR7ZzDQQm2hNzNYAxARwGhVhY
	 nPnBGQ9r8KEKDcqHyVjfss1R395M+pgUf74HE5wDFQtK2lF4gLWdkfB+G6C7O+oq66
	 dRU0/H4vdb9zDV1GOLLrn2TqPR9ZfSL7E8W1q524KPNVI9eKP6PNZVJpHxL5eRwyOT
	 nxyd4hqUKxxk6GcgM7Pb5QA/MsvHvKjDUxy6SeS0GmwtQStrdXgALMbCQGJXFdiAHe
	 Y7d2RP+UbaHeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA120C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937103368.3967.11172978362479253017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43bafbd836cdba9883820f85012217c9d83a7b31b684cfd3d31bcef886522aee
Date: Mon, 14 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789371033
