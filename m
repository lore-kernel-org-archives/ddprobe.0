Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB364C6C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751132394; cv=none; b=TdWoaBFmNUlAKxLPf13Z0+6P2uzmuER1PXH9lXJLo1seqVIS+EJqpG5yuSfpuLAXyBufWsL7VWdRUdDn0x+otxY6S9NY/kz64PScyxn+QkM8/fI7FT8BP6nYaiZd7XJZabh/EZU7PjPijEmExa/VhUSJWn1E4lxa2p1XQ1vRkeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751132394; c=relaxed/simple;
	bh=FTcsSWIvfBWjUGlICwCUM8Uw59FkCiroQpu8XeBwZu0=;
	h=To:Subject:From:Message-Id:Date; b=LVxRKDbH9L2TbVy1xK7YB/2mXWJknO+/9HHb5TGmeuehz6RG4wqPyVImGIaHxiIg7O9L7ANs+PtHnsDMR5eOdl+Xf5UdFW9Eaaw/wy+MyCJ6mXO//V5WkaMEdTMLG7AKtLMOG541wutkNXZQFk3W+yrk80xoudOtZa5LGsMsabM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ectrVN9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ectrVN9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEB7C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751132393;
	bh=FTcsSWIvfBWjUGlICwCUM8Uw59FkCiroQpu8XeBwZu0=;
	h=To:Subject:From:Date:From;
	b=ectrVN9Tr0ILh+W+o+WNjvMJ09uzxgXIAbcgnJlzt5zOJ6LhxFPTo4bvf/vTJEvKj
	 GgfH4TjTh+BihYqsHgRPrZ6vFKhF1NWunfYcdhxfheZELngCEPGLkgUmrbNpFiTKqH
	 jJNmw0WAnzAhuaJo7yGGgDbwgtvigHYNGYBe+WwYKNszQRiLNJakSaFE5p+112Jz5B
	 sLsKSzNnGqgBmC9Zio779XrV002C3YtmN7QEthU3fbHpfL4kl/f1gvevAodiDo0t1H
	 +NNYhzm0SEWpyW5X1gFLN5XH3hPN8RRBv2ERyCri4RTmnWK0NNMtqVmleZ8fM7KMIC
	 0bSlbhuUsisWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E993C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113239357.1029.1954095967832016547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e597f6037f9bdf10c6dbbd29837ebcf8b0b8b5ca0760da20bc9f3dacaca03f5
Date: Sat, 28 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751132393
