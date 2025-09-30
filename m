Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE9E24E00F
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759237795; cv=none; b=WvGfU30h0C9T/dxHHvuQI0jiksvyoL4+9JNPkeUgsDjv+wmqWt2dTp2mYEHPhn8b3jtaeRxnIutnLIfwTVhmMFCjY68tvQkhocudZRTWni22y7bHXhEoxO/XptS68BFqrRmarhpfz9ngaz0yGfa4r4AW6ILFs5ghzfAktcErypQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759237795; c=relaxed/simple;
	bh=LCz2pvxLAt2paAOu/R0iYKeqjuzJQAsXz1lIe987Zks=;
	h=To:Subject:From:Message-Id:Date; b=pjYqY93nFldEb/cRxKa/xhT2rpzxhwT1lM07cNYf3E1V9xaDgRxcpnnMMh9yfo2DcnZ2afuMJPGckdG2Sbbpyq9ctFEUIlWl3J4mndlXACqboZvdszRukiSvCLGZHoz5dGGVy1oTu9r/zWlLoZCXnIiMLVjCZCSXKhPitW9EDCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYHma5Bs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYHma5Bs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E66FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759237793;
	bh=LCz2pvxLAt2paAOu/R0iYKeqjuzJQAsXz1lIe987Zks=;
	h=To:Subject:From:Date:From;
	b=ZYHma5Bs3LVENxX5B86lRXBDgSulLTlrTsgnCSt0D/pjEIsS36bjsTfXXod11+DpE
	 eeWiJLb3Le9IL6hACuSEF+D5M8XNvKiU3rLkqH94wNPBhNVjhGcaYTjfkDpBNGZoGm
	 63vM+0Ih8ioJNe5zQppsFhmdbE0VN7Mzv2BwSVmUgsP8+YivPnSjIwsdLeMjw2qvlo
	 I6R0IHII5Nx2ZlL6Ym4t2DAmuc/3Gnr0RnMM7xALKMUR6Qcgh5/T09AIXFXwLZclZY
	 mQWwxaAqk1zKaDxFoL4dtuzyUjejsP2XweBO+0kXnrsccbcZdYgyl/whvSqzldGHfQ
	 IdkxX11p2hTMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97ECCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923779358.6197.14276087829852413763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6fae253b237aad92f0111344f1c98119be12ade4381dc509364a221159052ad
Date: Tue, 30 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759237793
