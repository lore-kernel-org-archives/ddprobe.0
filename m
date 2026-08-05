Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC9A3E9C32
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785958234; cv=none; b=hf6HKj1HiG5Hark+NjjkCpnBgiSCWUw2BKgfA3R3ec7i4a6yoc7YgAeeP6gtKcoZ4QTz2MPc68LMzSRFQhvUoWflz+be3qlXAmj06l6T9BJ5v3qQbFkl847bGxjsh+U9C9cMM7IgKt8Do2ZAqBM6JHzKJ90QhWkBr7hu/OZSU7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785958234; c=relaxed/simple;
	bh=SbnjYVkX311mMI+R/Px2LD+vCaTiMid9mRDHnxbGrOA=;
	h=To:Subject:From:Message-Id:Date; b=l0z3Q6E0zJpQmHVnTpQWo1aBTNass5m42I7jnR9B/3Xq38/MoBk/HzTnIoxhhmdNBRVVQGJtNOxWwlNOiaoqNcJzkAlfA0CSFx1Ag4sVLgD0S3rBaEf0MoG6tvP38KFk31NX1c6Ag3DNPEDPdWF4b51doBc/rwN6y4Z5fy5pGrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvN3YMf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvN3YMf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCC6C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785958233;
	bh=SbnjYVkX311mMI+R/Px2LD+vCaTiMid9mRDHnxbGrOA=;
	h=To:Subject:From:Date:From;
	b=DvN3YMf+pOoutXrre2XcEHBCgS7B4e5JU8wsySapZsmE374LdhpOgC6D6tXHDysPq
	 zYkXNNdaP1pQ1AwgeK7v2NZw73aT00T3wxj58FXoDoTczvLvFDPc7oSk6aKA+BhNlf
	 lxUPA6vgcV3vdiYUv3GASx63dUgwnKJptjd/pJTK6qScfnN1TrzmKPymHraT78zs4S
	 8kgrwKRQ2LhuxXknApw8IgUV4iOdpWTox1aZCft0P4CA0/wkJr+DNshtUtBiA8h7t3
	 T8AAiLrCOYIqzwICJI3fMPepf6pxxw2Hkv448VA1fodtpR/Px3LZgsSv+9Ypij7+n8
	 /LCgy85MZldWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AFCC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595823368.32586.15435331575439806039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c342de09dd9c9837f93baf03afbf50cb0b1782267d029f5ab22cdcda41686f3
Date: Wed, 05 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785958233
