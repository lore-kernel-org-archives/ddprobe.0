Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A34F282E1
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 20:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715890943; cv=none; b=lFmZbtXf5U3YDpfAFPI0pQmLfuYBd+PKBaQXBAaz1UjiqF+y48k4IIvNTJ1qfFYpPixzqM5XSC9FWtlzVjLTAeM4/bLeh5KE73LDGSwyuDoHtf/M1aiY7+gLCLTCRLbT0FC2OFCxSmePBd64PuWsPxnzJd5vkHm87p4wWLZeQ68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715890943; c=relaxed/simple;
	bh=JpsNkyRTgrYxzMfkCrFtfmMT0hKKVV0REQWYSgROJvw=;
	h=To:Subject:From:Message-Id:Date; b=QTmb9BIXO17ZRHBSHQjS50kIdn68qZOHzZDY/wZY4jRhk6WNJr5UpdNyChVe+PDg0SlRjHeiNxLDfpB9+zfsOhkPGW5XQqSRmnLIxrrFl4wS+FOd5l13HxkxwADOK8jMAw73f+nN9lGnGzj2z+Fl3kQOtncIu4UFPxX55GbNFl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gS09hje9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gS09hje9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DD1C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715890942;
	bh=JpsNkyRTgrYxzMfkCrFtfmMT0hKKVV0REQWYSgROJvw=;
	h=To:Subject:From:Date:From;
	b=gS09hje9Qr7fDwdbeqvUm84BDiyhOHQQ/OyMdkgBgmWEdmuuJag2yTiqSL76V0Blu
	 9FVypg9nalssb1SktxFBO/wKDSmyEIk+UEqr8knAECuidaFUlItwgpTUS332W5IIXa
	 8c6Meztot0YciIJ8vgZUBXLakP5Zb7RPg4n+qpnLpVE3/QRdW7IrXpK/sjPEmPN01J
	 H7n/H7kVHNgzoFUVTtQzT7Kr8JiW1hQJvw70e1KVELgtM2AiFhWRHZ1oqGutNsax/F
	 OR1QCzBYUKCcTcAvrWIBMwkfhnpYTmFt5i3dmA0P3WZTbriZi6WcIZKTk9+0C1c0Ww
	 rsb18ALVJCq0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4700C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171589094279.6781.15414113631153088595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebbd60541758b8728497f21a8ede0e73c8bee1bde01bac340925e373a802a157
Date: Thu, 16 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715890942
