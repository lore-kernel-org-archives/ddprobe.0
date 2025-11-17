Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226F632C31A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763384514; cv=none; b=HKBPtTwMPe0s5gIWu2ftjrqmDDknE6miAGvBqQAMUCvF6VjIpnhWt1yJJOMuxFJ14m8ji+xfxvxyPar+eX1YNhc004vYawVup5ZfOGmXqK42oswCD4fBHzDvSiwc434J05LmYy1F/OUPfKxN5Psa5mw3VbBlnbme6Fa35Z4zUK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763384514; c=relaxed/simple;
	bh=6MKROsMVpzIdEnojPet8aVD3hwjR5tljoYZDZ1pMRHA=;
	h=To:Subject:From:Message-Id:Date; b=swIEFyZqr4bfbToxTg2y1L+orJpL4k7ZYRjD5+OlxQbT/Zec0c0KzqOjf/d+b0578iWxq9Iyu+v5hF8ZrpnzAD+kkDIW7owUY4NunZ5fQcMp0c//hehsPs8PTNDn5YCZspCb3tvxtBX0pTYhjSvbb3HA67DKVqEPg5pdxxYEd1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAGqNLau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAGqNLau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B4BC113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763384513;
	bh=6MKROsMVpzIdEnojPet8aVD3hwjR5tljoYZDZ1pMRHA=;
	h=To:Subject:From:Date:From;
	b=IAGqNLau1769FZy2lmY5j3FitnEytyatuui2dK9/UPYO/6YBPTQSRUxKJIJLsViqF
	 u8ONQ5bML+VGNSd9MUtuIcBG17pl203BYe9IdtJ2FpaPzxJQaMtA2yg0/p6X+lXoZA
	 uWaXzWiyIzGpUAbqJk4aBOsvFyTvqScS8YLST+sAt0RTE86jMgCGatkY0MTmMgdnpC
	 W7WBfHMEWImZyx/LySvXlr75uLzPUdX9N8RGAmXxp3f8sG2P8One3b8z+4djkJmRol
	 0twe2wpQjzeMJGiSEnNiFAJwrwG+KE+i+adaCmaiZUWmhyWuNel6mKYfx/QaBIN++2
	 h+KICD4Re/tPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A6BCEBF61
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338451361.1450.15228034637672122181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605ced53356a201eb205ab81c1c413aa861059f7c34787d239d794c9adaccc41
Date: Mon, 17 Nov 2025 13:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763384513
