Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1593F2874E6
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755101994; cv=none; b=Mfaih3y45HLFl7p6r6h17KcpgIlZmZ+rEbfjamAae+3AoTy0Xy2z5bFbfjXobskM/mpd24j6Z/IQoSsHhG7v+7z3pJLbo4+Dgfypl0tH7ppoC0yQ2Uf4lrE+HvE1Qo9oGiW0bFLlcWsQWeyWu+hyYwVkSF9xlSy0UInXvY8SVaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755101994; c=relaxed/simple;
	bh=LKmSphc4MWDnuJVIyv8L5/XrFvC+MeKnAG/UDWTYqo4=;
	h=To:Subject:From:Message-Id:Date; b=Md3nKt46+mH1YrqDNcq6NF7+7Rj6oKuIoVFEXoAiTCUnCXtKoiSrZwcXRFIcw3q0ZOlqgvSHQGJkMKyroDJaX6+kHJio6emmMPvlkdb6ksGgpRIwW4IweD9ZdBcxC6d5hcJpvqyoIEfKvihTqe2eWR5pbWUFmhRO856Sn1/UBUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sba4YaMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sba4YaMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE9EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755101993;
	bh=LKmSphc4MWDnuJVIyv8L5/XrFvC+MeKnAG/UDWTYqo4=;
	h=To:Subject:From:Date:From;
	b=Sba4YaMK5PljMx4/TiJkOyPorH5BPUQ5VbKAg6WZcMrXstYr9IdJ+qNxOIvcbIDmU
	 umenpqrqXMzD8Kf0MlNk5eguoB5537g8g6tZu8Iku/y0esr6KdHhSrn08NmP5QHiGe
	 ilt7r/JSytHFYLZqikpZctr2t4/FhnrerDejJUvILj2tDADxmqLxvjThr3vomL4Grf
	 gO+uf+dBZ7UZ9d1vr0G6+kWVQnOOFiRmcImILkwKnB7D9l8Ytj6G/QO2a+nTmwTd1I
	 eANlH5jIqPj+zpJDZG0To8dNKu6LI6NqrKkmYW78FoOL9qf6IVn9mRDLG0Tg3rrqTn
	 AxcsE48EnCN7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC1DC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510199357.2715.2210316162353437699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c6d29b330053b6a4139282b7eb79a172102dc47ada4fe532c6481f53eb3d18
Date: Wed, 13 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755101993
