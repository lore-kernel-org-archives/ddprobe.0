Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FBE314B68
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758733794; cv=none; b=NtGeORv6dBdqQlqWwXPu80aCJaZY2Ey1ZdjGx8GdAY+ESaG5t/OxBcpwM6uYxqY1vQSniVFAHHPxf2ilslZSKMDJLYQi2e83ZIowC0kJB9J0WCMBhpiRnFB6zj0+tJCqxSZko5LYegNkvYIRdmvBW6mpR+lHErvIzLg2LzOJEUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758733794; c=relaxed/simple;
	bh=LCX4mpf2jCsrZC1A9IWiMzbfizEaHGpeveoTrevUfVU=;
	h=To:Subject:From:Message-Id:Date; b=XVQ+04XS2YcbmrQICuGrJpQxo6kYcUQ6qvNVZrVcECHYGtGWLxNV6biK2fYrgEtZ+YSIhlv8HpBpeDbi16PDAf1SpVwfWmhX9Sv/nASuc50alcPXgwBokJX8ye3+Ov3OMTswAwmq6k1MqIOuEB0dCFoMXNMbycvFaRdrSZ20Pck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLz0UY5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLz0UY5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6041C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758733793;
	bh=LCX4mpf2jCsrZC1A9IWiMzbfizEaHGpeveoTrevUfVU=;
	h=To:Subject:From:Date:From;
	b=sLz0UY5nj/+v+VtrXTw0TIdRFF1ePp7Sf74gX81y80y8OphquIKefc7q891ugWEcz
	 bNwf5Q3quF2Js3rVdoIQPhNDzggZc96RXCkfYW/5RWiJA0KpIkg9ngQWw08WYBefxi
	 BEp2etUbU+rwV6tBz3PiqtuTal+0spdOY6y6umPLkIOEXSxxp3m1T5UwVRYibxjRaI
	 S5esvKfCimnkvwXSS16XNfuJJpKiUdR6KnsM5VPwMCgf7e8DOci09wXBz4wizOlUjR
	 mn+ofpaFGIfYv0mVQCcizMeiTWnuPYQousV3DQ46jPLrnmSBszgTShCEzJVu/os3EA
	 QdttPvBHazzeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B6ECAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873379359.13570.10361034268555576669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214b0c6680926f162c3b624c9ddb900c15d1bf3b393acaeb30e7a78da26508bb
Date: Wed, 24 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758733793
