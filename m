Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480A83803DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785775234; cv=none; b=B7XPzgPsYN8zND0BTCwR6u3NNVO+D3Cogp+nAsPHQQsRvd6l+AB8AfjcbK7CfW86bS+dnV2B5MxOKaLufuMSUYPd04gg9odwhsCJyQ/slNJjhZwdNfNOIYvRyxuOMbvGflMf0ydvpd+a3Beal9vkq5gpgglhjLFUbbnVExZslMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785775234; c=relaxed/simple;
	bh=cT98ATfE9isNdQ8QvuV8Tov3zpAs0z2Y0c4V7jLD/H0=;
	h=To:Subject:From:Message-Id:Date; b=ENeLkPptbaAd/bQWVLX1STBAcPfobtk39z1IaMr0oPKiOXerKNyl8YYaALhUdXrgwsEFhUdR9+5+7jWPqomL0XBgwRpKx3a4eyNXxNzkf6wSn2aO13WiMKeu0n/+0c7fTxJGeuU/N+yaZQF2xK1UL4bR+/1JwE1qiXLzu/PyuqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFmfXva/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFmfXva/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1773C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785775233;
	bh=cT98ATfE9isNdQ8QvuV8Tov3zpAs0z2Y0c4V7jLD/H0=;
	h=To:Subject:From:Date:From;
	b=uFmfXva/qGvKbnjK82MmEtOQWLZoIh+MCIFJAyQM1Ws4Xj6tyP9OercWcp1QuDztk
	 3gyTYLRih2VY71NjwLR+S3iLUSoYEErKU8cKfkr55egtelbaMS28m6FpbMg7Z4o37k
	 cYEL0gkx+xMU9AaUR0Di7onTM5iTmHSn7i2HDWXTFdPNriXjltYgMcFXxKIev7+59R
	 /g5HT5LNkRz8NeHT7qzfOar4sNVVK+e+419I2RTAOffqEvFwVnRHPlNFr46z/a8yGw
	 RXB53qECa+Bhv/oOiDNEO8YSXqFQ+eQrz65QMgEbKIfuRY/V9fWZAtMwpVe3V5RN6+
	 Z0D/B1bCuhjsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC936C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577523369.1655.14082065182891666956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4626e356d9762eff5c2130b48b37fc168f26b869df141f9ff9ae0183b3ca71
Date: Mon, 03 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785775233
