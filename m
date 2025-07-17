Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D36E29ACF3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752755995; cv=none; b=hzHefAVpYnBDIFUnUL6xhl2y83wc3nrFNFHTeuJIWGAA/v6R+r1xiFEKwcNnLBUIPOTIgrdUWy5WWa0vw17WBZTV0UJma7Moucgb3jfe1LPbVl1in4WqQD+X09jpilEek/kNDG21yaznWOQ6xq/aAOxfXwhiSws76DRPV4kKAkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752755995; c=relaxed/simple;
	bh=ldd/1fBm+8ewWeTePpdsWHOyLsGkDxKLAN/q7qkXDqo=;
	h=To:Subject:From:Message-Id:Date; b=YcYM5uOaKcZV5r7uquCTR7yzzpB2rDaHgHMJf1CY0YVBllNeouXXfuyicQBF9CyAmcaGqDPhbyjXKPq2LDTxQu96qYs+bG+/yQvIEaXDWNBQOC6vjAi7UH2FlWigrZaKIzo9OG34TXdrdH27GQotH7z5Kix9GCmWWWId5eV0PrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+Gcglkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+Gcglkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D57EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752755993;
	bh=ldd/1fBm+8ewWeTePpdsWHOyLsGkDxKLAN/q7qkXDqo=;
	h=To:Subject:From:Date:From;
	b=f+Gcglkd5unjDKIbv4RN4pai2vrCl9diJaMLEvgnNhIw2Pzn8WpenIiQsJ4zTsPI2
	 d9HizKnoyadmWDGKITNJMi5rCcIYVvj43qrL32S3tCzscYnKWH0j7yiRhtRrFXv1Wl
	 U2E3AaudUf+NjGeye8cqzppkg1D8uztk1/w5PXfSByAuUL5lP4ZWKYd67ZFEZPqYh/
	 MOW8CSnHmV2mC9NR25g/uXsChU0wt2DqDBSjtbQ83BoYxcYBsKe/im4NjAUCRmgV9R
	 L/rinmN5LETwiJcJ9CFKGFR5HZxJpcAzfW/u8TaCHas9NyOOs5QLJGvWElBMMRXg3N
	 pw64HRJPjBYAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E92EC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275599357.22738.8646560274373705279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a8f1f4e67109ab0eef00214c70f564d40dbc4e2c54557046de26f7caaa3b8b
Date: Thu, 17 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752755993
