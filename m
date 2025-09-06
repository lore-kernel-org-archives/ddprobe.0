Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFF836B
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757148594; cv=none; b=EyR1/QyVrqOgJe/8pJxur74B8qSGEpzPLlX2qYN6Z9rhaJQhMcHM8IP/SxY9qEak38PiKbWIa/iDRgfFQdS2TsXbJ77V5XQdgGURPOt+rYTrmMEyOaGWN+w1BdcOTbhDL6GSZdZAmY3MKmrq7WNXTW7I3eOfHTk4sQ1hbKihivg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757148594; c=relaxed/simple;
	bh=vt95pMZu33+K6JQnHJzGBkawPgBb7dM6ITl3MyYWGg4=;
	h=To:Subject:From:Message-Id:Date; b=pzOunXf5kq+3ydpPn/YO++yKcxoiffk5kfA67wKMRmElo1Cp7pnx1H5mPEjvDlphls5kNvpJqmNkTW1iCquLELVlDMzkY8mkDyPv+pzyXqn5OBemXM6j8pNwwAoZ8TfQgcMLmMv0GOqIp+ctJtq8GWQ6IVNesMetMKtCIkhAt+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeKp5yin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeKp5yin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1426C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757148593;
	bh=vt95pMZu33+K6JQnHJzGBkawPgBb7dM6ITl3MyYWGg4=;
	h=To:Subject:From:Date:From;
	b=AeKp5yinuApvPgRiBGYrXPHoaw3wt4Pyvws+g2DfRGKdXCjdWuzCcRU1vXR+JlNm6
	 V0G2K5G65ricJMBw12hj5WWKvv9tNg39WlpicmblqCwBbfiwdGRb1TklagHcO+6tVA
	 QjH/M2YxxhxEbmqdNS08FvTH9OXvEneF/oaN7/2MfclaULdNaKrgcbR1F2Y/4PhijQ
	 nApah/k+dIH0p9wIrfOAR+NeDaUI6c+ruyaLq+cyvYKUErHE64Wsd9qSuScbFHxfFa
	 3KUNDhjmvkwucvaZBZ8w0tHXsWmCicNrXmV4ioTwMJgtcSqDCfg99+ERdIOTU3W14C
	 iuWU9qxsHUUOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFACA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714859358.12261.2644251467639492043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4e29c8e003aa778d642e9ba2d3db2c2a0b857554e6614d0a7b71a28a5de7f4
Date: Sat, 06 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757148593
