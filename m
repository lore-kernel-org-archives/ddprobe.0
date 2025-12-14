Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BDF8635D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765687974; cv=none; b=DrJNBXiylb7T605kp3chRRBqXGd9BTSAkw8yeusEf+nKJemRqPY5QDRyRvZfcEFQjAlyF5OSndDsrKxj88pSGFxU8qSxq/DTygMNR6CnEwN7qRhvUWoYWe/5BzhbUQtlNmQF6dUeapwErkKEDAVs7co1XN/329d9lktK5g495w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765687974; c=relaxed/simple;
	bh=RD3CEnUn719miuspvoe0cmGb6iFFvmArR05LOOnoAc0=;
	h=To:Subject:From:Message-Id:Date; b=Ak06m8XRAg4L2S2LvSIC3WaLHiFGcBFhC01Cm2uRSvxpHuOYTymuyR40XM/hHxZaUZGpQD0FSS9BEXZBcY3KR1MD4h0/xX2T7TMr2H10bJWxOUQ3UNeVxljFFZ7AA2XKIhlQ0ruLxwlydOOZAPZUuq0roSyOvZSJhJfciEUSgkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvWwvBzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvWwvBzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF02C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765687973;
	bh=RD3CEnUn719miuspvoe0cmGb6iFFvmArR05LOOnoAc0=;
	h=To:Subject:From:Date:From;
	b=JvWwvBzuKgy18a6Nj/jWmbAWDvH1Ev/Z99qp2YjFT0DP4Bjnp8eO9Q+gO0nYItNTL
	 OyFNqXDuHIGBSxWeHfx9QeTUpM0Hd0ur+2A6GDAVHICHDanjuj1+0I0OzcDGBITaxF
	 mgGdKeVfKHnHuD+Aey48OmenVkHXXjzOM4OBWgwW/GuMrWFKoICkyZih9/ozolF4yD
	 xWwQOqK0V154BKkywdrFPARltsNexd1OhWSPsFwn6Imb7Q/DC0/LAvFkFRmo9Z6K7S
	 evA/1dMFRi/psEJniLgSZbECKNgh43H8lmEwQ7Sx+sYMP0qyW1mNvtPA5GANyDZ21r
	 087JYaBYKF48A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977CACFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568797358.32415.12869115238915672968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e86bc19722127d09104559404ce38230404256adf24df2f588d9fe461c9a90
Date: Sun, 14 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765687973
