Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AEB51CF61
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791328834; cv=none; b=CeM4GX/L+MOjO55jE+tcxejqy3T1Wcys/uYDuo/qBCXPHjioHjpvD0PeVPk2tFKeZhtu1fsgkUnqrDKKyBC6GUwSdSoMKJSjtk1NsKUFoRIJZM6mcPuBLYMC0AahMrtwFDJevek0MbFRF1HP5QiLRRjSDV3sF59x1jeldnpSB5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791328834; c=relaxed/simple;
	bh=2rP+RlSKncXlUQz2nM8z7qW2Yu6yFtSa/nFGjx0g//E=;
	h=To:Subject:From:Message-Id:Date; b=oKdG/GuMC+60ModcBKJgvL9v75VE9NUw5GVNB1nVGiY64fxZtladTiHmcmSgc9zyzXQXIr5qDK/ycmRVG6X/LmE1m6NgnaiLHOxdrQNu/s81RLLXhCb7qQCn5AbPJ0KLulaFMF2Z9qmzjMnEUwNpbgeb8TyRXDFOKbbHCqwf22U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXkJVfxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXkJVfxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC824C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791328833;
	bh=2rP+RlSKncXlUQz2nM8z7qW2Yu6yFtSa/nFGjx0g//E=;
	h=To:Subject:From:Date:From;
	b=DXkJVfxL7vLKOr6IWHFm350PGtKPQV/UT6SQ0A6phSB0P2QjPak2YNjCBH7hyKODh
	 Ub4a3aF3b3Wrr9F5HOTkfkRm2eUav6qIGU1/f1vbLK2Bzn3cElxfdqZ97Ny+j/FonF
	 eu5zhlb1fthaMw3BelOvnwHucwk0ntgIAAJfNdnNqK6aXhYzZHvrog2RHuW6CzYk8G
	 CGq5M+rJARei+hU7ll7rU3+qniYvI42EvNdHwaR64sSz3XthF8v40iWzJyBHy+zqOi
	 mxn7dqV7+rcl57E5BqyeI5PKkoK7j8BuX/ihsvOqtm0UgaRTPvY7sLXmaN1WL4e3+6
	 AQS+mXBJoSPDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA119CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132883368.1588.15124828824872974903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ae566ae40e5b89ba6c5e380dc11ed82acf6299d1f285533717ceaccd5b08c5
Date: Tue, 06 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791328833
