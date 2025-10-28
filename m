Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F2B72625
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761683994; cv=none; b=eIGgzifhwv7PQoNvUzEw4wL7FqLRwmkb9Ae7tPOmPF5hpZUitgwNvhR5RsyQAeNstCfg/siEIqvCesYhleysn3q8KpdsbDCSMABcxgh3XMamOU0QLiYcVCq1uftfDGqmvCmJYzSc7qAYcbaZ+NWaFdCyQsYyneHIumu/cOMxdOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761683994; c=relaxed/simple;
	bh=54UhftZYXl5GnocqP++vFB5QUj12LvFbV9l6GRNl9r4=;
	h=To:Subject:From:Message-Id:Date; b=V+Xfzhf9CzI/rpbp8SDNr13wgM1RJeiIdQrm8CtRI4uvfxIlNbkmZqGFb8T35XQ66KBmT0GRnB+NPZkkLVHN/7oO7yYeFddLkQsMmY7mqsiqOVIemvvKsnW8qucvvVYcS4mgoPlZx8EsdnYCgTgA1Fhe83KxIM/ucOcbxxzGOz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsM6m5yL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsM6m5yL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7D7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761683993;
	bh=54UhftZYXl5GnocqP++vFB5QUj12LvFbV9l6GRNl9r4=;
	h=To:Subject:From:Date:From;
	b=HsM6m5yLY27jheNkKWqgOPMpcxKTaiSPeHJ2GWSDIAr+Mf9Gp0UL9YYPDKbA7AxSj
	 +oy0IAPiEzCblfftUNflr+0+CCU0z3TrTFS/Qzj0yK03Y3y1hogdLLVKnyB9jQLj95
	 9v12+UTlHRFoTuST/ldnl43ImVZiPdLS8CdEvMQjUVDOBSzY2SN1B6bftQ+bDAnbV4
	 r7RxSYfu8V3+6ts7rAAn7hC9yi1f7R3LnA9qKgXIh0cOqpIsPRCQeXg5WYrxBatjn4
	 9QDpeDm/lI0zxr/XCwaVu9srNZS+CCREp17xvS/YVPaKKeFuZSUyDCpfBCQFT4bDUV
	 7mCqFgJWxXl+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9884DCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168399361.13479.14053180998466474916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53bad2cc1f886bad4c8c30cd1fc393e08d227dab2a602476cc8f9a34c120fcf
Date: Tue, 28 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761683993
