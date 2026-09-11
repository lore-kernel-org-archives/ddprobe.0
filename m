Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3C219067C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789096834; cv=none; b=dNib/VMgZ+374cERw+da94Ct3zxrmyWgAuPwMaVjANJ4NNF0nO1E6SO+no4Jvh6gxOHtj4Wftr+n/QSkbQVT2Stq/XDVyvlu5fgikctNqh2JGFFkcnPSLkrL2Jt5pRBZcbw7U6OaTS1+a4U+JDVvf8qvJ2lqcSVYRfeMIPwTfIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789096834; c=relaxed/simple;
	bh=5h0e5EkR/G6DtOvUmjc0bVvXaXo4n4Wp3GstXrUfyuQ=;
	h=To:Subject:From:Message-Id:Date; b=fKQ6BgcMJ7I0IkU0xU5SbVP4KU0aKGsZ42sUAh3fz07SxzOCJrQYOdBHUpGrAc8B7LrGTrgXKbZ+BhsTD6CUuT3sZUK5WpkYn82SC2Sp+OdJTxX7b6PeWERcKV9/42Bga7ZwSXj5Hr23aHWom0QRFPxRTAeZMu/nImoo/4t8aJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7VGymLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7VGymLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCA4C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789096833;
	bh=5h0e5EkR/G6DtOvUmjc0bVvXaXo4n4Wp3GstXrUfyuQ=;
	h=To:Subject:From:Date:From;
	b=o7VGymLb7eobyIQabM7LiBDJ7gSPvFbJFWkbDaaN0hv0hEOTqOs+2uHxIj4g2JmiS
	 wEWSKDHWeQc9JuElv7Mokn/3QH/Kq0kROV232cDtX3btaUpbpkrzLRAfCb5eYAfRyA
	 kqckcH5uSYfkEHZ8q1crhb6wjoNcKFHG9554i3R9pHxpawDTqIqiTo8d51+z8IkcVR
	 +b1DmnaiHQGyasD1yzQ/7aRD4vFn6KXN85rJz9Cjnvfo2YyfwHZyKnSl10aTes/BUW
	 pSVRz+FXX2pno8onEnrbh/OZL2ThkxoDrg4TjSJY+0aU+1Tfv3BALVhLaVBtJjnvU2
	 bxIFvRT7sObvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A53C88E40
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909683368.32005.3407488079651046781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de8273d5c67f4a12f68858468f30f53acc1be2541ed1b8e5603695d2058e822
Date: Fri, 11 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789096833
