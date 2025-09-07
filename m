Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1352F27707
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757212194; cv=none; b=QHSpP9AQXWmu+vBtVMp36Ivaxon0iw0YxcvwsbipKbkehCj1m8q2EnyNu7DYu2O2VckRx+pvOK/j8M2yDIA1Iyk9nl6ZgS/tX1jpNOulX2TEPfL9KcfTfcmPsFjCqm+SgIS5q6WRlhpXyPmajqz7lNMAd6J4fD/vxIyG179q03U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757212194; c=relaxed/simple;
	bh=vfaMxhMa2B+IkmxVq/aYb3AgVayHtUQfmyCahtCKwSw=;
	h=To:Subject:From:Message-Id:Date; b=VOKaP/d0pkDS1dlBZLn9/iHl5fXvWN7mlHMkl5w/Jt/MzB91MSUumhUkAs7IaRqVBkwVUFW6nw54hm8A55itdG34FUBrxR6d9DmM8qQG/Bj1PdHRmXiRQ/g+/ItD/BeyG/JebHlVW1fBQ+UQGB7Zh0jFT4XwW7gLVVi0sHd45eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrEiq5kt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrEiq5kt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3802C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757212193;
	bh=vfaMxhMa2B+IkmxVq/aYb3AgVayHtUQfmyCahtCKwSw=;
	h=To:Subject:From:Date:From;
	b=lrEiq5ktODapi4cEAYca97bl7V0aksUtd86VPKpugu9czng2J1dMZFQpZlukZ0al3
	 mrgXRBEqy4utsz3/SOsStJ7ykpsACLUtGppf+UGn3apMkyfTHhM49qtmgwmTJH0lGu
	 h3saT1dD7aKZEE6ssDrCU3tc94+PUO1EtYrPVPVwgeAIVEiTCG3S6gge2oLsfHCHtx
	 ILWODfvhaG+7aWO+05tmofSNJ3K+Hx5FqagcNGfwPew8vstUHe94R7Ka0uaFUZtg+n
	 iFguLDWSTdnpGcfxXWc/RSvYL1FmC1Hx5EJX8fq8XIPyFNWVymd4rkc+f8WXm2Jw5p
	 UfskTFIDsoGbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DA6CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721219358.12656.978530430490440406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d826658adaa5f2cad916fbc0b9773f30fcf56fe2771a2b9bac97b8d8cb654b
Date: Sun, 07 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757212193
