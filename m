Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C01340DB9
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756736994; cv=none; b=kW7mD1kyVJHlchkBDkz5aTJhIKBZcv1ve7+BDsiQNp1CFUsnp3kWbOh9P8IY8sfo703eMzeZ+nf6g4A3MNDkmEW2cw9BBdkPFmQHaT5tbWVWWaYCnxx1wpzQV5tK+EPmyETi/3d2OSfXKU/R3l8yLeFa0x8hB3ABXcOfQl0bzJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756736994; c=relaxed/simple;
	bh=Vi64ohN9fkDnwn29STiqxDc3ZkxHPhtqkAlFmGoO+fc=;
	h=To:Subject:From:Message-Id:Date; b=eylWk2mTXUC+bTDPbS/at5f8eU0MK9BRPiGGNjmYLJzBVCCh35WJQMqI+kcv2Rf/7ay3BiNvXdoJsyRR12dPJaq7Ytj+q+7tt5HqMJZW5NRv8L8qJLdYXXghBzVnJCwW1lY/NHqqmy5I41rDpVlyEB/I9c4WX6JuvuWAEOMw9z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKBG3NGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKBG3NGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5971C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756736993;
	bh=Vi64ohN9fkDnwn29STiqxDc3ZkxHPhtqkAlFmGoO+fc=;
	h=To:Subject:From:Date:From;
	b=JKBG3NGbG6xu9BaZx09YMRcpSE9WndUoljSg5ICcM+DkQx0G18m0eJYBbfPe3PXQK
	 oDOrhnJ3ePohPXUIv1uTKZqx3bA0OmayXcaRcXK+ZOov9l9XuiZE8D9MWWGECUIMz9
	 R3DY0CT0UCnhJXbe3bttKWwL9zzKJDIK47np6KpGHJ9vw4NsdDCrvJ3GUYAdRu5bjH
	 cULF395n724PE1T8xHIy9rbTyDVHyrqIkETU3RleqZMg6v+zM63J7kTROvGHj1by01
	 u3/v3cO6oHbwgmv47kFfBwEgId0N9/5l1I2BuC0nOBtzMsOFog4+wHdzArYGRPsGMC
	 p0IuujhinD1Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9125CCA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673699358.15954.3684598590021469693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28f764ec35ce7b94b23b462a358187c03538025de678985013ac67ab8750df6
Date: Mon, 01 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756736993
