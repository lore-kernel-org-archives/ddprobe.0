Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A61D1386C9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761714594; cv=none; b=ELjDTMBnOf9gf5vIn9fvgaB86MQ7W5nY3a++86so9kf++f+byAtF4stezH6237Ru5+kQAi1zA1iCE2OxP4wk4SfLMf6D60S5WirXFOul9bYoq4iQuM2DnYR0YzBKD11CVTlhCLyi2OwD3xwetfRbBpcZDJHEpVPMYRS2JOsm8zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761714594; c=relaxed/simple;
	bh=+y0wUCRJdD1NPFtmZTi9xZBorNQmU/LhHSLQKSQFDHo=;
	h=To:Subject:From:Message-Id:Date; b=QRuNNTOqzuTV+t7KFlF1fP9XSlwoTcjF0hiSvjloySqFCbRTDlZ5HIU3O6SlVRehIv8haBEjyJX0/mkcgeAwpjViV2JOQMBz6tajDctsCLqjCYf1M20Txl9sgjzQYS02kq0kiNkWtMGf+MNHhJDySJxqUfQ30Jmsft3IeyxaivU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+yfIO7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+yfIO7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EA5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761714593;
	bh=+y0wUCRJdD1NPFtmZTi9xZBorNQmU/LhHSLQKSQFDHo=;
	h=To:Subject:From:Date:From;
	b=u+yfIO7stQvbUg6nr8lVcV3GMDEE4z0wRJZoK9tJb54CTKCm6TENY58Nfve9mX4yF
	 ktj9WImFmnq0RE6cYpgyc6m0fK1ydPvTYckt6g/VGUqhlT06nPc05Ea5CyM75eHpyZ
	 TDgUNpCFcJ+cQzwRGl0SwJBAbpnulZWR737RyIU339CeVUw/zGJcdfvTzspneleCfc
	 Wg+mCg+Uir2Xnmp8FAAl9opk4OPMU38QO+ZQ42mUPTuD4LBDAW206J35azWjyIYKGg
	 GNqRz9Tm15tQ9sF/LmfYAupi/KNFyKaasm052uLC58ydFTwH1EZWAisXAA/Js2Wm2c
	 SmG1DVKG7Pk3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F82CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171459358.20692.557103096890226655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1bde7936737dcc5f89520f36ae04dbc9459489b9886969c703d3063874f3e6c
Date: Wed, 29 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761714593
