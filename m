Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DB13B8D7E
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765157574; cv=none; b=XrtursICzvoMeAYdF4wsLOdtkXAMtHyzDm7PKo7i/Aou54i6N4dy6b7HlEMXJtkCiUCajovZKTwxueqba0ZWrlltHSr7U1RJ8oHUjErVM2SIvGQAYzf/2a9V5bfeqElSijLBZbSHDg5bS71HXkMTCMFFK7jCdvyA4JhjVP3eGNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765157574; c=relaxed/simple;
	bh=b5Fm6zNVMgS8VWLjI/bFnjRZ4eqmFGWkfTXADOnHVlY=;
	h=To:Subject:From:Message-Id:Date; b=apWQqWWxjy6lWRAiuKxErgqzHspOMWVHOsdX/8zlyvoQQlMQcmNu8prL9lU3oeAQKnFw+wNaqn/EVbocZr/fIMjJwuvI4llwlytnCZ/ER7paTBD9s+1KK+FvuD3MRqluRJwepP/R5zA56yTG8qgg6yTRRu//vNWJ/Rw6aZrtWQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEqzqwy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEqzqwy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD276C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765157573;
	bh=b5Fm6zNVMgS8VWLjI/bFnjRZ4eqmFGWkfTXADOnHVlY=;
	h=To:Subject:From:Date:From;
	b=iEqzqwy6pQRjkhKA/qilXUgZTB2KE2XrWY9/SdTRLa9lQeebHPllnMIknEGt6vfJH
	 KH0LkMI+a2+fqlqXeMChxqjh/9kvLCuM84Fk914Zhb01NS/R9wZy7yUFrYXRO9DwZh
	 jyHNAX+bFzZW5k0sgzPjJIhOhIA7N58PAn58rEC9Dv72jTA8CBFCjJy3F71fUsTkYK
	 Gh1jTp3KhtJildydPHbNSygrdiLfC2vGv0ggo3KLLPAOpgBRmhZMdjdHhHkJjSIiKi
	 /h4UM/shd+AGQJj/HJNWYA2/G1XSktxisLeFPxRkXIHqh8JXDIlzgIy/giVTtARv68
	 4OHP1O3Vp5mCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9729BD1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515757359.6808.14829862828860752440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0576dbc2948c48e9bf731ae726f77536ca5569333a005adc2a10e1e32c4b60b
Date: Mon, 08 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765157573
