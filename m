Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52686378D8D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784863234; cv=none; b=uDoqEyn4DzzdhcHqquU01Ac2VHWMg0xoEeI22/UzaKxIYfGApu0dPVzvn6tNVKMSCCN3MrN61XQWpRf3O5Et98zFd+y4HnUHWsYDe/SqSctjDIgWfVCP5OVlH41YqLxHDwqXqUTUC4ooiCptTMOeNxosu8+IPJAM6VwDcrp2o1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784863234; c=relaxed/simple;
	bh=fedYvewl3U1xRJX9kh6FDUnS5FfOhaIJld/o912dY+I=;
	h=To:Subject:From:Message-Id:Date; b=sPJ7f1sZ2QxCyBiHLBN+kNtqkNr6UU/qmiz4OKGUFaTpRtQ8lEejrZd8L031ebEeP59z0qlezNysmo+ZugrWnYimQ+kvxvWV4plUnh4Gd5j3ge4eyeg4y3imRxHAlpzOxtD3OpG/o+80pFNI2Dd2MS/0GcF+pFGnkLyRZs5F3a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpIz+Nv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpIz+Nv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD32C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784863233;
	bh=fedYvewl3U1xRJX9kh6FDUnS5FfOhaIJld/o912dY+I=;
	h=To:Subject:From:Date:From;
	b=mpIz+Nv6+ChHdt1BrUQnFLw1Uc+agWc9lnwnzpR6XgtDUahtn+bnw2ggkwY65B5EY
	 hgC839suEgwWsK7R5OSrn6FAPB5DxBE/bPhRn/ZofxrXElKn8hPVOQiiEKxXAOBaWv
	 MRlc0TifQHDDWFzRWNG39sM49nvCl2wnh/fcchgyPq+Bws2eJQZh5rSa3AMtDGEbV4
	 EEMAE03FzWFDhtdEdKGX1YyhWeXyZzjuq9Gst4ysVnBp3OutOcHshOA3egKzgIyKDX
	 nMqd68JxrmKxUXqqI9FfUbh7MYQSs0w2V+P1Ru9ag7HiA+9n7knrUFK63fRbVlNTMh
	 U0nV6+5866SJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB36AC531CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486323368.29108.13681084324362184516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deaf1bbe866109f12437bd44228d988a001cf5731f66dd2441b8ec0d519ea59a
Date: Fri, 24 Jul 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784863233
