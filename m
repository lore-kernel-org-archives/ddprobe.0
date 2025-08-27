Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2162D25557
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756266594; cv=none; b=aiWn+ksc2JzrLaRI7de7EOR6M1hrD6ffw/J8NzLAcyFWeX7kJfHjjprErBRSnRcKSnzuXt4rdD8p0Dm598s86MeQxsoQFgqVabHg85z8U/hNHyIN8XTlR2pmV4QJCcjU9ObsaiV8raLuZkSEgJew+ju/aNFyqEYJ7fySqtkQ3og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756266594; c=relaxed/simple;
	bh=vXkgxQGGLdNOecXNPnpm2duelKGH9pTJPu893IGVuJs=;
	h=To:Subject:From:Message-Id:Date; b=WjVRRllbUSD48pGfUsO3XgjCTsAHSI6qwaSmaLF6e25tnlmU1PP/yIlAwgVpjjQi3922T8/IKD4la1zYwFASnxT9PimilVOdZFJ1uYT/C14tTkADGP/0o80YD2V47HIiyJnyxxkfJsCUN3sHpnb2xdk1wJWBpxbYR9GvNhA8n9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYhjkxPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYhjkxPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D80AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756266593;
	bh=vXkgxQGGLdNOecXNPnpm2duelKGH9pTJPu893IGVuJs=;
	h=To:Subject:From:Date:From;
	b=tYhjkxPHrrp4tBF7Y3bdpdUt67dwyuX4sVKbTjmroTJYd45HNqfec9tm+3snDz5Xa
	 5VvPinxRB+zK+zeEcyrheX2edVg+p9ckAWJNNAbrwS/LQTu3ilGpGhfP7BsSSjfsKB
	 1gqRU24bmwL/kCdV6PIEHLhnPuMn5W8B/yqq3QNGJMIajsdwxuv+vnQXHxFPIAtQ8S
	 X+meMGLMADrV2SqNVU1RD9qs/aPHKBX4fn/PpEpImq8q6AyTyqJ3jjxJBBs1C+kmGl
	 UG949FZQpywTFIkmm2kY4NQkzBLIJAAw8G3Fenz7Y/yVIwWbt3+7uYvJHsG0jV2TBQ
	 sgj20FUr5F2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE8EC8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626659357.26869.7195978896876589926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c6c6de217c333b33debac0743d47a35cb8c4b24312b34908800e08d284520f
Date: Wed, 27 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756266593
