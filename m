Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A9A42AA9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782641914; cv=none; b=kjzize9BXdB4n2rilEJREA5nWE91T2snDUea8jpXiMJ8ZebcH3VgxhIw7Q+Srtc23vYC+HfeN1eG3Fcix0iM8VfLx1R4wZhCro7A8w/eOzWOdnYflDBH3CzMxFrgREfB1hjs/ussUk349xe7YnnpPAgAEpngLIgDXh44Sb0h5Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782641914; c=relaxed/simple;
	bh=Rx1sLg6LOku4b21xFn3WWz1YTvIO6bFobrCdvfhjoDU=;
	h=To:Subject:From:Message-Id:Date; b=MiSktOtqka4aZK7XtQ2FLamELKq2f0ZRf8GFrkIBFZrfkGNPXjIGdIAC9ixOsD8oZM7YMIidq4YxBJ2D+QxJ0DN9WdZUJRxSFSf8RDe5X2P/NcQw9a0YLBzivZYg9fyPAurPZI3VWSDn41XnaRGr+Z2a87ILqOpfaDNVo2GcDZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJYrYZYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJYrYZYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E48C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782641913;
	bh=Rx1sLg6LOku4b21xFn3WWz1YTvIO6bFobrCdvfhjoDU=;
	h=To:Subject:From:Date:From;
	b=FJYrYZYYvRbJQh1al6cr1i1OOOr91OkRU2ZhERx37V2MiF163P3bGRDlHgmM7izfF
	 CWNbgIQgfEMF+8FYrknXZZdWL6okU6eC4Rv+/bBNTjgtnHi8CRLLlNgp2NR6ATM8ak
	 c/gf34Zb72GsFl4qmByoDuWstXPP1Xlm62Pxgqe1xqFK4YOJThVyJ6uLTlCb8g9D81
	 r7jxHkpoYJQWkHejJOQ71rN1b41WbmEiWHAes2ZHULI28EqQlUocGVxedR/QfLuWQ8
	 JSrQE6R57eJl0quql7RvFq+sfPlogdmWhmW0gTAoQXhSAt/Io6VM/BgB9k5iG3y9W5
	 LqzvJtBI+6nqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AFCC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264191370.24452.3716132964032263951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9def0dae0a13188dbd4f8049dd2cec2dcd8e527c0f13d6c316264add1fe8718
Date: Sun, 28 Jun 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782641913
