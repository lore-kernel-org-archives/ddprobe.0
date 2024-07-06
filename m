Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EAE6FC2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720234523; cv=none; b=puU7GtxeMNmQxfvUBluJLjADZ4mWlUj1jb4akQdcl4OGpni20++gqSRFJ+LPeJSvqNVvgSKDD3IcHiI+vx1O0PBIemhPIi0P+R0tT9wftL2C2W3LhZkli+7KH3Zxfv1OI9gG5TvJ7iXf9xm+/ZHQOD/6gzYOkFDIxGt2X/8CGYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720234523; c=relaxed/simple;
	bh=eTw232mUoPSuH/mUumb5TNE1ARmUOykukg2nqq/O108=;
	h=To:Subject:From:Message-Id:Date; b=gQuOc6AInvtmYhHDPaxgThgCKxUmL090gPuHCvQ/MFBlAQIqZ+mqpqmBvEpzWdfkvJAi3GRxL1pot5WOFF60xyMdiR/gioYN2kbTZS3c8k67xVNm/e21bbbuBdi6lsxy8fCY6jYF+zyBBZ1V9Pe63BHjq2jI8Zkdx1766WBVTck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apOsQBvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apOsQBvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3195C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720234522;
	bh=eTw232mUoPSuH/mUumb5TNE1ARmUOykukg2nqq/O108=;
	h=To:Subject:From:Date:From;
	b=apOsQBvuaS2aGqes6IBF8J6yLT+ZZhlFO2Mt9jKxbUZQ7uYR91cbX5YSK2rQbBWWi
	 HXOlpyCO9csO3FDr2+LU/m76gHhhj89TKS/eq5KtK4g1mMqdP3iQ4xnul7D1kBoYyy
	 zavkZThYFpCAbj9z9GCoZRFVwM/wBAKwE/ZA7fmhnMSi2BE0YfDizPRPWFRc6IZlo7
	 y/ap3fbJcJ3Z9RKjXC8fSjX0wF60YHm0fLSdWord8MChUSTF6ahM1G/3aItlXxtJoj
	 kq+pVUrW9pdBsKlXp/Q00bXcHtSsfrLcr79N3J7DkoClebMn3qUO1LAuggZg5qih+M
	 45H3twfgFGLAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE57FC3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172023452275.6403.13148207739293255030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a976156f321ccb42d306a0319c4edf2bf812de4b5052c5c1394585724cc173
Date: Sat, 06 Jul 2024 02:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720234522
