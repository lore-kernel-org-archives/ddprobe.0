Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2847063CB
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767416634; cv=none; b=EpfHIDIOme69+tlelnK9AuMhD0UYY/WSAKencSUkOR7F3t04+xCiO00mq3NmDJVp2+NkcT9CXEHCCWEyY+ecCD11XgqtFUwDR1gjvmsVglvCmii7fcIlIgKAR8WsCa3qe/yI9Xr55gmRCceneC5WCUDhavJ+JJQ2gdUIXKFS+t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767416634; c=relaxed/simple;
	bh=w8CpdWqjtTobro3MdOj44QbtMNHAFkYI771/PcHdAsw=;
	h=To:Subject:From:Message-Id:Date; b=rxMpWzYUW/hoD0S4jcMSF+pxqGzWsZ9YUZF25fMaB7I/22gbgXWPSv0AojXmpy3kQAnsIfrSxKklQpDMwxtKtR73qqEvH6bujvRrAU0Xcw8GUtDbkFqrG3XdYdhdgUUzqDVazOC0lORLCuOlWAqRgY+mtxc06oRIcqpldS9B6hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aD6t+tY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aD6t+tY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54D9C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767416633;
	bh=w8CpdWqjtTobro3MdOj44QbtMNHAFkYI771/PcHdAsw=;
	h=To:Subject:From:Date:From;
	b=aD6t+tY7aGLcZFYx3Oa/Z9DRBSnocRjjrFrkXCeWXpVSNnRtY0/Tdy4GME2IVngaz
	 TU5S7diezlgNruzH/27Q+QW+i33NZVSFUZvNaqznA4c4h3GZxUpDGxCKDna41Mzho5
	 Ndha+dFEYuLQgDwIY7gbLJ2bTPAEPRCjlgp8EpzAMYewROMJr4jXCqxELlhUlmFS3b
	 tAXhbrbOihsUsvl+sAoUas7zlH1FVh+wicCTBk/7eB5tArz97QmTOb7jPXz2nofN5b
	 mEbhtz3980vaCTWdaq8602rete2HQ+5ZIQa15Ry115/rgYIoP/zdAZDkmYgj0a8qCT
	 Zs8hFjoXG0Sww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91331FC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741663357.17936.17790447906465352088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad9709be85c2e78a1b7feff00fac76e02b21e72cc5a817fc29bdb33b821ee22
Date: Sat, 03 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767416633
