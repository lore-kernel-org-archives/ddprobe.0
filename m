Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF294C8F
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747546794; cv=none; b=YfLiBb1xQLu3WIBwM9qdyitF87UVgGStbZ5ayMvPcOxTu1V4VspoMVDquR+0zy8joU4TXQu6wqvr/DTO4TUhfMsdlKLnMhB/1cOKORUQnJjpnoHt4qbtNKvRnALy8osS+y6oNCRE9p2/h1lkI3oABMgqugzxAoNE1OvB3PbIRHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747546794; c=relaxed/simple;
	bh=IUeJXwp58Nxo/FdDgKY51SX9gC0ElfagMFforzWYjqY=;
	h=To:Subject:From:Message-Id:Date; b=ZACH+2AhS/2NhXJtKATck8si21EWYc3RWGCDkrk8rX19qFg2+xxHajtefQ3sA1phAI9WGOVoooLvBgSERHH9Ii0HKOBNF8r5qsjrjFvf5XzOi8gnmPqt/RoBGVT1Heak28ypxEvEk618Vztgqq+Bs9RxHTKAR4mThq+qTCggugs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ga985JJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ga985JJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA654C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747546793;
	bh=IUeJXwp58Nxo/FdDgKY51SX9gC0ElfagMFforzWYjqY=;
	h=To:Subject:From:Date:From;
	b=Ga985JJ/wz4EAsGxnrpZKeBIBzZRsnaQbrvmQ18Qc5wy7M+pQ3BGVDCgWASxgsQ3o
	 5KeHz91594QfPC0QQjUtxE4KIQZcJhjWiQcMODhpzeKCJMLwqvSxAuFaVrem3zBspb
	 7ZAdpHs55uh5Gi77WyiIU6e7GyQyB4vAW8k+qFBTPysjKHdeIYSYI+HFYjTDg2+h8v
	 wTXYDwp63chZpnHgSjN52uUamtPhHMGtb/zLiLm103NDmGYisJD0BIYI36pL+5Dowh
	 2UMsWz9YVG34udKDm+nRI45/o45OcZkOhabUHzMp9L4ImgJng7xQMm39GPDXdj6h2U
	 x8N4riRHT8N+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B2BC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754679357.3038.9493178839683417918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e89f40bdcce3c279cea5a8cc685283c1c6d252dd55e95204bf043b949adecb
Date: Sun, 18 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747546793
