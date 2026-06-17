Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304AC30C162
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781664994; cv=none; b=U0F2hczLT90vLK/ZcK+5eKi9eQ1hrCJzDtpt97Mi5Wi0HAwdipHwRBlKp7P9+tGPAGkD0Fbm0n6PHo404/3UKy2SQE5JKwBS3974nvtTDq0NK0yv+89frrhRdCU/ckbfTy4DeI/kFa6wQh7A4shJ0lG9r3Lfhnd48v68Z6kUXVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781664994; c=relaxed/simple;
	bh=Tp3cilh1oomhBQM4ecHEciB0t3lydYiVSWTAqlJ2WH8=;
	h=To:Subject:From:Message-Id:Date; b=HGUupUVZ4xB3232f6rx5ddc8VMQu14pCrlXgGkh76nMKIo8IYQC3wIbAbn3CjeVr6oUfRXDgfNNnnuNY7bsRlnwMhytt0j09uOgwAuEErgdhlEA8Eh0WVNunSOwmI7bQA1rF9T0f2SIrdfsQJQ109x9r98Rh/gl5AhsDwjk6M1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcbbwDX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcbbwDX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5343C4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781664993;
	bh=Tp3cilh1oomhBQM4ecHEciB0t3lydYiVSWTAqlJ2WH8=;
	h=To:Subject:From:Date:From;
	b=gcbbwDX82RMit75NyraUmJhVarsKPrNqMj7gLj2Sq99bMObsOQwXjeaBgfGqxR0w0
	 rOMOP7/2pqhxZt3c8FWvg48cPZmioYyCCSoZtTP8oEdpepf0I70OpkBuUyypCLHwpw
	 9uw6RAfh4XFwu3Mm92qIPgV6Ar0yTQ7CeLDU1XgtK294Aqsy36hY10zUSlissd7JhD
	 Z9IegIFO6L1vrt6vnW16NjznAFwDStD+ly1yehJY8sckRAabV+4ZQYADJqDaOfLmT/
	 /+9vPn84dpkO3ysfGSTKUJBoYelDXkmmcA89hlvZAeoDvQbGdm5BU5d8+70rA7Y1SQ
	 dhrl3nPZb/e6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC559CD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166499369.13977.11119873724968834050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05736594fcb9ffbda9fdcddf483af4e1dbcbfb9deb0693e0592ac6809eb0667c
Date: Wed, 17 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781664993
