Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355A64086A
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728816954; cv=none; b=uV/HGlEyq2iUhl4gGqnH91Z1uPMr69Z2RKJNTm1ac3jHP3+NS/RvX6U5mTKloj1TRUE5i7BaysI5gW2nnvQ3yNaKXNg2VxvGLQKDzIM1fbfhqPM44hlbVWJQRiPBkgaEDU8OJwaOF93y1km5rRPjVy42H8w6L+3kQ0J9gaJWKyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728816954; c=relaxed/simple;
	bh=OUHPP+vt/JykQhkIha7nVYYFjBh8BSJNQfxdBuFHX+4=;
	h=To:Subject:From:Message-Id:Date; b=FFWpvgkszhn74DwKjBHgN0UpxbcJQHkP97pe4y3NjNuvKj+3fdGy7RF7RE1c9FpZ8Mmf2t6r3TDQTh/iq3yyDwZYVruKb/CPLVQEskyGClvBr51inwnHxwgkVKtcWKQphRLpklcqbDjXc6nhWhukX9qF130k9Xj+sMQW4wL+TTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJKQmufp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJKQmufp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08CBC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728816953;
	bh=OUHPP+vt/JykQhkIha7nVYYFjBh8BSJNQfxdBuFHX+4=;
	h=To:Subject:From:Date:From;
	b=lJKQmufpS7gF/QLMUvGZWLqNE94u0TI9sjtlijCRFkrR0RBEvR3bsfSFvW2P2wLBQ
	 UQSBlu9ZxbeBfETEnmnTELFdwKwMG0YPqt9uW6Rvk/F5LkTtHqqbziW220rs4nPP8A
	 i14CZis7bqHp0u8ZdD+RxpkPCTA5ojZg2Iwt2ecqNYB1dJm7YqSjKukYstJ+HF5c5W
	 P0fvUzOSQ8OqQxBm6pU9xUB4AwaKi3zQnpvNpgmqfnxGxTvgFNdumDq8qrmtPJ5nqD
	 F6MLXnTxRClS3O4xM4eGcAFDX2GXLM13fEltq6sDXhyIKfnn/yX3uFkQ/H/UG8zuMQ
	 AN7TJo1NK2sXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C743CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881695362.16743.17607665785083375103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ceb1c3b3a6dcce39d5bb83e6f4347cc9ff93596bf3d24946d55286c2ffb51ea
Date: Sun, 13 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728816953
