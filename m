Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1546040DFB1
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773201294; cv=none; b=sfAwB6XNXExXjrj4BCT6XCRr6JSxT4Z3gtoxL0xN4RBg+4jDjf9QbrIzruywUbjQIqd+dSmUFq9sQjzfeoGaZGxqikAERDy9i970+/4QdC0it2ZZCRo2ZrXuAfcm90hJTwrwAvzRlTpKJXnceoWuBDBtWY/gYfcznZ8i63qDdts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773201294; c=relaxed/simple;
	bh=AuS+8r/tFYDJHMxacj1j+2nejiw02TvTuiIdVSZf6lY=;
	h=To:Subject:From:Message-Id:Date; b=ZmCXU4AT3YC5Xv+wLDfSFavNJKO6fnIGEVfY6Dfyf+ufrGWlE3WcU5JsD2S/kzEKTITjsaAbdAv1jQ6GJDRdimaaS/FH7PI/hjnebvV4jMi+qocbcKNNnntwD43bAEGtsROLcFXUtehTw9skkkpGVLopKjWg01HNkE1KcYEhFqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWAGjJGS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWAGjJGS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A187DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773201293;
	bh=AuS+8r/tFYDJHMxacj1j+2nejiw02TvTuiIdVSZf6lY=;
	h=To:Subject:From:Date:From;
	b=qWAGjJGSzLn/H0ZPBOUeQ5Kf3fmApEKUwaBtZnxsVvgSHMaJy8RB5t+msymoJHwAy
	 V4BwDO3exjimpkiJfu6yvucRMwuASQkHkw2tG4A2yAfkpYkApOlHzlobKejcCE4FjG
	 0NC3dpPYuVh6JPZq06WY6uRnOSE3HYHjbOuvAN4nxJlG9/YpB4V1mZEKJ8g4vp93g3
	 fi3BC2dMPzqGuyVsir3kqQNkvWomzcyx01fnCm89qg1ySc4cu5+eye/rqnMr9J2SRx
	 CViBV4dZuRo2BDf/s16BiwQl1CFcO7VLpEjdjwJi2PW+SugTeyj9CA06stl5ceg4ju
	 CCF7A/i0Ykeiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90689FD88F2
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320129358.11276.14649533493920365925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66eca97cbb5ff2d3703c4a160fd5aa48c32e93bae4b805e7f22265410a286e4
Date: Wed, 11 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773201293
