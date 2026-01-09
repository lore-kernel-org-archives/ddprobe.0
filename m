Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045B04F5E0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767920634; cv=none; b=Q7m0wLYFs0ZA08wRamE8/byC+D21D5ze09Fk2GmVQQ/VtcY65aP6dlRoeI9YpcW0LBGIq0Ks98HS8IkpLgGkXTmk7RWhYCnc6e8KYh9+ygH+lsRez4/94LCLL5A+BUbCSPgZJ8XRBSnH+AKUf0OV2KGNUzfeU4kTRSt7AraDtSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767920634; c=relaxed/simple;
	bh=ilTAMrGW5sQxd7pO3YIELie1dax0S5/FsLK+7FSiOW4=;
	h=To:Subject:From:Message-Id:Date; b=JqeDJ2iX8Hn/1oJtbgmwlVZO+daDNEfLK0RBMvoXxl0CloOgAT24MMyRa/2ri34Dmw+nAY3eIOPh6IoOEVvVTaQjPXKjniWlKyHK6VeZoD6YNgtgz+QCSIMSgDo9FvPusKZeVRS1suwuZER49w9+O7AdT98EdPsvYEdRKR+FPNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOIb2W7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOIb2W7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CCAC116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767920633;
	bh=ilTAMrGW5sQxd7pO3YIELie1dax0S5/FsLK+7FSiOW4=;
	h=To:Subject:From:Date:From;
	b=ZOIb2W7fnplJIyNpToL9w8iu47ZqBjWqOravfitgUAxp7Tf47Aa21qOUdUFWjgnrw
	 wsDCRP4MKS8v8wbeO+mzFpkG6hV2C8OkeuH2U4YJUxPPwZveWm686f119g0b8dRaTK
	 uJ3glQCAWWQxo4cxu4P1CtbMgMsugVWkJLsQ1qPM6SdMxoFLEi+YP1XcKrd0lNNXQr
	 Hmw/qkDkxNd+IwWsVOsuLFYjv7FpgUUhdFNsvWF3iDuYvuPsrdZYykKOdEadpBHvT/
	 FCR5pfuHtYy1RU7jbQT3f074debLbfe3QBbhCymureUcK1w9pWNlVEnCII/yMeSKHl
	 N80sY0zZDgc0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FF7D232C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792063357.24034.15238870090103606596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c042dd68ccc43752493e2b241f90639cab04eaf3e6592a00557d11ec64d7d8
Date: Fri, 09 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767920633
