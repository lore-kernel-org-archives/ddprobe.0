Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3934A1A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721798154; cv=none; b=usEDvXRmbdhTuij4k/phRPXq5xHPJc3CmBb8L9KQVzEh7QI1h9erDZJeBHG10ERKUZZAbjYQal6zY1NGuce/F4kUvw5MFG4UGJ15oXGh7NZsvGNoLWFmbxjCt4DIVKNzxmubPnMoJT2YzxxkI1NSuXvQv5NnSlVIxlgpRkTAlVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721798154; c=relaxed/simple;
	bh=axH5rKZJ031WqM1u4/gVMfC6ctLo31iMAukiqkwqlZM=;
	h=To:Subject:From:Message-Id:Date; b=YNdC3WD5dxDN/q4Gpd4X7lyab6w5C1oJpJkqQzgne+VEoI5MIUn+PfvpGIKgN267E5XZu4vJKGOM2oaStZg6EBXBvra50uLJPlu8NbbVQX5fbkkiIOI+vuxYMV/UXyMB0NjqaXICP5w/R3RYOU4cW3ia7kukB1nJmMD5NTZIkNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eacqDJDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eacqDJDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEB5C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721798153;
	bh=axH5rKZJ031WqM1u4/gVMfC6ctLo31iMAukiqkwqlZM=;
	h=To:Subject:From:Date:From;
	b=eacqDJDA6M8HtHmEzdTArtR84cZ2R5RF09LFaZQBTUj2+uYCymRmRwzSzzjAbKlrv
	 1dcPJ4q3V9eOeoD3SSTkWcCz2cfU/VcvJcHswhBGChSufVfVoVjPyQk73VIz5+qBXW
	 mcx/7RcPul3XoPmwkYUNIyJ+yCQEXeTIBuKm7l5Vewy82itT0hsuDtPXCjPcqPOUKH
	 a7qZ65fx5Rbo16HOGj2Zz/S1H9ugUEwx1KKFh/a+JG0BbZlgpB/HxhoC7nzyubCqdA
	 N/p3gX1wxkf8e88PKC1A73UfLf4qlrDOaDrE6I/od1bz59jYf6qesMmF74A5a1roxt
	 FyHNGRig0PTtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A510C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172179815358.13421.4230288279904733967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6082d873bab21767747266eee34205d63acb71853d3c2374cecabc61fcf46154
Date: Wed, 24 Jul 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721798153
