Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85A503859C7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787452234; cv=none; b=oYj0TqU5QYQOLk0dfk57smJHezg9x7JEbhTCJvC0OstZEY6Kc//LBj/UkGbtKX3IF6AU8xxOrx3w11YFo7yGlRtuhfM8KxEB07PaUmdAEefKLs0brc1T2r/v4bCCOgfXMlXJyh15N6Ph4Ev7HXK0kDYqli/7gaCegMrSO8jXoo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787452234; c=relaxed/simple;
	bh=3Int9pR36zpliwAF9coizSSHP1l4KtviS0KHMlWCBb4=;
	h=To:Subject:From:Message-Id:Date; b=mCMrRGNqWf0ibT8eCQoNN3xqT2Ri8JdLU9BV++iYFxTJPO6j6cwp2wnelPy+5+nhSt9o5NKubUzV5Q60L6THDrg/MrBZa+Fyo5V1wSSahwU2PMl7vgh9tKlhod5iyOijy92+YEf4+OEdKzbmQOfQDmR+JbZkzydCvvpvSvFX5/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpoZ+KIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpoZ+KIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5F3C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787452233;
	bh=3Int9pR36zpliwAF9coizSSHP1l4KtviS0KHMlWCBb4=;
	h=To:Subject:From:Date:From;
	b=qpoZ+KINuCZHk0WhV3fFsrPRYHuyKmV+PBiefPKM09CHnT0Vty4jfEFXFvKJRfIfY
	 v8tglQBtrCBkNPGKADF05xbmAkSNNnVS3GPC6iU0mMw4kYQYA2yytU8McZJDiRLpji
	 9IB/rHci96qQUrKPZdou7cjVyK/et2opY+hYoE4y6sEiaMtIIEraatwIjrhbAWQ+GR
	 z/EIalmkX79LxpqLaWDTF7iaA66gk5uRKDwA5R6eYdiMHfdsoDNJbgRiuWeRwp3gLR
	 kxi8becjnJwRtA6HMi4pYfDCCILmtoxh7c+OPhuKnDpHXkaEd6uWphyRFmgTZrNKf7
	 rkmfRjmaOyzqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39AAC5B572
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745223369.15593.3366726940137343903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d666e39a5e9b6777404cb9d5777af86fb071acc10c9492498c5e2fb1e05945
Date: Sun, 23 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787452233
