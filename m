Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457031DF74F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784343514; cv=none; b=g57E2ppoRY0XQdQcshUwNY580oaXTGwlqIexkqLaoBn6Us47iUXEcOWPEDtF7/yZ6P2RM/bUNS3lsqFi73eZZ+KBrdj6u7antAV++2jZHKOb2B+S5nJnfqcML8mljXV3BhjcJnopxICU3TGZNQkdwb+zyf+zmSHt+djvCHL3aCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784343514; c=relaxed/simple;
	bh=dVMpuAq+ywqownnPE83hEDrIWvG7lJo7y4TLpjvFB7s=;
	h=To:Subject:From:Message-Id:Date; b=XZoxjRLTcyKMRwqdvIVXWqLejxMFTFItIv9Lc+AtPYVKC+5qgEvLL0oQCnvhCStcfqAzw4JwtIEX5SaWd2ojdtuR58HkyXoeWydA0dxOL/HDMaqdw9TVEZFeNMYWVxfqNwupruNI6GM3l4Lbm0i4LNUThEWKezf1umAisE1GN3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjHeQE8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjHeQE8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EE0C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784343513;
	bh=dVMpuAq+ywqownnPE83hEDrIWvG7lJo7y4TLpjvFB7s=;
	h=To:Subject:From:Date:From;
	b=CjHeQE8/TXPTQsP1dZ10/gldBaCyyy9o3Cd6TDqdLHKx8hKjFoJVd7zT2086txyR3
	 Hf02plQgZr7MkUcFSyyC3ibRv/aAuxjkWcAy6OCxpXz5xbRU0pRuxL9SjPPfR+Xqcj
	 um0omYoplcckbt8AMx2Uw2OmNvlYYDXy2jN7ygSpSLftzKJ0TGRQ2YIT1VilZwROrp
	 0Dx8dUQ1ARdUCxRk3UA+K0fac14l5tOaR+oP/X8C4lNRyokz5jNYuzvtd9vifMxnHV
	 at/1d6ZQ1CS3M+PKltOCjpsjVhAJDrcfB1FhjJMXoIihYQHe6XLDy9vMGS+UpMqIQS
	 jYYVJ/Q1iTqJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B390BC44515
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434351372.19279.1441627824761359219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f2642d1cd7c5e90b6a1ad1ec15ddcf77406ad9f952ab4d7d8109c6e730350e
Date: Sat, 18 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784343513
