Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2893C2765DF
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755535794; cv=none; b=c6PJ6YRbLcnw6QZYoEJUhMBFt5eTnu8aEWX3pXTbr2HjHPpoy3dOvO2BM3vzlWDBmBLzDKHw79yS8v5JlwwWpD5TS9qholtCST70tTUqzDJ7oObFVFNhT12lBXYAT/C/4/MSPn6gDD5fPbgc9l19s7ZnuwuQR52MQwzmOfoctTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755535794; c=relaxed/simple;
	bh=0q4EQ9ZNMG+EBGiz1wcsFI8ZtrVZkWGzDwTOyRR+Yo0=;
	h=To:Subject:From:Message-Id:Date; b=N1g5APGLZfXS8tAi4dkRGEdEYnwVJZi2icJrfX9dCP6bKqAYiToubADCwzb+i0TmBrMEOVqf7gbwpa9QUEGoa4maS5zOF/3RukfC4WhxbLcvXFbY9C+zcO/YiVRLZsNQEXOAq1nwu7s/y5q9v9mheHuSd+YdN6TBuSHcOERh4wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BATmhS/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BATmhS/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A84C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755535793;
	bh=0q4EQ9ZNMG+EBGiz1wcsFI8ZtrVZkWGzDwTOyRR+Yo0=;
	h=To:Subject:From:Date:From;
	b=BATmhS/SXPb3HlCBro+PlvQEjGMpjmRVMvhOrkSy/KCRDKeP7IJIO3GKjkXaKV/xY
	 K+GOoU9J6PywtOZGtev6IbNlXxZ+AzPeiGkhKwjBiLSCs5mLOpIrcu4HAxCXJrWNUD
	 h341OAi84zdkX96kMAu1PbAkFDFwXRoGVrliwFpNmGu0beFmLbzTiaCCxChRP5Hy+l
	 LK3Am6xLv0Tsazhf17l/dgdHhmSodMDgV+n55beOhUQHHx360hsonfnyR3EiMEcjCC
	 EIjEWCWSo1NCRZ/dyzO5wb+S3Uu/0+xKjQOlZmpr5iMBEjrfxeEJpIA1nZneOlOvT7
	 tEWoU5d96YGgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD0CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553579357.20738.5425282476609006466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2940c5e211b5b4341282064df583f077abfabed18e74d6d486ea3d077c2456b
Date: Mon, 18 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755535793
