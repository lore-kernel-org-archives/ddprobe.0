Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D72C298CA3
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783189114; cv=none; b=RTJ0zWF0KFwUWK8OK9jmBubLBPT6/B/TgniERQVndIdM6/3gH2MSlwpNGkPS+IUZ1Q+cNW07x1KawA7a5lTwPmHzpd9KpZBQ5HPrd+xoMDRmBQGeBabf/pB1TLtsnVpCgGDS4/MJjhRop9a+W5/AeuSsb2nIR8c5XyeW4frbDMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783189114; c=relaxed/simple;
	bh=seah34a9JLz1UVH9FTp9ZvYg92h6rlP0zdeCWbOcHbw=;
	h=To:Subject:From:Message-Id:Date; b=ZpnIzlkUScmDiNM43dIhUJeh/y0cnSiAfrWQm2D4akr+H5el4Gx3doEecz6tLlJCNtr2a9TqZ4Lf+hKx1A4b4VdugPvgUuH4dqSaiqlu4hgC+u2GvEs6b3nnCgNQby/xhhhkNxofA8DNHmh3cI5+9NucL/el/j12btN/xumE0S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8CY88Bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8CY88Bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66B4C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783189113;
	bh=seah34a9JLz1UVH9FTp9ZvYg92h6rlP0zdeCWbOcHbw=;
	h=To:Subject:From:Date:From;
	b=g8CY88BnMAJjyDPl7zhrXcb61ZaalqySrX7zmL3Y9m5K61/g2BFZU4fR5pHrenX7y
	 gLZt4w51+nOrIXG7J2jGe0XRC6O8kxMXwq2iALprALrAiJ545hgaL1MlfrmtkMeSrk
	 6wSC9hF+fzaZKCuHD1s3lRX++mku+NTA8y67h2uL4Xm84ghDoFwLpr2vd3JDyafWQz
	 jOyFSNvqCX2VIuilPvuj/ismwuw1lewclwVlyfmw+uWjzQV73uL0UHHSCQM5c8PmMX
	 gGMlt8o+yK3qL8J2qJXMtI+YMg4aLOdCEVp4QQ1LcHjIVzQf34E9Xn5h/CHeUm+vpy
	 viaMmyyhkkv1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE053C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318911368.19287.18240759038340518252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d866dfa475a591ab40f0501b9a7ddc9d8611932ad2c78e72adf42efb24943b
Date: Sat, 04 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783189113
