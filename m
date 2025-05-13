Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D40627FD46
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747133394; cv=none; b=HNQ3/d3visC+0RkhJuqL4KdWzquutKQD2C3US2GOp1PnPYv1cIXlDhpWQQfXkEcBSUo7/5IG6NUDe2roZEfyaTQD8EdPxVAoFymYisNhy8Z2tkVY0Xyd0JcgggNVcZbxVNYfiJmI2XEKUpi58CTeHz2PUUqpcHueyd0iROWSM5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747133394; c=relaxed/simple;
	bh=s1lrviaE2KapkLbNIwO24eYGzF/r9pVVyH7skMe8Nfk=;
	h=To:Subject:From:Message-Id:Date; b=KQG95YDwOo36L2b3DFGVhUUTWJTLIi1YJ/XuY3fNe5BrAsJqSXunjYJBm22GLvFtPXvbce53Gyl6dJxBucu47Dnm1lKQ3q8AaqVxHfc0RqKWfew79aie+Nk2JEUcW/hZ8IVHcNdiNVTpZybMKpDOGLEMpZy3tqCaQ9lbZGUBamo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8wR/c+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8wR/c+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1EEC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747133393;
	bh=s1lrviaE2KapkLbNIwO24eYGzF/r9pVVyH7skMe8Nfk=;
	h=To:Subject:From:Date:From;
	b=m8wR/c+Bh4pIOab2gjeew9151HKULTEv4h1GQcmSJsNANFU/Tlnb1Y00W1V0Jd0UA
	 AP0QuLI6rZKbxAssVKPc5otkcx1rFolxfMwBWQceQDfZRe2rJxD7hzweE8eDRbMIDX
	 VQbdkTubd9FdMneQT0Gv6cbikRGQFTAjr5aMLxz3cqEWRZ4Mbu5Fi+nTYVX+TH9ZpF
	 5+6HL1l5y3MrmHlJS+VW1/vLL2uPNBduhYy5BgXngQPtO0yQHOar8UZT0xoAWwtmsm
	 /px4a/qQX58ALG2CjlRViyChCrZrXl+r3ldGhybZHf6gKjO1wi9FABV0G9m6jPHBjI
	 brhrypDgSRWhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B8C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713339357.10673.3913289964415494962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288a8e0a7827ce37bb8f8d26e17c958cba4fe81213e68da55a2effe785b9c81e
Date: Tue, 13 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747133393
