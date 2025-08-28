Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F6D334371
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756400994; cv=none; b=FQPxoAqrhhLu95l6F/1Zz9atpArfome8xGL2+jNYT82i01WpVMNnFACPACXPBEzk3ARBZEmwcaxIKDyDt3lztVVJrABfAWhZkp/uij9nXWw5LICSwLt9YLsWplt84teR/JJWQwZNkxDwu+CPqmz9LFTpxIe6Aat2Ie+rBAFeszc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756400994; c=relaxed/simple;
	bh=vTCUEOLndFUHZptM00U+RJgP1iehB9rgFON82a2Bdss=;
	h=To:Subject:From:Message-Id:Date; b=WsJuxUvBbnNvy2oZVLuDjv0QArRUV6f5q06rY6FmuOhXhYgPbgqidnXMutXTH7g68flbbvH7VGUraft1Lga9n7kp8cxliZ/DZctf+NkwoFPuHAP0Y8ox7qGr1kuSCsDBNC9pcS1cXN+GogO/851RU/jzdZsXlRJ2/0J37BQIWHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNDOl0Lf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNDOl0Lf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89F6C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756400993;
	bh=vTCUEOLndFUHZptM00U+RJgP1iehB9rgFON82a2Bdss=;
	h=To:Subject:From:Date:From;
	b=vNDOl0Lfy7ErmflL1xLHdi298oEX5sa6OdFJrlJKWUUp1X9GGJ3tdPTfZzyxdt2RI
	 YvRQ+BGXBylEhjhVmOGBybJOBoZ4UytzGSoKxnTuM2/z9YqJIie7bv90XV/YDRIl9L
	 2Z8+sQIn5P++KpV1tH5z2AoB60dnNTysAGKnOeSx/6l8h0edBrKDQmkv03V/qSHfgd
	 9V6/DldKI5maKNNVwI5QM2ITtXQ8HTlAlNrqlgpnW3ccSQb8loZBzp+bUlyM9Lvy1w
	 08awxfTUl+coqQESxEajwcJ/OtTFcuE8hjuykZ578JN1UIAb7iCbMK4Zg1/NseVSuT
	 rMz7TW+M7vTHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C8C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640099358.2898.11175839778153628425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0652145ccbb2468a8278dec9e3ccb4f152c1d5eccb9a6a9f5d573201d17248b8
Date: Thu, 28 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756400993
