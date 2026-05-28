Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C22F2E738A
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779980556; cv=none; b=KF9FbpeDVMzh8nOPGgyYJtd//0R8fEHOXd3lH7DM0ncr+2lY2WRfszdm7TD3otQHWb9jST/5dmqS7T2gQzn6jhOJH09mng0nB6yBtd/Wl/PnT4Fwp9t6g2ezDxZYJHB0OHw4AEYx6rh4BiZv8mUyIn2Bs/VZsVbXrSRlL4Ox00U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779980556; c=relaxed/simple;
	bh=+J/r/2ZCxgRLYTsLtpBQrJ8grcDpCzb9HxhmkiiMcBs=;
	h=To:Subject:From:Message-Id:Date; b=FQcdl5VYHzLpbe/hNeoI2Ocr3MRVNowHdpZECcuoPsouW+NKITjhPzTvWpXkQ7ZGWsaNmTdZN/2gjxtZNwh+rTx8zxnHyvjgoK7eaCROBycSg33n5SrGhkDpJuwUAUNZPsmp2vq95kmFye66mvv1vxg87jEX/AuyixDoT+PvuQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnzjjxr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnzjjxr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3ED1C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779980553;
	bh=+J/r/2ZCxgRLYTsLtpBQrJ8grcDpCzb9HxhmkiiMcBs=;
	h=To:Subject:From:Date:From;
	b=jnzjjxr0VUPUQL2x3UfUh5PVBu+MQ+GIq6eoD4llTruTMVe3Lh9zDoxgCbQ/u46am
	 rA8G1HLVnssRaid5DUUfyPio43vlRgwoKhn49THGzhOPhI0Drsp7Mrhw9YuvonsG+f
	 w/m8AbuktTJLjNN5vaZvTMtvuwI4K31gHonOAReBejYKHxUtVwcInceRjVzQ2/NUss
	 C0w/YCc1oz0otVfU2nkl85wUM9O16SRrJhaKgrOIRG407Wp5ptPi5Ty8hWSFZIH6bD
	 3eZM1BGVWhuMmLAmG5bMRPw+dTqTCXrzuRNn6XQQZk9zyEBtKCG/GXB2GpNHmFQ++c
	 RFFcQzlbph2cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1DBCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998055369.1843.17874814112171581454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688978d83a780db738c69fbacf1e3b56c66cf445a555e60b390a99228a3c2f99
Date: Thu, 28 May 2026 15:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779980553
