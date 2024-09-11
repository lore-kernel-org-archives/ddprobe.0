Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33430199FB1
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726077354; cv=none; b=YySuyrKs1sWXcAqXjgy5GkyLuafVnRvf8Tgs7M4fDC8tL2JZwawzA5+NqkVwPNrEaErIYkBrS2bx8nrSRqssaFdHkNCIJmkPz8qVwTR+yUG+NHwLGGHRbdmG+gWrrAo3kyFyjuNeNMg/5c1em0nXpZ5LjXa0dFDwY+wZXznRYME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726077354; c=relaxed/simple;
	bh=cBpj63n4YUgwGUs5Maclfd8VePQaYB8W963cMz5eyaU=;
	h=To:Subject:From:Message-Id:Date; b=EKVY459jbQk2lwzcTJy/UpoNhHD1JrDaxWakHtNc9CaXoq26LAlsE5GfyumvCImjfSSgY07WGjNMY9SOioWOd/VqzpmYPSxP1iaOGFOzIxvFFTLXzz3xnU7q9RJ4m2XV5Is2NczyATpUpiXai3eMXRi3JWq+njsHCx64KkLrsv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjrW7/c3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjrW7/c3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF164C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726077353;
	bh=cBpj63n4YUgwGUs5Maclfd8VePQaYB8W963cMz5eyaU=;
	h=To:Subject:From:Date:From;
	b=XjrW7/c36gDX3hDrXj/X+ZHU4xEcSQc+r66Tbp4ClD20s5yzaGtoRbITEIKBS7yKI
	 F+UNv1JUdNM3vlvBCmbVbHmAP+rDB1J8oJqnG2CkkIn0uHEWIa6U+5QOMr78V4dRBO
	 XSsxycRo4RzFOsoUcnCXPrxvaSszcCdP4T68OQT1TjLkaIVG2pRgvO11CB7SKvZliU
	 MZzKvL15Zv+A6UqIYp16z8eaGHSYyMEK/Z5El0En89W/F/dnFSuXNlb+5mTk9wP8jy
	 Gks5RYJaYkHRmvy1g8vypcC9SV+/47SGpKC4y7M81wHTgs4cSNnOG6OPCBxjGY9qXs
	 YxtKg8QBxGPqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2CCEE57CB
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172607735359.1783.2458923306196743007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf658a157a1d0448443026a15b2be3239b2a1932808671b0ff462e8c8ec7512a
Date: Wed, 11 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726077353
