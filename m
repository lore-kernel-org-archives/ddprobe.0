Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343F81A3178
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758262194; cv=none; b=D0I4titPkkmlKkOaypXpJOFW0VPIa1USDSbsgpS6RMjSWbpAeXirEyfwvChVRYwd8yyZ3bsKvzhrVCD3IakX0a6/sRg7iPa2T46oGcV3ZeOmuAA3jkKLpzSnEXFJaCJaA6afT+LnwpfJQHV4xjjj38ov0MVC999H1cN2CAh21+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758262194; c=relaxed/simple;
	bh=mEasFsZBUx6s+X8f1/cFQetHAzP50OCm/0uOkzU/LpI=;
	h=To:Subject:From:Message-Id:Date; b=qbTLsxCmtXK2YRmhwwhK3BurFeVl6bJBbcK10Yhec8OtolJZz0fmXhQpwmZlZRMGlPe+bEYwspDyYDEJMNcTsWTNEZZGzmU4ct1/k2oIm/TJDKb73UFD5aHFHsjcD9GB+kQavS8jbtdbIiZydQJvtQffzOy9sMvaOabjFdVBy1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNf2MAgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNf2MAgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0A6C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758262193;
	bh=mEasFsZBUx6s+X8f1/cFQetHAzP50OCm/0uOkzU/LpI=;
	h=To:Subject:From:Date:From;
	b=oNf2MAgbxdEIdVH6N2gCcV/xlYudiGidB6aMMjyy2orcAZXqudmZ2tCfFiaazbbs1
	 IK/d2OQcAW7rxPuv/0OX1GNzIc8PwzdZpiWvGuLlKmn+4rDMNko8uclye1vTPCJddk
	 hHK27v6tlijuKJqIXEETkrxLUDHtRj9bfjq5cdvNxJEg35Sq7pjfFTaoCiDLr2WQ4P
	 TtrnBpazCTz2iWYlFi2NnY7NrgukNHjyANU8yDk33nRp6xV4wJe3UyznNFmUFoAq/D
	 MhGMrlQ1gVHy2be9Zt1qmrBJxcBH5AxM1SlIjPkmuqc91V1m5oTnuKVBg5MzNCL6wi
	 vpJueuVMwWc4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD61CAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826219362.24188.13251050627973835431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cdff7ed36aaae0c5568986670d0600191f72fd09613f8afa4ccd0b957f8741
Date: Fri, 19 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758262193
