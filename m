Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240812E7364
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782764314; cv=none; b=lNEY5bhjDTNMgnDSOvCtlVGmHpBY/vZ24+XXTaQks3Ff3NoU8PTb/jQoMUQKvptRNMZvYaMBHP2QllrhxLbeMoXc0kO/yxufwOBDBQCc0jnCK2TxZDlFmFvAuxNW1/og756q4UbnE9PLglsWVcBXgQquVKJbcLp2VE8OL3Yijis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782764314; c=relaxed/simple;
	bh=4fepyy/E4rul1prQRoYnB+iDDbaHzukkgMVSN9ReLjw=;
	h=To:Subject:From:Message-Id:Date; b=RE1U67y+B69Jn/i5LFF9rPMGfDfC6DNB21Vqp77ulTPCcpatrRTP2SgiyTEaMpdd/EYfr51aTPU2VP0bYhxdqT4EbL4B3QV5BmZlOjpvoE+xCp2OWBoFXVhwnQT6G/s37IjK0ApBVAUQwwKTE7dcbvo+1pFDcjOf9Uq6rF/Z32M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRN9uCzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRN9uCzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C203BC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782764313;
	bh=4fepyy/E4rul1prQRoYnB+iDDbaHzukkgMVSN9ReLjw=;
	h=To:Subject:From:Date:From;
	b=pRN9uCzBJf2sqPs2dWAuXXXyAIvWki9/xL6ORaLVhnpcQNrgK+YAICKtqn3JfkV2g
	 LjsAS2z3LbXvex52L8HNB/eCCrRVbTUlKbpkzR3Sd9rdKgPHhAHmadUPd5UxwhIALw
	 sgoZipwA2iC/dX+zQk1cVnAq3bgWIFc01H+zBFtfbNrYWx5XSg83eoX+UTcW3w0SaZ
	 ZU5Ys6FLn5YBY+dcJLK42/ZgZSEoK/GMBaRiye1RUo0MA0MwvRYP632Koe0qMmf2B8
	 c5g2cPbXbovNB7E4ZmtQlih62XYXeQVElYNhSTGzMiyR8FooaB2nuBnsWhi8VAqngl
	 IFz4R5wskling==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A79C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276431368.11745.4102184126379244613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2a31f6213854458531bcbd052516e8077222c3310bfbc991c2f4c2b9f0124f
Date: Mon, 29 Jun 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782764313
