Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3868C35C6AE
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786516834; cv=none; b=dPuM0MHpS0L38f0On5bDwIibBI6U6h6MPeqj80WRrTSDdEN6ER3g49D1UzngWihPHRl/LzuLAbdU6aRagpYqLoUjYTfbvIkoqXjDaZMZA+J84auT2Fzdc0x3pLo/t8/vP3G+wbCMaPSqaa+KbGQhFGRIrtO7y9+Wv2gvIcw06ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786516834; c=relaxed/simple;
	bh=hd5xY1ysmixZyIgF/xxLcmRma0AdgYPm3WhzkX7PUf0=;
	h=To:Subject:From:Message-Id:Date; b=tw5SVMDmqT07mxdkZze5aZK8b4rQVeO2zp2AYOfdLOH8HSZv9gb+WZT5Gzjm9InrHmNA8mV2PY9dy16jNfp+R3HE2m+nIu69kN55fLwlvtHIqesWabUoBRQbhuP4sxUtG1mc7UAri+uOd+8zf4aNuhjNgKSbycqTbQhQCLAfY0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOpBhZ55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOpBhZ55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D355DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786516833;
	bh=hd5xY1ysmixZyIgF/xxLcmRma0AdgYPm3WhzkX7PUf0=;
	h=To:Subject:From:Date:From;
	b=QOpBhZ55mngxxFw3fqdupwLB4RHTcwgokwPgVmn5KGHftSIWEkecn1NWOX2wB7qT0
	 XsjdbknsCLdFOVI8K1wrmgDaQbgHhrVjKHsaZWy96uFrPKelmg2vfOzbbiKJni/msL
	 hPB28iJHNDYZ+kB6ntn44b+hm2K+eXYqRdO3nqKrpruNXwMhLQq6+TL9x3xuDVI8ON
	 aBEHBQIRJoMIy9bMzjUiYFy1x4DeG0dGaed4i7fHOkiMrG1GMunUGsOxPxajMTOMFo
	 Xo3d/IZHMn/eos1gDBNUPOF+xS3v1wvDvE0ullkG8me6HlJcU326RFRv+sf75XeQUF
	 oHInANzODOW1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE20DC5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651683369.13074.6321604365742955555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9a8d790724c5504b7660763306f19c72a2d7085adf692b2e68c7bab0280f48
Date: Wed, 12 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786516833
