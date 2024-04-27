Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664672C84F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714179743; cv=none; b=qXwKxRk1WKW+2/3kJGUToChbAx/XDCvHYM5bZDQPmLA1cnKhwrF4HoLRVrs48/Q7O/zN2xamrL82yRBc9kCpxfP/3DaMVi4J3x6OqYpMMc/kxKWdOCgxVvqmKY6wgeH8rGuqcNR8xqrBL36js2dO8uWZrYmz+eq97Gj5CanYIzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714179743; c=relaxed/simple;
	bh=9ElVycO6RrdDTjsPVJTE20G/H3X0ldxNmsFHctfftw8=;
	h=To:Subject:From:Message-Id:Date; b=NKUwnHn55PSywsL90WdrmXLeHyxd2/v2BsPCtfZGzcmBH4+DpWMuyqq2SeT1XeIT6iTVIx2fQgMiKFytjDee+X9Mwa0TPvZQU3chj9ZiJ8HPJ7Z8X5cfqEC4EYGH2b5IfPvh841rnVJHhEvrzJhCslrqfNBbPrHh/tPxK9AG0Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5tCXBpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5tCXBpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DBAC113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714179742;
	bh=9ElVycO6RrdDTjsPVJTE20G/H3X0ldxNmsFHctfftw8=;
	h=To:Subject:From:Date:From;
	b=o5tCXBpOd1zxfFQSCxm0GiC8UWpFn+R3ebRid1iqXoQCEHRyLeB/+Bk62Y2nc5BXO
	 BedaiFb7OMYNVbJppNLUJhEhlheuUbJKvEjCaPPd0tB1BN6FHwtqDdN1116It0tDmC
	 qzgzgVgjF8VRYgo1oGoCJmVxRuATLaWK4HfCN3BjF2k/gvJLss3pCRH2sD1sdVrxzI
	 SSFK7vtBrcdeL+NyHSzfFGXo876AgCY7Bg5+5miAil40h3MY0p1i2E4uDWjVx6753F
	 xgQeNHwbOoTXsD7LDaVmGZxkxOoCPHWAlV8FlG5+A077TVwuphP0qippY9UNA3Easg
	 oz+tPFHaoLizQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF8BC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171417974275.25578.17449684170699356992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4223cf1fc16d08b7f367e1a031c508c12cc428eb70f2289404d5f03375746b5
Date: Sat, 27 Apr 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714179742
