Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF5254648
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 19:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724702154; cv=none; b=gzq2J6l5CcOEU6zGAsYsB1r2cs4IYdQLN/SXCgVHUmoepouujbziKvev61CpV+eXBvUrBOaPalWiP4z8CdjLhcTmGpg3+5uxPnTYFj+lLtopwcuJBrNFz39DSkFp61p/CRk8gYsOjkKnCEvGenGARJ2584HtmbrjTyX5ECu8H10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724702154; c=relaxed/simple;
	bh=bUqtTfqm3mq7Q5kUqZ2hIGTEW8DCBJPKCr6RQLL2n4Q=;
	h=To:Subject:From:Message-Id:Date; b=TebbLkG5KA1/rhIyplZlWZel81E1v673hGLlqEvL8o5rD6AglHYfoVOeDkQacnG4QgqzgSlx/qmuvEPbZkA06JN3ZZuzUev/Tyma34oRY7PpmUG9dGeEtyzCdXWA9VDku7DODchdGG/PrKqisTPL8Mr1Dgo1M/AN8hw767oYRdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMIv9W4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMIv9W4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFB4C4FE14
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724702153;
	bh=bUqtTfqm3mq7Q5kUqZ2hIGTEW8DCBJPKCr6RQLL2n4Q=;
	h=To:Subject:From:Date:From;
	b=XMIv9W4qdK5ar3lkXIurgbWhxTCdj2LunfwwfPUV4yJY8mzYyF5zTtQOUSPVvxPKO
	 +qQ6ywwP99TTihQ4JKF2zgBAINbo3StdlU48jZTydTy1nvhIeOiexZe+UugOmcE3qF
	 +CCwTv7rIFRi0PC9pVxcqb83Mtm43OD1q+E0FK+TMQgfsAeUpbevQ/GEYUFMTrtxP0
	 F/PTYeN8MOHP3gQN8LInJbP+QTyspY5l01TVelzQvqgzV+kyX3lMrITyoDDPRdSj0Q
	 usXyh5rZfWBBHiMl8Xq+bzb/82YXVmrSqW2TSABUgtKaT1b2b1KTQ6fOooYF/yBwkb
	 u26T4jSvqqLOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A977C5472E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172470215362.25114.15336399739824509104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459a8c47a356034ef6971b2eab71f80236bd25dea6003214e30addc51630003b
Date: Mon, 26 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724702153
