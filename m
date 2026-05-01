Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132793E9F60
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777654055; cv=none; b=B2AGhssDzwj/VYZkYq01ICGjJW4RU6dFsR+nBtV/eo+u9AFjnYkRLuwrYHXkNtw9l6bwM/3oZCcCgkHYlYfkND2fXY/gxy63JAusjH5vznoratCRRo4WRrAMAEZA9MFkPSRgSmpzVqG1RBM1/5jtyOk79DVsUAcdjhgGSjVM7Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777654055; c=relaxed/simple;
	bh=vXOPNxCYw95AFFmVMWutjK+L2FbAa8A86k9pSadYiJ8=;
	h=To:Subject:From:Message-Id:Date; b=ABIc9hMgoeb7xbMkEVsNxogUC3Ii1pOLhTbB8toCt4KZB6QZHT9RDlcoPGrft91Poyr+8gFtA9lZoGmG9Ewc2SfghXwSlDUQfC2fzKPBwWm7qCDaBAonQP6Detrv8JlhgD4N11/eZNjqa919/0RL7ZTYE19pydODjS3OlL01BpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWwZZiXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWwZZiXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD351C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777654053;
	bh=vXOPNxCYw95AFFmVMWutjK+L2FbAa8A86k9pSadYiJ8=;
	h=To:Subject:From:Date:From;
	b=MWwZZiXrIWddDLl3UzfKlktpOshMcX2qcIuPaJ4dRnrbZa/yv4VEWMZe/i2R95c+o
	 f44olBSqm/bCrCAup15bhbLpPHX3n9wL0L6F4p2dT310Dijpf54WQcAViR73sk6CBi
	 1A4tezTVSe7ARUCirKyMj20YXiILnmXoko57eAi8x6GQBOMwqUR/dRCrai3de+Tndh
	 I2hGlCP6HuE/nz85SBm8x2nEr8+YVmnXKVOWAWJses/lI2V+bxBhT7GqXtYYxHSwwo
	 /zmYSSp6UyPeWdsA8I+yo8BBafH8a/Wqqm6SCA4q6JeY+8MAUYVGHlFrHnadDdkwGt
	 cKAF4JzDB/7ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA19CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765405369.24371.2737873059609986977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faffe4a2e81a98a6ad76b1aa99630b53ac70d85b697b7197736c7e36b501a4fa
Date: Fri, 01 May 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777654053
