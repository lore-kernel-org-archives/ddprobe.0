Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584442DD60F
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769208834; cv=none; b=JPSVwdS38aY4Ji2nuTwADVOunX/buqyoAp4B3TnrCRPcnYgIBPj0jtYgZElePID4RP+0eKx8wI5b+TuPn01NTiJSnOeOnRIo4YE28AqpizzLB+O62IhR2IiK3SX4EdO0q4g3mh93xphSQRDs8i1YU3OUEKFCMN4iMctLybamYc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769208834; c=relaxed/simple;
	bh=30/c8/J2i0K+4JmJl6h2++tyxji4GA/VO8jLhlg9XoQ=;
	h=To:Subject:From:Message-Id:Date; b=sKeMofI9g482/ikZg585tMTC2dUFpBm43FSytwA/pnGV2z4nFA3lGgkhr2HfTJnPFktllCMdQrPmoSZV7JT7rb27Vi6zpTa2IE1tTlX4HQst5r8Usa16b7maeIONjOoEwbQhBkcCq2FTkdQfdJMnusHOncb8k7I+x4lOOnLNUcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvnmdSh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvnmdSh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A1CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769208833;
	bh=30/c8/J2i0K+4JmJl6h2++tyxji4GA/VO8jLhlg9XoQ=;
	h=To:Subject:From:Date:From;
	b=HvnmdSh9gzPespShAyC8u7LCHJ35Zry8h8QXrrXv3gwxl3Mh3WBgovkE3OTVXFwGA
	 bJrquXFeO+UMzDSvnCOixCLp+og74FPIETZbJg+v9MzSf0awU5NkE7le5azMAwUXMC
	 xZiyUJtub9h0gcdTZ+NFL/k0UDq7p9UU9uHhZQwSNm09kG0fGvkLVO6PlLdg5TIWAq
	 xurBaQqX48muu+iUVy9kmh6hWlKL9e7yetmqphmZG8MHXv8M/wnO/bN+6k4i1mHAWJ
	 f8SmPFs77AaFSAu4ODYq5aLg1DbTFs/nlIld3UOBUaG0P6zfYnN2ePLXB9debCU9C4
	 ljIi6hSLaqn8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA18D6CFA7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920883357.21462.5009489813022565662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fba47cc9d585d75843e4b822828cdce49df83b32404e0fb667453f5a9ac6f68
Date: Fri, 23 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769208833
