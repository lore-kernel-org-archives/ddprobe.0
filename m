Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229FC2D0C9B
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755070195; cv=none; b=o4+KMoqpfs7pm3emYs6EEPSJfo7M/tRcFiJ7cP9x7Yu2/vFH6zMcp4gC10rIDnuNKsH7zkuV1FH2hOG0mZxXuEDH0PdNY4kI+tjARHuCUpvirjA6tAqptC2zPWgQPzFUER9uu/c1BDySnLIrG0e85NIvR6I3KL74ugHt4FIp2a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755070195; c=relaxed/simple;
	bh=U5F/fIIAKWH0DSe+emxhhGya8s+Fqad1Cy5ziYMC3pk=;
	h=To:Subject:From:Message-Id:Date; b=Wjf8TW99lzTN8CnxZ0U9ZEupLwjfaY/QmSxDfWlhETscWSiRIu/ON+Px3qbayAF0RNYs7aUgSD+tdXpDK5Wh7Eh1I4S3SlMR6EElekWygtk69FR/z5qjQJeBYLsljBhsLbQQ17AHmLnyAicvqEas6SVs6+WC7WhwmXVcQUkhvfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtukX9Wk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtukX9Wk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0504C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755070193;
	bh=U5F/fIIAKWH0DSe+emxhhGya8s+Fqad1Cy5ziYMC3pk=;
	h=To:Subject:From:Date:From;
	b=XtukX9Wksf2vd/BM01iE/zhBMpTzuCRXnMJbVlfi3hPK7kRoorxfTiTUaayJj0jXC
	 c/lHJJqSuOkiWyk5MhoXRHLPYpgH5VgjIl2dYOpQ9M7Ob8KN+HjGNMzNj5Ip/NMtSe
	 udafe6TsMdpe7NbBkFfldUyORKMR6HHIcegoZxWoJUcmZNv3p98SiDPgFFT8bBGqTe
	 gCiC0QooA5PYz+HaYKSkOZdkIFV3aeWp12dPS8ckETuEig3YZZkrIwr+fJ88VN/UGC
	 xMryxJeRSq6VuSu6GoTYKZnbQfyeKqr/+PYhSxd44KFfR9c/KJ1cbpEpsqIXfPzJCM
	 A22NYBx/yOXeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F232C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507019357.8808.6315548710497438388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86976bb669a2610c54b52f6b76b3d76afddd9afd0879dcc40042043fb50a6fde
Date: Wed, 13 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755070193
