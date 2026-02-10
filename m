Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D18C8632B
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770736434; cv=none; b=NyVHAvl32OCcPvHIV6J9F9+cdxxcx7DyN8nC9nnHDRWZ9hcFz/q7UXO7hXR/LK3iKNJsQ197fmgZB6fD13iWL9EyVlAJXi7nKjjFt5x5C7Sh0HRayt9JwmKRnLyyoethYvSdqERbIT+VGJQhVRV3Lc9Clxx0KFSDtdfd0QHH8zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770736434; c=relaxed/simple;
	bh=UN+pjQ1pVBOT+7LCZZ5n7t6Yodn5qPNGm+M/XbMC6uQ=;
	h=To:Subject:From:Message-Id:Date; b=MfE0wi05z1dDLNpqy9zV+MdPacSe7DCujy/SPhkxD80I5fCbDmKsTwh7rdWv8LgVUsqCxFqPpaLX3pR+3aEtTxNTYXqB2LjPrwLK5mAE0Mk5crC2qg6PApAfjZeFP82sNsQ9oSf695IO50T1W1FagrGfikQEcS5c32TiftjK19g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFT6T23H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFT6T23H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1DCC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770736433;
	bh=UN+pjQ1pVBOT+7LCZZ5n7t6Yodn5qPNGm+M/XbMC6uQ=;
	h=To:Subject:From:Date:From;
	b=qFT6T23HA8Y5mI6I+ypkFckByR0e2aUih7R3PYoASTjLS35z6c08Awib7dTxz0X53
	 5RdvCDAEhtNrN/uOd3Tbi+1bAL2Yx12KzwjNmWwBWeNCyh4o/M7Ceh2c6nmghhg1Ap
	 yPknU4W5jOUBQu7WQuqsyN1lvRl6CVF3P76tyx/YLG48q7mDR4iTjy8IYkzidqw+eH
	 3O3/vLMZPiWsSuht5xHtlvpUycWiMWGmSqB4iFF7aPlh36hnXeT+L4qA6l0UBcimQO
	 ZsaJu/koHXKnZFrRAG8jg0q3uLPTYp7Li1YYm6Bj0d9lOEoUmCPTC9qnx4zrWo6COl
	 drdcjGcvw7rNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C7EA8126
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073643360.13189.13459908679440291919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a5b09e4f9fce1b5d7c680d6f48acbddda6b7af6056b85d2e7666c2ed1252a9
Date: Tue, 10 Feb 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770736433
