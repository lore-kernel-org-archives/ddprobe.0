Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8E71F462C
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756138794; cv=none; b=W/1B9EnHB7SlwnCSIjgoIYoEvoDohF3SDItNsjh7xLnYxq+GqLNugprkueR3J7Z9N8U4r11p+yS93+qAmXE5I98c6hE1fP3U6Gha8eDrmWceLaxXOmUuJfVmNFR/ru2LsrXfwnONtgtyrCilZ3nPG84WWP5IyeqK8jhB1Dwt7pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756138794; c=relaxed/simple;
	bh=BwC9NhGpxHBzVqIIlTZieaFho9oTYH6Rs/LbPjn9CVI=;
	h=To:Subject:From:Message-Id:Date; b=pwt+cirQ/4AtBR+bbA+PUWTIiiGd9O2nwc486hMTxVZm3O4XNAHCwMFxUXTdX7E+w/K6Pk/H9lF8m7K6Hl4ptWcwk3BKbhtp8sMjML1GQoz3sBq0G4rs2NT1kR3GIKSu4XzAnhDiB9teNa4no0hryN4MrovXjLnxZd/dN+eFGr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYTmVLG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYTmVLG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4783C113D0
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756138793;
	bh=BwC9NhGpxHBzVqIIlTZieaFho9oTYH6Rs/LbPjn9CVI=;
	h=To:Subject:From:Date:From;
	b=FYTmVLG7M3Sm1MoLboP8yinuZRARDkuW/CsTH2WZbsMNZfEJlfqw+KXCeYubtb2qP
	 OB/cOamiH19xZdK2wwRUGj4TvykXldPhZKe4vSEklQIVPT/AVQZqLLVT1O+7EHYJRP
	 8YZ/pB40vTd++3uIK9c08ojI0pUEWPol7eyyeySWvAeVjpTJWIQO4G7YUOSVdhBcQM
	 sOUHICooaPSu/JgcBrnnX3GvRGXNGXXVKzN+vL+HZeVJX2BVEVshvK4UdjJhtR43wv
	 cggXXskHQAiku8urDF5s/qKpOlg2kCDc7e1C2WJgwOLw1UUyEJgfcF8gQO6vl85+hL
	 2157tBuwxjQ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90599CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613879358.12017.16971648885203197339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11467405b061394ac33f9072a97d3498692ce08492ecba7348aa80164418564
Date: Mon, 25 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756138793
