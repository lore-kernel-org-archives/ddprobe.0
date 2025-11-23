Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAED3207
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763865114; cv=none; b=YSwVhdmakXhVCBMe96pl5wlFr1g2g7IIwKC/qXlsQ7eXyGcJ84ZXSQ3BQpcNWrjwMb696oOe/I9pexVL5HQgLPY5OA8ZOAQwEgB9DeesttfDwukDCFmVy9UOkGbY3SexEUfsU0iYmo0Z0kkQsUY764YX+4fL6sMSohTbHovyDHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763865114; c=relaxed/simple;
	bh=QIKtpzgpXFKX5TzDtKy7OIbh+pJXwqqRsFfr5nywR0M=;
	h=To:Subject:From:Message-Id:Date; b=k9KqJX/xcQ8lNIjCtiRTipLqrmMwCwxO5gR8ZTvmK4kFVHgebFcRS4GH5sbMP83wyAnnIuioIMSvgM+0ovTwkOGjarQbpG/T9YPuJg9iAeCjGihLwT5aJu/v5XnFBMMeK3ZTx03C6p0BdKe7dNvaOLQJpanzOZXQGStQ34i6JPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtcId5Up; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtcId5Up"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EAEC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763865113;
	bh=QIKtpzgpXFKX5TzDtKy7OIbh+pJXwqqRsFfr5nywR0M=;
	h=To:Subject:From:Date:From;
	b=gtcId5Up45F11sDN9spZ/TsYd68A9+UqN6bunpWheKrIcpeNMFtaR8jHbkZM3zEUO
	 qQzfpyKRczop22ng6oXsPTgL6/jCiomphoC3F2LVuksG4KH+ei3hudzhjSnPR22fXy
	 eQ7Fy59kbFAH3GUstSFbZHjB+bt9rczOcZ7JihfLY3Y4deFh2EqPtFz2SHURHnVbXB
	 vPXOtcKsxEDwWPpvs9XxHGwzIO5dcXuAjpPScqkB/si+UjOH0W+Hqyn+7iqRYTNQ28
	 2PpstBgbjloQDa0sAlmHOqngnmFHufjTtC6i0kYDHMLPxdA7tIhcefuZg3gTKCgp9x
	 aJm/dD+Nkadjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B84CFD312
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386511358.20730.10505387872555169527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9915389f649cb08df2ed62e985a302ff485d19d789a4b25f708a560c004212c
Date: Sun, 23 Nov 2025 02:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763865113
