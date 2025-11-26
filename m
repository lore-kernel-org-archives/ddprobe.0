Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2172ACA4E
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764194574; cv=none; b=IuHzRuooVS4mWT5Ro6Jtf0s8ubfYQ+hXc43nMGxXZsf8YceQR4eSAIZVRMdwvQSXRkIH0RNHfgBHR7dEREpjTQhR9u3DU7kM0gb420Tkh74z+/sZGJJ9noLf3LBpwxJJyS28BVexFQl5yolI2b1Vqe4BejogRDcDU+ZoO8jpzBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764194574; c=relaxed/simple;
	bh=vnZkV6XFe1Q1D6WIvtEPDu0CvaMujwMs7MjaKcyGw3s=;
	h=To:Subject:From:Message-Id:Date; b=A+HG8R9bj0X2U+uVMWJAc/0y68vllqJEWc3432js0ampRvf8DAdJjZ1XHLtnLlxrK6hgxbxj7NT8OCGV16F3MPZRWdi4tA8yvEXqQWDqoVJgXPRtUK24e01BAI9qDTAl2V9SwkahYI/50qPPGav1yR+lSE4iVM+8QhxpPOCcnDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnQ04W8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnQ04W8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1206C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764194573;
	bh=vnZkV6XFe1Q1D6WIvtEPDu0CvaMujwMs7MjaKcyGw3s=;
	h=To:Subject:From:Date:From;
	b=jnQ04W8kW1QX3HJx4YiwKFFC58mMthJKCywT+Q5mj/3NP7FZeE7RogIGLJ5CEF3sy
	 ZwJdWkXvpY+JAgoVtSjpgLZquxL674DYRNAStpcBpzJwRzCVqz53vbICsFcdsmpCpU
	 8qsezbLnEiuYoTNPBP8c6c4ateNUrd/2BPNMsxR0UtzZB6PLNRDbbw11GPy+qgJMEF
	 rnacmHjsoJyU2ADiV8+M1bHKxlbU1MSEb27CU6LvKZhjvmiWASIelWTkyq8tZ9xMVc
	 AuPDFD4l/IstEooUsER4yAICg0qiIZW/nmfhhnu7IcCmp5RV7Coc8LIwNKEr/CpfUp
	 TB/i4GiZRMmYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE8ED1119B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419457360.13616.13765685140017600043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abca59f845b0720ef9d5aac3d932af07b32a12f8eb2c87df87d70a3f0cf96495
Date: Wed, 26 Nov 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764194573
