Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE8142BC46
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784086114; cv=none; b=m6+3+BNMNcI6HqukkrBXw/NLEdAilC0FSifd6A7edRtQWSUi04pSA7s/pBVjUQoqwUp/mZwELI+PV2lmi7pDSQ07eG9+aFCp6J53KfND9v6k54MRSg37ARN1IWSjQ20Q+4/FDaLN++HGeF22YFUz8O2eKorhR1I0zOXW8Jnnm5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784086114; c=relaxed/simple;
	bh=yN9Sg4LRoik2lhs8AYMdgaDo60Evc7YkoMisFbarwog=;
	h=To:Subject:From:Message-Id:Date; b=eDN9L71pcqQuN61LrW+4pf4uSTXZ6Ke3qYhDXXHHZ5DhGCOvfD58q5ZXU4c83KDjdXpxXKTHomaFajqZaD2z8cfhf7+mzBEDYmkqjJdeqrKladXpr9Pu3TVMYcSjl1JHVQAPlYp/IqfgFa/4n4X9sTjK/Z+u0zpwqQZdIU5qkNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7Vz4uDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7Vz4uDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBEBC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784086113;
	bh=yN9Sg4LRoik2lhs8AYMdgaDo60Evc7YkoMisFbarwog=;
	h=To:Subject:From:Date:From;
	b=g7Vz4uDaLqrQRHmDrvMz/diGG3YqEHuIdSltBXmxsPCSYF0fBfiDfBrKrPondV5C+
	 KxAN1s5h9KZxXlTjO8bwW+UD5KY0gFHUebw5tLO5hIydfv3dPu2zCKoNEDcey+GQq+
	 ukjBfR1UyDNew1aRQo0/mB5FWcEHU/3ZPpPfhZFYg9aoQbNuskVri37hEwbYmU+Zy+
	 j7w4JgyhLCqC9RFT+cbeKqYCmlPGht2fx1ZaJyObo/ylJxB8Uu02WSYDpIKThS+7OJ
	 eReCQFbmq3jB6Bvrekbiz6ld8yKRx+I9uZn8fc6fxfXZTzmJ4G1zWRZ2xT/za7pDMB
	 Fa9K2VUG0uRrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC341C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408611369.19380.9952548814709475955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ac14be927a80c28d17c9742d91a231ba30620df970f2c069250c57b12c9113
Date: Wed, 15 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784086113
