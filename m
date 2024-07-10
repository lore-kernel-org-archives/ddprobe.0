Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ED2194126
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720623383; cv=none; b=M47/VggMMjc9DUn9gf5h6yVxVDIDXpR5v6bEsYK0lLVtIMwtAHfUOxc8U2vMrcW3z6qJO2ebEObfru9VlInDZUXVTu/81aFXBcmsVPD9PZuWqdwCF/GeiznI8l/fq9mgdIV0RhwoRONSrXI9CZarDB1rcC2Y6q5hDpw/86EmXgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720623383; c=relaxed/simple;
	bh=FH0XuUAvYb7rxa1RIugV3Pnrl3TA3AwXvOJBckoTT/g=;
	h=To:Subject:From:Message-Id:Date; b=ngG2m6nWPE7bcCneTfdkhRGQ7omRxYFZ8xM5AbUoqOGYISwTl3XLPp6KeiEbWrXdTQJ3wLibsngAURIlpXKscGY1TMGzPliJKwOQCrVz+eNVmAaby8Dgo9kIPYR4rAQc/9ek0DzdIqJk0M04/ze9hw6igXZXji6zSrNB9kF5/IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzgLOpU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzgLOpU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA65C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720623382;
	bh=FH0XuUAvYb7rxa1RIugV3Pnrl3TA3AwXvOJBckoTT/g=;
	h=To:Subject:From:Date:From;
	b=bzgLOpU6FgfBxqzz4oLCvt+9kXBMWrYirQIgqThNZyKk5FiGLq7E2p50GIzTQLxs1
	 yOzQnDx4uGr3W9aQNe8yLAgT1eHqlCXTOrC8FhyCiVnH37s6OMrRwQDOnPmdC6r5QT
	 mr3v9mGDNKZR3ViJNrLTuUtqJPS+Dhv4Hzfi9mGslmvFegzS9OYTwLVHC7A9CYlGQW
	 neC2SPRQAKsUsX3w2YplYforhblc1pqFWCLonBLVS1Pufzd/4XPZQX0HiTHJwDe4Lh
	 4Nz/jSri718Ha6P8emFwJ2oyuOo4W3/9LxpdICPDrkG+nArQ3ktO5Mmpt561WBUVWj
	 /EMhCGxwas00A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08EDC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062338278.8595.3555457328391791288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac0c6418202269d9a154c917ab6abeafd2f04c423b1a0e5c9cfa15d72ee82f7
Date: Wed, 10 Jul 2024 14:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720623382
