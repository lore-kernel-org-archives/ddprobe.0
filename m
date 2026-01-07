Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB45E34216B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767810834; cv=none; b=I7XcaHSdRTJYZW0vcw2RjBsUZ+H1W7hYH9Vg9iXOVrTpMhIOz0Wl45i0oiDzdabBkKuffWpXTSh316LWnmb9NOpKSxIqYBTR++1FdRQVexWsqjowGdFYjX4gce9lXREpsB+ctKYC/kORdtL1cxGph0Nb1b42lSqHoCfGpLCNvlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767810834; c=relaxed/simple;
	bh=efeTi0T5AEnpWuEduwamdBEvz0Wbi3cW+y01cpaBJlw=;
	h=To:Subject:From:Message-Id:Date; b=FAoFYeA7JTt08pahTpABJPnIUiXw+EYALVdzx4/9IW6Qgf1k60xhGU91Pv6mMwu1pSlDI4RqH+MZqBM/Q5oENl5V8S96FGMhG6hWJY+uKJfyDveQk3caw2+b0+VzfmYL6rMDZfeiWXL7eZtlhoQvtXPtKUV8kE2Cfhyg98lsfcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SO2nxXWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SO2nxXWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF0AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767810833;
	bh=efeTi0T5AEnpWuEduwamdBEvz0Wbi3cW+y01cpaBJlw=;
	h=To:Subject:From:Date:From;
	b=SO2nxXWNREFhNgjAWHUWgJNcu9xSNCuccSqC15Zu69Q8k53q51jVf4vqtQdxTtoRh
	 DIg99653p6mLiEb14iHAmqBaqLq7/p8g1lef4+lp2yl2VoCJ2Z+s6OdnJ+WzretZ8P
	 37er4z51HQPfYkuLKCFZ3RU5QkBTfZ/OEEmB63JPSRVPCVin9iBVCv4+Iaz9JwzBnf
	 JvP8jdGQFZzzYyjhgAhuI7DOsYTJReLsT+gVNbg+YGZ7cjY6+pkKtwxEukBoP4TIn5
	 MTlUWWKgkA1TWFmJPrfMR597uGHWICetJVyYEeHUiyQJd8qqoYIvDG18InaUGwWEn7
	 e+x2Px8P4TG+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F44CD0D157
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781083357.14849.5915815008072628944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38948de414631c435964a19e410591417e2e501fe000b43b7ca6a44cf9604358
Date: Wed, 07 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767810833
