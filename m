Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA72370AE2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783333714; cv=none; b=thmrVWsURqhbfSlTOosMPPu6js/4OnuHNi46TkdE9wqJp3/MJmvcyQuJ1wbICG/2QbGCyvnWhvnpwKKAgMbRmypt6JpIJ6LSt5YvRwjS0iYLsWpdIvKpK7lsGTvO1qHDjSYDEs7qEdruo4jnEkc8hIq726y+/PPGjs/26yRPaPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783333714; c=relaxed/simple;
	bh=AA8j8E24qwjFu45rPo4l/rfBWyBrO38qpy+KiBy6yMw=;
	h=To:Subject:From:Message-Id:Date; b=tPPXTdHkQO6S/2TAVbRdfpLzWPlCAkF9IIqc9i7GOK5OXK1MQTgHwXYbCSxQbo3U7ybdxAY3cuydkJH6CNml4mrkc18shiDmw8ljmzX5lPYI6HxW01t4wSF9K9S3kyqb9/elydCDQ1YLnRsXE9jWQ+MJjaoy1P+5ILUDsEcCX14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFRw8U84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFRw8U84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8F3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783333713;
	bh=AA8j8E24qwjFu45rPo4l/rfBWyBrO38qpy+KiBy6yMw=;
	h=To:Subject:From:Date:From;
	b=iFRw8U84QflJXQwV6wKeLndxBYNhHMYCzxoxFcG0Doy0nea2DeMv95q6ulXZA4Jt8
	 2Mzml157ORgIZV28ShqCqoGCFvCMzIErnSV1ITvh4Rr0XpdyN37b/IObqoFmLADmzn
	 gMsBlL7ocHG2T0SEEBZYVUx6BPXiuqE5CqzTPpaKFZwvZDmFKkOMj3xMoFgRb4boxB
	 b3JUjNeLkQcRd8GkYs/sY8iDox5cRH1bI1nMdVcwztNPb/DORxpmD5uB7qOLy7W0HU
	 F7BDCOsM35SVp5y0OstwIySiYSqhto7Tve5hp/YqfKUX2IBkHu8CYqzkTdtNYrdUgW
	 1PNZBQwr8Q95g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C8DC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333371368.26740.11321637370835223625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038c578d6aff5e6d68b2e515f72be7717073845fbc97bb5384d8cfbe0dcb5bf0
Date: Mon, 06 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783333713
