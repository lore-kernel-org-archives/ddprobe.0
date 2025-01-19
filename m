Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486E984A2B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737318954; cv=none; b=LPArYXsTfbCIQlKThl12+dXbuBiIcU89NUjdLKXMN7Y307gC1K7L2IrXhh71N5Rz/oWTXlmpXQHWzRRA141dBaUMYD/BivA34bal8mDlBYpF00JvQGijxR+ak2LtAtQakdY+ZN3zYzakG8MUyyAhHpraQ/3Cefj+ThRrjOvc1VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737318954; c=relaxed/simple;
	bh=KYjomWJd5DIFSJh/mCJ8gJmH5InZN1OSxWCg605FA7I=;
	h=To:Subject:From:Message-Id:Date; b=BOS2C292fC3UrWq71H+MbjIdxvDc5vymWZeP3LA5xoZxIHw4zgEOeJrF7ZeoC6YvjOKOaTOkUYmKS6FrjTC5mWLpQJX3eT9c8b7wu77ozPZlxp+2tZGJ/DQWWsJ3L51XNR9GW3sCsTF+7vIZ4kZJxYA50lwfBLqrEa8VE6KBb48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuOZ7eBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuOZ7eBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79F0C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737318953;
	bh=KYjomWJd5DIFSJh/mCJ8gJmH5InZN1OSxWCg605FA7I=;
	h=To:Subject:From:Date:From;
	b=NuOZ7eBd/4p+PL9QK6MjGouzg/hsrqU2+DrSvSWGVk0SIWl93ObuQLfvw5x0lcwy5
	 8nDy/VoTYiN13PmMfmjwucQBRqyd08d61/wvERqW4IzkFEm6dAJ/VEKJTj42NQPlnp
	 LMD+yakSm2Xx2XV4G+a+6HU3xx6Cn58DhAqOGqHt5uWGNjt2BGhErKdm0u47BRw7Te
	 qDs8GyM63u8HQ42oAwbUBtwPxznmbkTCpS+OSodiXyqsmxPOvFDHj/YoQIE8sTY3Ru
	 8omxY8w5T9tS2Ph7YkR3DCmWS/at9Ape1FPMjP1VQMB7IB883SDHsG+xxFxhS5/iE0
	 jKbKRnHFv7+xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C3C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173731895357.31537.7798557866592516938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943ad73f8c69fcff74c01a17758408a4f6363474d31ead5d4b4e55569efb8338
Date: Sun, 19 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737318953
