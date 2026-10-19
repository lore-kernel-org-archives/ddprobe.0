Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533233BD22E
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792401034; cv=none; b=hyFK0et523hP2fPIXsnK9vzcZpZC4DKIkfcm8IaAYn1TeiQdjuoo2YAffjGHjw+PlDVNjQ7jgglqNlVslxZCQ+bGHDxTspEUicDu0c8q8U3pLi7VLk+UuP5rGtI/ASNBhHXKMN3VnhGgSeiGVWYBcGZ6/+aoGc9uQzjI42Dz1HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792401034; c=relaxed/simple;
	bh=D7FNNtluWfihIumYvipM1MkOjEcYFSKtgklydU3K1Qg=;
	h=To:Subject:From:Message-Id:Date; b=Fdw49viPSqceyXunh17PCkrkjs7ZBSEvvK+WlSIhyvF8jZxjZ7/zBxZI/tb3O++FEc8AnJfnfnAZeYQeE+0m7jWYEguld7xWjce6fr7i/xJII6AVGWcjKH3MAz8e3NZFvJ/ropX6M8Lq5pRh8oHpNdBpeWkT/0mN+liv7rw4Eto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTCu6lAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTCu6lAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C10C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792401033;
	bh=D7FNNtluWfihIumYvipM1MkOjEcYFSKtgklydU3K1Qg=;
	h=To:Subject:From:Date:From;
	b=dTCu6lAdG9/00X6bj3+Cz+RvbPISL+O8DaPEaGdkNqRQb37pJKpQotEgL4W3LYVo0
	 oek6pDGDW1ANHfZ1sVOAwGaN7T3MWCJSi61xhFq5NsdRGjeqo0u+ZLFRz6PADFZ+iN
	 ggbKE5fNDFrJGqsU9BkFPcYQJ4ahRnpV+utNWkA6k3KTPwAA5f7MrmekQ/V+Tsg9B6
	 pFUo1kZ7CDVFy8YIzMpwWCGyySiXvHwgFfvQ27hYKgrRCRIVm9mvBxh2RqIdTfnVWG
	 VnodS3wdORVjaQ5/adg8Kl0JZop7Zv7fSkhBaajG1Vztk75xJ5mgyWKLbw7EghjOsT
	 +aZIjWkWCStmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F02CCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240103371.14051.4833027377803645238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811ab5430f3ad42c76a2052d0841703f16b6181b066d6b20fcda0e1e9b7f143e
Date: Mon, 19 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792401033
