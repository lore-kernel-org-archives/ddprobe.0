Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47849198E6F
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737853554; cv=none; b=D+n9REVfFUyLnZRWZp4pEfm4il1GtK31GLOH7/aXHWorO7xpJKuHDlqne9G44gc+0h7q8246azSn/SWQA1QsyCJdcua9ul/XG9Xca3mK3iPzwt8KsX7HzdG72sWvf+kOzEsV0iJaD0SPOKtEWd4nRiBEKpu0HwDRuRIHz8Jlp6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737853554; c=relaxed/simple;
	bh=gbhERVTYkzOJlHMDWFNqU1Epvw6hIggcuX82jQ4WuRs=;
	h=To:Subject:From:Message-Id:Date; b=PEkNN4TjH87IIpMU5Nw/Z1mTWDcT8TLjG7z/vUldoxffwUzD2+M0/Ag8YikX1XyvZ+r+mBRMztSZ7An+yY/GPq7mPRpHgtBQA5c0e7VIEfwLq+U61CpLwblgSL/CAQoclL6Mumqtth5xjn6iCtyrXszmzNUAQUiT7yGQH5MiOM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2xUBtsQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2xUBtsQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D38C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737853553;
	bh=gbhERVTYkzOJlHMDWFNqU1Epvw6hIggcuX82jQ4WuRs=;
	h=To:Subject:From:Date:From;
	b=k2xUBtsQOyG+Dz/al2E1O2FVXgAW7AsE7JFf/Zs5h2wKUJ5bgtH08S/d9m3S1M53z
	 PyAnRgh6BRix2z/Y4AtSIQgpXp9/efh2hLiM0lgj5kRj7OB28BOZxAclMcj9Boxxry
	 ftPMOdxP39BARQ7lavb3lqhScK11x2eiEvSgyYSVA8Gf0sR44slndX/4yqkJ7I80AN
	 eY9kpfaRtqjiddzgz78Vh7YaI6Y8mZNhF36urtL37agW8wEoPaYBZ4XMd0L7ifH7xA
	 MkJGnW2EGx/Oq1I+FmgrPdGHFNCNyzSyG15AjRH2OvnAitItLYc656gZmlSfohYO8E
	 TKeHajPzVoywQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D4BC0218C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173785355357.9853.5748749833397590987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e944dcc147ebced367f0d46c77e18539d8ec954072051a555559d9578f46a5
Date: Sun, 26 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737853553
