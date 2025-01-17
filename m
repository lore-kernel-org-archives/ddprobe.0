Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C6215E5B8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737144354; cv=none; b=OKzkAlhB5Wo05CyfYdOpcPFq1QIaCZbRmV9csOgfLFwhCfzMozmtQ5ytOkYpnP/xQWoqI0xKT99qEwJdyHD1xS24cMDHajJqP8nq0y98nyjQZfdAnnPcBf8a4yxjTFRlT2w9ZurxEBymbI/EzJmYg44+PAlNPRZjBiXPhlpZ288=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737144354; c=relaxed/simple;
	bh=QxCGpS3Vx87dIj+BLwjwuzMf1COQzSuTJZmMmoLpXwo=;
	h=To:Subject:From:Message-Id:Date; b=n3HJxRiE+IKHXT8jmgUgKQeev5uPh+UKtcsciQUy2+3it/Y9JjaVD9LrmKsvpkQFlu2mWE6oiH8y84KnVWWY6zm6njz6n/H5I1r3c/x0ccKfxTZZpNCtc0AGtEqkrm8NyRvCR2DbX9u3u+GpMPYK8wYgK3elWLetXJVUYlfRKWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJQmAQMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJQmAQMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A644CC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737144353;
	bh=QxCGpS3Vx87dIj+BLwjwuzMf1COQzSuTJZmMmoLpXwo=;
	h=To:Subject:From:Date:From;
	b=EJQmAQMDHWNsrb3IIl+Hwj4zEYSAXIVj1SzJWqI40AcdlvFP9sTsA/zQ5jujSbYP9
	 qT+PJPhkxoGPY2DyhcpCUzyD8SpGbz7iXBjoyUQtvYRlV7KPlQEKxcxnweE5TL2L2a
	 sIYUfHQtBsOe5OUgSSK1kpAZnO49kNU0OzxVJQRHFHKGjL2PJWlaUFnLec7yV3mrE2
	 D8iaj1wa2qUUaNzbM0h5un3chsz5D/EGCghkwDeH+Fo+/zs7+jFIP9U7BbVBx9wQPE
	 eKiOdbOY6a4XaTbACZJ8HOWCZdQMZHlSvhVkf+gO4SLS/BQxBfXH5BA5WbBordI6v7
	 52hFDYhf0YZYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937CEC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173714435359.25675.18053894915437394003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c896bdfe25de3d265ceabffa810cb42d1fb3b7f2b30dce7cade3de6f74645a
Date: Fri, 17 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737144353
