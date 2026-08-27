Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513E13B42C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787864434; cv=none; b=l/fEzb3eASLROejrfRglVgTGd/begARxwFL04RZfyzevybacWvAOg3Lt0ZdWwYTFzEDaGVNkkg0FTUM3ylPfE1PRQ26LE1UwR+kvZecxdKg4l2bM9MhJcQapI9kBHIv/fkKj9kBVacWQ2YiU9Pg/zldtEuocApuNKQulUQunSNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787864434; c=relaxed/simple;
	bh=+6Eiduq+Kk2O/3KjnDeUtktqwRpggt250vr/VtzSq5E=;
	h=To:Subject:From:Message-Id:Date; b=TMKr2xez7GykVThwlQ32YFRjeqnaYNQ6GmGNkpu4Q9Tf4LTedvmsa5SRVJX5ercKjU2KBu1jwN9lU740mqOKwTDLM/xvcozUjSSqOsjxT70xprHP59p21yrR3r8thi5lCU1zHZL0+hqnKeyoDjwWB45wa4ItGu5mLiNTQNsWaoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIhw17fH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIhw17fH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5ADCC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787864433;
	bh=+6Eiduq+Kk2O/3KjnDeUtktqwRpggt250vr/VtzSq5E=;
	h=To:Subject:From:Date:From;
	b=uIhw17fH4qeI2CT7jITXG8NhVddw3ICICK+XJT7ndMMN4FYP5kBitMrQKECyGehO2
	 q+iPqP9m38ZPmIk3jxUEOOyuIuBFTmnqpDv5e+lqb1bHcw0K6Pbea6gOhWmdrntDLN
	 FCFDiMzE8lPj0cjEnY7mBA6HFCQiIykOo7U7P6gwGmYvVBkeFpj/czzO40r4g5ishe
	 JkzxTYaQO04cQfnDdPQZSadIynMVraWJqV6TIH47Uqifp/BYFnQVsYWSEcZUkaanSp
	 IHJ2aN9el0BIeH7Dp4gnNiGq55uNiSDBmC+/KpJv5FfdtNQkPEE94RO/VaHDMHC6h0
	 oJlvfOxBYEPXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B230AC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786443369.18915.5299390300691909050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8b855ed94244c6dde2c24de257cdcfddd417714b5da681623f9b018bbaea50
Date: Thu, 27 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787864433
