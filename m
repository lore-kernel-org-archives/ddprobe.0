Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E03C1FDA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753538994; cv=none; b=Ofk/oqTai2jXCY/ZY8EKrvody90y9Sm3YckD0BSLHhMOYRuTyK+H+3bgPxWxlorXDSO0v17fmnCF3w4Tllxc0am8+r/GuuVMGJz76//OqdH6IBngk7Urz+8Qj9oy5KllANlLf2p8G1/jrA/gpwCXKnlKDqP3ryKM9e8vnDawdOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753538994; c=relaxed/simple;
	bh=tbWG+zWf/fzfPCOBafndNJ3Z0JZn2p3hGNNeeaaftJ0=;
	h=To:Subject:From:Message-Id:Date; b=q1gj4S1dZcfeomwIcpooSHirgbCPhNkkHJ+eJuSmO7/Gjk+a1RHYcJJXjfvjx7KJs6sSDFJKaFGCiuI2WL9sUqNMERPvAHtGYCM/NNdIyMsD5I+RX7FB9nXsslRpTwZl5733HN2DqkZ0C7Q5TUJmbg89n3KO5LNzdbsXWen5XZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8jp/GFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8jp/GFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AFAC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753538993;
	bh=tbWG+zWf/fzfPCOBafndNJ3Z0JZn2p3hGNNeeaaftJ0=;
	h=To:Subject:From:Date:From;
	b=E8jp/GFm2HqrJFSyZNng3CNhZ5TKrRViKXuK3XPXOomHWRONrTdbZ/yDtptPtTIV8
	 9RyR0eZebNAK9VHqq5rD/jP2ShzuB9dhiaeLs4rHlvsHrnV1KSqzZTfifKiWtigTXR
	 rx0hB0IZ5c9wWXp9kOcHBkXiFfwMNZn+xePj/aYST1n0gEQKi2/zFEwI+y5gBgor4j
	 bjf4+IfXpvCAuqOnfw6jVB286p8zIQaNaDZgeYhAfxWR6SrMegyK00753gDp2I2px1
	 EW4iBpJsLBlyju9J5tDIG1Nr6bVNeTNO7c4lz2ukvjdQ50uaVipG7qXfMBk7a3mIIj
	 pymAUtblg/iEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D9BC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353899358.23746.13698905638960171256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ef45c70c4a006ff1516a6fc5e856d459aa103b08a0ef72352cbca4dd347a7e
Date: Sat, 26 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753538993
