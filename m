Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D743B18B0A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771983293; cv=none; b=LqQAtzInyteosZmXqtwZSyCD5Sx6tX5YNd8j3fJHCY2rGBaHODk9Pkoyv/Xqa5FI9B+SyB1/tsxnRAte3Lrx2tTnZXMFaYcSWQDPo/378ebD6F1jBIvUUwits12R7XfJZukl3idqJzLDHkqzy7ffyM/mddkhTdQazxv8VTFv+ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771983293; c=relaxed/simple;
	bh=XVj1vlniV2TP+wfw31z5Lxyg+/jk5CL/c/5IdhLuhu4=;
	h=To:Subject:From:Message-Id:Date; b=L9IS01ZwpjcSjEzvwfBqUht3ZmZ3LBbtmYHM89RySdhiaOSXQKGb/e00fUvcn3zwiQo4D5mFmFYWaBaEr45//M3Iy6E3bRH+raQ2t0y15RKiItRDJMivoAtsz1XJxbu2sTZpzdWnUYrUAvaMYHVRd2v2DfarLN1nNwtoqJ4k6uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1dXyBdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1dXyBdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A4AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771983293;
	bh=XVj1vlniV2TP+wfw31z5Lxyg+/jk5CL/c/5IdhLuhu4=;
	h=To:Subject:From:Date:From;
	b=r1dXyBdbIoYXOhpr/DrImgadC/07sML3ue5Uf+kKa/bBfz2Ed7vF/rEnMlXWL7XhW
	 OHUkxJ1VsqdLJ+WB+hXhcXiyurFDZxBeSdze4rjIiBQg7wprwCP2v2aikFMYpTckDh
	 x05xSZ+IT1rMfY6LB/DmrnWkIlhEH+gT3gl3HO9CipgNBF4UBbTymfESu57g/3fHN7
	 Hlc/lwN/RjT1snJWSN4yY56wJ+TucI69VDIyXGCT1joSs/VlqddujLko20tQXpwHeB
	 7xzE01LRUjKY2ngwC0/FCtcC6/jMBBb7NwmNvaJV5ERzojaUQkoKZERnw/pJrctdpJ
	 iFbr4yGZVAAtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99109F55437
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198329358.3483.5623358100027766760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a7487f00088417b4fe802886fc1101ded0d2cb713dc4537fe43e4100e6f52f5
Date: Wed, 25 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771983293
