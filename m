Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578533806C2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781701594; cv=none; b=jcNCB9AH7uheXkWavb3hUtQOCfNPbxcgFCeMXmjU7xrxF8Ebh2Az2G8rqUZ5EY6ZMdXTtLrTH6qV7/UdPGssNwbfxb5HAdeuveDmnGZ0yCejKEj+m4KngEVFbhcqHOQHd+eyEQQwOxir9x/yiHOuTxGGe3e6RcG4WSrl2mKX9Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781701594; c=relaxed/simple;
	bh=qyujWSSKEapQCZJgwARM5NlvY5Q/oKsIY2HUtH+RaFs=;
	h=To:Subject:From:Message-Id:Date; b=XnPdrLq2l+CldX8M+/ez8mya+ZJev0GRlvSUG4LYe/NhbJa5dzgl/hGF+oMRbwvdG+bErQsv8bzE+Y5DMgtH1pXJlHllam9GXZp6d7xv9t7UfXQkGODnW4bby6xhMMCJYpSHz+YiI9eops5brDCTKyHMzpdowa9mGdoVJxdK69c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJTJGggi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJTJGggi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD835C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781701593;
	bh=qyujWSSKEapQCZJgwARM5NlvY5Q/oKsIY2HUtH+RaFs=;
	h=To:Subject:From:Date:From;
	b=XJTJGggiBesarGiLavLuuA9/zcg4+uyOfl1WEqLntTXZLeyHp09xcWT9COA/Kgh0i
	 INE2IR8uM+ohtJKYOHvY8D1siIV6Czo2wbzk/6OVWnICnqPLym3YpXgKjkbY4Vx4T2
	 a3bYPXyq/XxRifkUrq6aqF4dr5UUByRIXpS7c04S5RWYYaoAHeZgS0Yb3SI9KOB2JD
	 azECs3mqf2rbGKomeR99sbBiGDUH3aceOs+U01lv+GGn3kVlOCq9cSc1yoawH1yUVU
	 RwPHILmbZckX1nbn2qxzGtRKObaf3OxJZUSa6/ZkyUXQv/yizYvf+zdfmbUjqYjYJo
	 JPvKnueUU5PZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE370CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170159372.19517.18353097330190526551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d56ee306fafd68a6f401dd113f7ec97561600ef499b11a613c2d2916950461
Date: Wed, 17 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781701593
