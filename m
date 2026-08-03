Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496752DCF4C
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785724834; cv=none; b=qJdUNYmE0vsvTjQ3jr/Eb/99kOF5N42+MMpBNOiVEBQjzCYdidvtutP5bc051pT/lSw25Z3l4FzKh03/VV3zc8o4JK4KW12ffRsmKOEHvUF/yH66LCnY+yvU8hz22a6//th96YPMNAOvJlz4DRAtC/yaHkouI+xYw0PXf1JVdU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785724834; c=relaxed/simple;
	bh=Z4NXFRUGFo/PoeHY3H2AXUoJBkeBF7g7z0F8VsSFxvU=;
	h=To:Subject:From:Message-Id:Date; b=pnAaf6zNp9Gdvuz0h1hDNBOIQWcsZulrmHIeG6dG8PMfEqNEa7v3qZvO/EmKRfr80bLBQU/4hf1klKuNjCIRuI4u5AFSgxQ/sIQ3fHKito4KrC5Dk7azT07uE4niT+FgrAVhBbFldE0G7CTHEU/lgm6cZ/DSZWPL9k/+bppEk6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpFHk0pz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpFHk0pz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD717C19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785724833;
	bh=Z4NXFRUGFo/PoeHY3H2AXUoJBkeBF7g7z0F8VsSFxvU=;
	h=To:Subject:From:Date:From;
	b=tpFHk0pzClgVJUb7rTbYobFqPecxr+74TQPQfiNvB5zCNe1zhEld86gz+b81/9xLF
	 ZNVciI7pWhOdsWl+cW7bcXOO1Yxkm1PkgQYXr7qNGHq6DpjU6ReucYsvg2PH8pmz26
	 p70lq8q2hb5nt6Ep7Yumc69Ha88VFB2h13kAjAsv3GmBLzYMUsNEkDqD/wYraVJVCD
	 703lEaMBPYs1rvbNzPDg8VMOBCYnrP2jF2zNJtad6hONiEhDrYqPIHj/sgOwfby/5Z
	 wCWZ5N0S2RFnjHOg3KGg0Nf9EGgMZjh0vwydbtTC+g4iWXmvjFm5khCEuv379ft9iT
	 EJFo4R9TXC5mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65AEC55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572483373.15261.10723701334403950802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f3193dbbc8da989d9c110a027d456f3d8f3150c6233c7f49a30dee6c651219
Date: Mon, 03 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785724833
