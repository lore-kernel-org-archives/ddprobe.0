Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5827010F2
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733186754; cv=none; b=bmCKysiIdKrhoXQqdEyYnA8ZL+Ca3TDQc13kigU4EODAavN2ww/WEDCWKCC2CcvYuavZugVjaTHlf3fJuH7eWgsYe5fxAUTN7aUHu4palnmmOXO1IYeH7VFgjjrV3G1UMyMsXQ2PwQmQocTPJzJ+kqDu8IbUfUEmW2Z8kM0OJ6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733186754; c=relaxed/simple;
	bh=TujqypVooP2YfcJ7jMJ0xzk1F/IpI/pGbRB8mNAIjfs=;
	h=To:Subject:From:Message-Id:Date; b=ZgAjOQt8xlYoNfh1qWjtOu9QPMBG4g3D7QRMipg++14wkKh9D86d0S0h93QzDP+6RCfuHagTVfZMQ/ogpRQ+Gfwt/PzAttJoKlGGb4qPhEBMDSW6tQPUPubJ3maa9F7OUY7Iwj0dIRfQBzMqMJow2JQcHn6nDeSnulfAriBtJBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXb2Wzi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXb2Wzi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCCDC4CED1
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733186753;
	bh=TujqypVooP2YfcJ7jMJ0xzk1F/IpI/pGbRB8mNAIjfs=;
	h=To:Subject:From:Date:From;
	b=MXb2Wzi3w5D7poGtWIWgf8dBdE9EITh7jAW8etVRI1Ib6hEiduahbZ7oQmnUOSBBq
	 eYF6UqYocuWHKlbYU/VVWdslYm+6tqVIPFTC1eduj++IhrnnI4sN3Enh0W8U/anCjn
	 MBV8vuP5K+JFSN2hDzTzx5/SJVJ84ubd//sXHvKtTUMggF5m2IRmXHsrARoPX1u9rF
	 RuEEPAJIah85ONWLJaR0TyNh6IR/ZJ8deiurjjqWpQLR9XRHAcHZxqeRArz80dbDbu
	 gRaEcxrKMmCVJgvLxBVbZnDKYVKBAnunFfRvCpZ3RtvUE2cBqkKu3hb7tlD0RNyqDi
	 WeOCBzrH0ZW9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C8FE6C5E4
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173318675370.7037.12601504119193648783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f9f88b5a89b63f5843058d99ab5fc1f32d4775e3e3c98d62f874992ceaf5792
Date: Tue, 03 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733186753
