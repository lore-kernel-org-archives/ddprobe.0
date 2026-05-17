Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE9D271A6D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779059434; cv=none; b=CUf9n0e2V4MxA1XiRkLNjzyYOIQDvlFgPOSmcJa5joiOggkrO1VMWeCkczcQjkj21o+DhumEbe6/ROomek4VnK2r/2fHYYw1PkcYYOBikg/bfTWTUQuCoCDVn39X1beD1jD4LwWtlsRj9EgwfjXLtIvzK5YDFy5fu0foDWiY7Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779059434; c=relaxed/simple;
	bh=PMMuk/DdpaRVPGLSmyDSG+KDNBbS+9Q4oorAO0Jdy88=;
	h=To:Subject:From:Message-Id:Date; b=dMLwfBeqkQthZwpWuAlAvdciIPzt/d4sqKfUGk+8val1j25s8yx0WQ+rOcVMEM6XEBthYA3winGTbe8U4jjurdVYvtVaj9utvQcjM6O4Dda7SALjXmsI2JIC581zfMO0mLOWJVt56MHeZ/jd88TxV0a/2kMrJZntFR8PcmXvY8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqEciV2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqEciV2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED34C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779059433;
	bh=PMMuk/DdpaRVPGLSmyDSG+KDNBbS+9Q4oorAO0Jdy88=;
	h=To:Subject:From:Date:From;
	b=tqEciV2nJrMaXyg4oVYO2mAaRcE1h8V1/pTpQNtqFHtcQbvWsyCVOMzPyd0NVJ4QW
	 Z6S3gA9oirk8VbeN3VjNbAyBAPSkirtJPRRwS+QMzUlwlIqcb2nI8Wbs6RuT5xWvZ6
	 c/ZQRlXl+vZhjcOzVEkduI6u4PVs1p6GimjxnYRg6RZsdGpXRSfFUfVTVa91X8OSfB
	 D7DZ8DEQ8R7ZkJHza6ltmZmEbtXx168CuTLuMzLIroDNyoGet+fIbg4NppkKzC2cmS
	 KeOURsTWNkZTaeQY94kaoIe+n8zNhvbL/OrwUU//s6rPo2hLJa1byTelG2CgWFvm0Y
	 qEF7SwOY2GJ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA363CD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905943368.4377.720537645799858719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8787e9119c912fbb9567f05ec4badb079772c5574a1e8cb64c16c6cf5063bd2
Date: Sun, 17 May 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779059433
