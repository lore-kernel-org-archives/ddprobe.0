Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B17B304975
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761648594; cv=none; b=jD31OUzoJNEX4dxWR1LAkH/gzQy8GaQI7a8aCgRVrMEal31FTs+sYZmG323sD82S9bIGEYjr376GNUPWQp9UfbAtzXwU/variPWw0wzb6r0HpqRpzyd2iUSpxs5p4+U6x9murfjYgZNO8sFyZOBsHZ6mJAUgXBiAYe6pU5RoDas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761648594; c=relaxed/simple;
	bh=dimv/6EASP3VpCKyti94QQ7rFg42GimzRGasnUZvEHI=;
	h=To:Subject:From:Message-Id:Date; b=iT2ZHMb1mY/C2vW9faIbGiG+jRvxbde9v5+9NLpvzqKFiN8eUj+jWciP5PlW5eANq6C5RlOTaSW05WM64Mvrq/RW62+TGUdYZJZjXg31AH8OpVxhFmfpxQ6mgDQUDo6wag2PoapAawpKHY2ftTSscqLPgVEyLnIslCauoL0xxmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+Qk4/lv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+Qk4/lv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A404BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761648593;
	bh=dimv/6EASP3VpCKyti94QQ7rFg42GimzRGasnUZvEHI=;
	h=To:Subject:From:Date:From;
	b=B+Qk4/lvkBtahcEm4WE3RhrMPhAccuNBCanMh+lXKgWE35xTYg246a6pD7z1YC1mh
	 xU1rQnI1lwOtdu9WrTtE+w3WS4/49veUCLvBTdI90Ocp4ktFRIGXeL1lpZD72aTmzb
	 g4KAKLNU821HmfUtGMSiwmrtzamxRQKn5/foCZIhCY0vLWeDIbrbXlokLjk+zC/uiR
	 OZJ7Qg7u1PzDoFUwZ0kk5kiiXedI2Sdc1y+kYC37tmgunnYfoopuM7iVt4RM4n/imv
	 WMlqYlN+nUBOdTnBfjY3P5zYLwcrNz7VvrNym6rggMq1pRHYmLkSvMS+5Kqp9vylvx
	 BFhZH7ELq8mhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92567CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164859359.27450.16248490356193879505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6becd8cdefdec1c01399b596fb2801be161c836730a04c99de754ea6d15f99a4
Date: Tue, 28 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761648593
