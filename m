Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAD1202F71
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785198034; cv=none; b=Ifrfdl8kR8zK7gv9kNKFyGZU8hggN0M3CUZgcc5W/1sW3SxIEcqu8S6GP6qGF9yGc99V5+jhDt7/EdIze0+f63PiFjhTg33//t7P1jULo29+W/BV1XvJTyrd1Xef5bOQLzMcJiNZqZUkwqHOx5MXySED7VVJFhtwHkukMY2ejl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785198034; c=relaxed/simple;
	bh=jIchhKDzJ2iI75LKhHqSNlHCsdIMlh0ZqAjHUZ5fKZM=;
	h=To:Subject:From:Message-Id:Date; b=JN97P5d/BLvEc5UccdQ7dHXg2I3voN+RYeviMzQGsOfF6mS1TjGAcq2Vau5XgveZ23u1TLCrGRBT8jyKP9koiGGMFycvXiVHKJE5bAdCsQbOy53lr6JD8F5PKBA5rh1uSfY2ttHX9Wig/6uOxPoIH2pBu7LMKvrgZLo9u7WHukc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jT4ALLgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jT4ALLgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2029C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785198033;
	bh=jIchhKDzJ2iI75LKhHqSNlHCsdIMlh0ZqAjHUZ5fKZM=;
	h=To:Subject:From:Date:From;
	b=jT4ALLgUAZ25nHxyKpCyH2QUtrtzAa8boUH8K91LO1H58GWxq7E5ctTgBJ0FDlEiq
	 47gWYp7rjdpvq/X9/0UnMFFpw1Xi0cMbcUaMfRJPqTflvBXeOfC/Ydyka6U1tyz0yb
	 4x/+fbm9MLG+NaSS5287gx5WJp/xUd+xNPY+WSrL0i1t5VIb0GSgjoZvtQfndZr5A7
	 WigygAOKno9KX4+g42OFgKmcKPQ4FyZGE/NFxF/MFsRK4lQGbuoP4nm92Sv2kVjYmY
	 HSD6LGUcKXoo+2WZVjpDVx1vsQ6TSVKrEBPmQxJI3F5qBm9SrR59j1zLUJY+9KDyp4
	 bSqwqrtKO75Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C74C53209
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519803371.29219.17859380010274981292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636922767358d61d58db5fafdf0794d2e1b67435c333b57cacc4330ecb0b7600
Date: Tue, 28 Jul 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785198033
