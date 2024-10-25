Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4069513A40C
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729877754; cv=none; b=pEwGHFw6Ecz5kdcFmS+Tdd6EBn3OQb5fqlJ8QDaDh6KvAPYN/sB+h51RBJVnePnjIVEfCT7P93k3oicLtLUOa9ab/HoyMtCMoL57A5rW+LImFOxs7ch3MBRMK4ca3DznPt10h5i0X0nlS0BCIn5aw8yku6MMzmgWosQBbiR5PGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729877754; c=relaxed/simple;
	bh=y6eSX/XGT/5ksKGkXOpDU/WyHlnMFvay4DkUNMFUXvQ=;
	h=To:Subject:From:Message-Id:Date; b=s/b211wGYd5iCCKYNd/ltr50kVFsF9QwxyiT0tSivhgAkQkHqmyeSb7co5eCUoQ3c9Cr768p3lNRxGtuWA1rtupklbIXPmlnjZXHP/m9lJ8O2PjKIFRHfDVjANoSPe2+B+zSjg2XBnfVoE948r6QyUbX5hp21l4e5CabaPXC7xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOkUrGJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOkUrGJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4596C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729877753;
	bh=y6eSX/XGT/5ksKGkXOpDU/WyHlnMFvay4DkUNMFUXvQ=;
	h=To:Subject:From:Date:From;
	b=mOkUrGJx9H92CgbhVTtOWbNM8rkwZqFCK3Yctw6HJLz/+gicVk+/h/GBhENSi2Yiy
	 s8BD5GLoj+w9bsXiXn9KC4gfhb0/neEufEwaPq7UUdYxEhsvcJ1GZEheHIe4PvhFto
	 trhJA9RnUuQur2XNKHUrbx3Xc0csEQOvVNOTLO3ox2ecR6mxMQ8zDv/6Hg1vgdVHI1
	 HqzzuFUcL2msZJUsYsDW3LiPyK1dWCABf7SXQJfjvIQuRDPC5XVYvWRRX+xuXiKAsu
	 CuIsW9spCFszm99aEZ0RNn0g/LkfV5BYJNcMVQ5eGKObswXtpFGYLQgW82z5uWVsdo
	 Wc+hTbuxpFJHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A258D149CD
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172987775361.10724.4762459767027325878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ed632337e98ff7c41022df12eec0ac3dda01abbc24d9a3cb5e2b6c33c17fe7
Date: Fri, 25 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729877753
