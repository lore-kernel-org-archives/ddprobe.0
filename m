Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C58C15B54A
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738876554; cv=none; b=MUHpxcK7GPP4R/U5v6tcK0zFkmCa1jr8+ZyzM2++80gAuyNMIbEpSNPLispj1LtkhjPw+QpA2FN44f6nTgG3mbCspBLEvWGctGR02fP+Mqqb331sopfZuzaLaU/BswyGgk3ws3KXYsxy8ZM9rJ6VrrPDP3Dn/vriXaN9L5uJadg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738876554; c=relaxed/simple;
	bh=cTLD5DIL4AsM/V+FWpWwz2xxsaMIZUzWIOGtkQYEe9I=;
	h=To:Subject:From:Message-Id:Date; b=XiO0cS/CGBEvmBjA0BXL0R7nwLiXvHbj+ImOpe+HZxyhEj8qgZt5xneoNQGadUQRAib0B3iuxz8pimkQJKoMZHf5sPtPEu1WG3+gzTBd1jA2N4bWjnoJ9iEPEn4AgSvGjlU7ZTeIDDeTJzPpURCI8dBRc7bb9ggygCDOU6rzsbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NubR4m1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NubR4m1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC931C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738876553;
	bh=cTLD5DIL4AsM/V+FWpWwz2xxsaMIZUzWIOGtkQYEe9I=;
	h=To:Subject:From:Date:From;
	b=NubR4m1xpB1mmT1kCUA9x6uPUm8eC6FJMouq2lNaNsoRVAMnoIWiHWnA0try9m+vN
	 WF50FWcNJk5O0s1MwHAKObWpmNakeLp2scwLZaa2fii2PKOAXv0buObusqqPKf4sbG
	 TYQCy1FJd2fALQR2BVBrLV3z0ZRLjysgubIGKiFfzqXvzyE9rbFhp5q+herL2GK6Ws
	 a8af3c+Kel2X11M4EDRrIDoN3+CVjXURqO/vevmrZHbMIQtY9AlL37x/1cPE2PbfCD
	 0ZD5KvMFVGt486svgHHJQ7ta4yHB6t2hODoSM/Xk/dth+Mm/0pc26ts0kVvCcK/Aw6
	 ekznyW32n/3cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4449C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173887655368.28060.16324546114025875306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347bbd9d05ebc44d8b030b398f6901832ba01f88142651f074ea2f0d350ec935
Date: Thu, 06 Feb 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738876553
