Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C743175A87
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777765654; cv=none; b=c3qFjst77ghXG2hZFkdxabQ4oYPJiVsm4SaGQX+Ppt7mYv+AT7EYw3IECSDkA8BPbzd87Fz5gqOad4pdzUEn/xDWk0vbthWrLPxloaKOy8Jzchb9G6viBGBYcPqAdsUGTJkWiwyDPuObZp9CmzrnhiPpSoM1UgpW2b0peTrMZ9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777765654; c=relaxed/simple;
	bh=qSGC4FENvzRupeng83yKadr2KUkwkqSK7ZW4Jnb3gcs=;
	h=To:Subject:From:Message-Id:Date; b=UdctxoX5M6mEG2opY1CLrzY5eQDIfsAuQZaNskp90rmL45bYS/H7YZ+IE2nuW5eYsFDPt3TzZlzuI00ohicNGjKsUjOYi8rN2C+QypY/scUZK/5P/ay4saUjx+VPQulcLxztEvpj77WdoaMOMKj+3dEibm4KEIXV56GbSYkn9n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSy1daI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSy1daI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A93C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777765653;
	bh=qSGC4FENvzRupeng83yKadr2KUkwkqSK7ZW4Jnb3gcs=;
	h=To:Subject:From:Date:From;
	b=oSy1daI9DclE3hJ2IlLFx8Ga90o+loOlC9GDyUaIlqIeC91t3WcaKBtP5UxbPj7vd
	 xef8Ha3iIOVGoF6sxfab0BlOKpxJjpGg7aDgumdu7+UvJRYmGVKBop06SJLMs6gLqE
	 qXl4YijOVQHaZiukA2RKYKOWcDqhrNy3qsM0bGAeK8lzHndFT7aTLtYFoctPb/6L0j
	 YbhVFcBe+JK8qW/h/KJ/9J+0sQMGFoaRO0MPo+vLxQdKOgKdDnh0bj9NCkFmbYtElx
	 eLQrWPelsP5w94nLn4CEpsthxpslz0B48ja19wjnSGeZqqm91ErIijlpG/QYFx5PFr
	 hD7GeXyn11K8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6D0CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776565368.26154.15088532050516791593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96beace26142ce72cdf360e364d56b1178aa2a1eacab17664e3a06b79ed07e66
Date: Sat, 02 May 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777765653
