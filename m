Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B81F23A562
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776248254; cv=none; b=RspBBp85SOWieO8WwTT+4rpJTlNZIEBdRnr9YFHYbzgqNn2Eb90t9j6S0qEs3JkagvswieteVEv5ze8WGcjh+WUJ5WBfrUoTLFladhKapVgDVJkHB6raBtg33+YJwP5rSVXprpjSGUjmh4xFD9ud6qu3vrCU21ZnitVptXoiMuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776248254; c=relaxed/simple;
	bh=7G9e3xvxg8ywtVpZrSyX4wl676/qtLefpD1pDsjCvG0=;
	h=To:Subject:From:Message-Id:Date; b=SrQK3T4wTk7m3CByUtxzrch8UVLY0o7y4I+Rq4nnz7nLQmSo+HWBiDsaTUuX/LA2pFp5PYKsgPYtvt0UNwECKdUL8muxza+2srZZN+qwuRP8sLdvoLaXxFI9jesG9RmWdQZ0X0StEQp8pY8ELzbDiJ4Pp2L53dtuycx0stg+wvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeaAOqBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeaAOqBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD44EC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776248253;
	bh=7G9e3xvxg8ywtVpZrSyX4wl676/qtLefpD1pDsjCvG0=;
	h=To:Subject:From:Date:From;
	b=eeaAOqBgV1pOKKJZxm8n1ol9lq9Yne9YBj9/GjIEuG2DYGurYxu9o835YAdVhnkAI
	 N8I/j/FWtLxwzZqay9szD3nSWNfS9TQ3jDqCYi3vcp0JGZivBXQDr1xhF8fX8757xY
	 iWD9tKs8jJwwcqdEkzbtOElVyVV1++66LL5d5e02GVeTujfkAMpOQiMhrSXrdksqfL
	 mPrlacc0fsSf6kYJSW23LPNAPTweREVipobNV0Dnle/JsbU9ysC+UWz1eX17RBIu+K
	 cuVJz5VtpfmOY9NPR5huXQU2qUzCr+6LjWEqTwLTfN2ShGKYDYCIsaOsc2Vnlj/uCu
	 D7IsrzQMdFH4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F6F41987
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624825368.26905.2374647850261330183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b6edc1d94229e41c1f30ca50c77dedf52cbe2ff3232528bcb474861da8af1a
Date: Wed, 15 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776248253
