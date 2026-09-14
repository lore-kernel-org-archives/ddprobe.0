Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579B53FA5F0
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789374034; cv=none; b=LpVbuDNu+Fgf4xDrLC3ONLS55LATyB7YYbps1bYWV81lBSm9t+vsVv+XkX0Ixo3jIyDoU6u8TvF0u5tujVMxQ7RhZ5O6Kea6pVmxJYL3UOwdc+5yI7t3qxFE9WH9XEb3j8yT1IcV1Aw4HtSmUBBDeVcvyfX6JpKIDneQBqnCSt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789374034; c=relaxed/simple;
	bh=kCdi0TKqyd4ktj0L7wu6KY0f2k+sn70Q+D4G8li+gLM=;
	h=To:Subject:From:Message-Id:Date; b=V2Yg+yOUeXyEe2+LfdV4qPfNd4B0eR1TROIPKNzlvG+LfgMqIlXKbNFwDa8lETYSnuMTOcIYqEgLCNMmYNPepQmal4S3SSEQemTmY7pMNZBgy2sSxe85ayKGXodT5N4PONuWRIvxBdLhQXdDvtS4RWm2yQe/y84H5fJnEds5XQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AveJtZBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AveJtZBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5A7C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789374033;
	bh=kCdi0TKqyd4ktj0L7wu6KY0f2k+sn70Q+D4G8li+gLM=;
	h=To:Subject:From:Date:From;
	b=AveJtZBm5IpNOjxecQGa6cGZ/qLy4WgBd/EeAr6vjFyae7pKCoZWlz6BcrXxytllt
	 tFxWD04YZpA0ddbBEz4qGnhGlUWQg0HRyzMn4hU4LyVZOgzBhExehDfUY7e/6mTpMp
	 G+s96RMfrIGhVkc4ZY7X2jHIdHUOu1bYdH+61fwGBXfhQ4Phm1waSR1YI0kdx2YmFt
	 HVti7VVYkYlL+0Trc/Y8K5tnAO9vtmcXeIlyFKRGblRI7uPWIBbFGC0HBTmM5dOHOG
	 bgWJy4f8nWr+e/TM21yM7GTa4Zsq8A91BMX8afu/32evFhrKtg/aT281oLq9/n4iNG
	 Pm0vxGdr+KVIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D70C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937403368.4937.13150694377197868464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb123870f03254369325441449fd54e63d5bafc4560607b280120ab8917250a7
Date: Mon, 14 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789374033
