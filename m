Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC4C242925
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755988194; cv=none; b=XLAbMCewjzu9zEQwgS2o7QloMPiXg0Grd/+jOGqk/V8TWsvtqT2MxHyIGhLt8ULItzNHyBs3/OFzYsJ0+3oxMtdFV1QXJTyWjPHln4XzPrKVib74xOfh1I7DMm79VcNXFcSOJsI9rrYTTxAnowvi9aR8QrPvBC3S64JLPDwrHyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755988194; c=relaxed/simple;
	bh=BQJlfPBakmPwH66Xuh4OmoeUpxNrXKBFr+9hS6R+hNE=;
	h=To:Subject:From:Message-Id:Date; b=uWphyEsG1bgJbxcjJBjPy9rqiy1iTCzlklf+nvLcpNyQZbjNdqwyDCpQr2qjPaMWcC88KMe6kt1mLajZHOblQY44maBnx7v0ksZCWAsmps8dl3rF6fG4I1x51Rpv18Ach4H8iXuRrfIkTDXXFwd1qBO4aU48ijHrssP4ez+D2aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbg8YMpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbg8YMpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF74C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755988193;
	bh=BQJlfPBakmPwH66Xuh4OmoeUpxNrXKBFr+9hS6R+hNE=;
	h=To:Subject:From:Date:From;
	b=sbg8YMpXLu8nkJ0yIdB7MJLXOJftVx34EGgb4BWDwBrwRDYvtPfrN2UJ+j14XMRYJ
	 ggSRZL+7BuOB6Xac0RCyhyVPWRgeO+Fg3+cnxbMPxJK5wTLNFthqknhhADJXswo4wi
	 VahkXmfeh5zoEganKpiqT3cPm/pzmgWoa6kkhPyTMwABwXH3HbSsyUqF8dWdfFsOB1
	 4SeFkkz6xW+AFncdAtHDBnwgZZoNMrJvUAhzD3/lcHdRvjcVUfKJTZb66bwTkMK9lF
	 51v3d9a44MK0P7TLiIEZxdrF0tHbVUMyKc/e9GSGTK/4CFzyu5T+klGenYkZWbzKDg
	 IC1JDiEDI8P5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F55CCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598819357.28360.11929952520374454136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076c883a9a43f1f0005414a99e98ce29049d86a3e5287f3dcca8232f7c157a45
Date: Sat, 23 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755988193
