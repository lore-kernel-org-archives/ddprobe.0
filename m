Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222E7272E45
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759675195; cv=none; b=q2jAV44G0zgJzDbGcx2OWoN/zEyWb4qUVbEI59+UHZUTOQv9aDxEkegRvpeSt4lymC6kdk5fz4wqQaqe5JOZSUgCaeGtbWFWF1nfiKvHv22yliAV/dRQFQOBqLM6SnC7GrUAtWk49hxY7vkHLfKGU02pi5kqaqy7mRfY24x31Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759675195; c=relaxed/simple;
	bh=a28QctwBu13VQVAVXc/mGNh4kvAB7kF1Lu/N1A/SZpU=;
	h=To:Subject:From:Message-Id:Date; b=Y1VlUgjdNRyAbHmYzTgexFWnxgcR+9zYNS7h09DcihvFk1xCBe2pBBdQy0Cir//uCgsRkWJ1TPVbe+5Fcq0f2Qh5D0sXXiGwyHyk/r+jP6/V2NWDeV6nVUVB3EnuHi55+dD3l4+zSy3xGTY9l78Hwqk5F4tZwS09+mBdNEMuQ30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvmhu1Rl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvmhu1Rl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83C3C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759675193;
	bh=a28QctwBu13VQVAVXc/mGNh4kvAB7kF1Lu/N1A/SZpU=;
	h=To:Subject:From:Date:From;
	b=gvmhu1RlOm3Ja4wW5Mp7wn47At1KwFOMif4kUL3dKfpnCzYsE5+1wPBBiL6P9lGGk
	 +eTMlD00rAQNEO0eM3ZD7C5SpS07aJhRaMYcg0zb5NCd6hG6y3hy+2CvhB+/4SEpdZ
	 MZDwAo8Iix5ttN7uJwDetS5c3IO2ZdoX15pVjg9i/wjT4W8Aux+NpuvHMTrbDPoC2i
	 /3GnMyMR/7QWc987A2OlIAi2uppWeSDC3NpnUu6HCMeteksklzsRhIUi3vBXpNQfsI
	 k3sJzvEequQKkoKUdHQnIXQI8TpPUY0lZlRbq0nlktQF68V4ih08PDBJbfffPJ2OOv
	 ezIT1yqbd4F2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92839CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967519357.19348.630219249794427610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30fb865e68122f55df4dbae582f6b8b25af589ffe2a67572a975db7aea0bd363
Date: Sun, 05 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759675193
