Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574913D75D3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790592634; cv=none; b=ad6Wm2ieulrEou836mdSHpQDzkRXr6sFR3jqc9uLXeRe4QDUjYpVO9kIaesiU1qnGvlTimyuPVYAae14147M8ZzKUixQidHs1Y2SmUCC2CttiA8enzKe2hVfEWD+pV32zS3Ud92fX/16kp1gygRDLKZ1yQ6tzmmTSggMHhcfIKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790592634; c=relaxed/simple;
	bh=sfqp2E1jIh2vdTslzAEFA0QdbM3WugNdIVr9VtEPHYU=;
	h=To:Subject:From:Message-Id:Date; b=Gnaa4aZCSOfilNPKDy/hGwzzyfb27EnLV7pF8wRYfL5TFO4r2rPGX4rQa1oil3vyL5UvxZnpD14MH0cyQQ9qPIhfu3/LKmDNJugiaWtCy32jb+TYM8WIcfyCN5iUXzFTYrd2iQ6JXxovhJj22efWUnYd1PDV3k0quAr/C9inWeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEJTSLC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEJTSLC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AA9C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790592633;
	bh=sfqp2E1jIh2vdTslzAEFA0QdbM3WugNdIVr9VtEPHYU=;
	h=To:Subject:From:Date:From;
	b=sEJTSLC+MVBJ9Gki/GZlS/SHRMq5IqH6wZ2o56n+6uLohLzeFfyGoeTwlrivA3gm+
	 h9ASRMFvSuku+aEz+VhY5l0iRapPKMGwZZsDBnXAr3FIpZLN/b/EHMaMCSh0BZb0bK
	 03mwpm03Hj4iRbaSi9FFTzmO7tkbUh1KTA/qPzDPQgaxIGZkD8leE8CKsaAE8gd8+P
	 3oBoCYdKyLd5+u8muYD1vYGhBeaSLX1rMbxMTlZTcJIp7IzFzxE7d70apii7Y3oqBm
	 UTBJWCt6OLSyFp4V5ZGZWP5XJj6rBJkhhQstOdZNSe/6IbJqbyP6G74e8B3tguDuvo
	 tZulBxDXQFr4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4D7C9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059263368.25522.1231642648716167778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e874de7939f319ea7bd200e5f7bfc7cd7eecc06a91ee7daffb9d6d122720c650
Date: Mon, 28 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790592633
