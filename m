Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D59315D2E
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758029394; cv=none; b=iYH4QFt1ZgAohSXvh2HdJOYjmBR+888i4z1zcelgzI144pArxOnL6noln6u13lzuZRmQHiHPeJT2g51nco6vgp/3k70SrPN4zHnjTuK/P27U0n8kEfSXmiO6ZblTTZTY6f6TjrHJylvmx00uCCn1U8Aav4duPRD9o9Bd8PiH+Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758029394; c=relaxed/simple;
	bh=xIoQ1kshzuHdgfihty+YS8iysIIO6TK1T0nOKczJlTA=;
	h=To:Subject:From:Message-Id:Date; b=I1WSclavDpPLcdq5VZr6o9UpOWAijOKLrE4+SSgKxDMD2McQwhW2X4K3EOBXeYsc6VYMdyvDECh5VXfwIpQlO31oNH+LtZJ9pfYUr67iH5NPAEv2FAQYHfFTHtLRjQTZHGEaUgoSzXkweFOdhVldvUZ4tCCZze4oZK9d2BwFZnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsb1VVGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsb1VVGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3E7C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758029393;
	bh=xIoQ1kshzuHdgfihty+YS8iysIIO6TK1T0nOKczJlTA=;
	h=To:Subject:From:Date:From;
	b=fsb1VVGHb1ls3KxlngxhgWJ5KHDCXrSESOX7alIlubiTZQbtmODtBS7QRPzJP2PTc
	 rvknpa9u+0TrG+67orKyRoww4DngBh/9ZdaQkaPtJfa7PG0uKsoOxtn+/ygVwqSivI
	 DW+9QMe7N+gCir88f10q+PoR9QUaNIaNZvaiYdUlDQevtCvzipC/i/ULGqWgVKqYKn
	 3Ji2nWs/p6nfwpNbLQLsU4c1qcEmdJzA1onf6GynEEXOBsWu2eU0dAW3uN7qIfbfp/
	 gFAAzDViQeh+vI5X/v99BsOISCV1RA93iOIjG9F4V2qcvh8+I2A2VK1zBGPL9+eQN0
	 GqtFwJWtxXYVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E33ACAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802939357.7017.3463811955857471145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a349b5f74cce4cdd599bb167ceb0673fcaf6dfd5ec0fb094671a913f93598b03
Date: Tue, 16 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758029393
