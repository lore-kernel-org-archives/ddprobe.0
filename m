Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2AD23CB
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730521554; cv=none; b=q0EYWx8VKM06LpHEXNi86FWH30DprsBR8+rc1xheUsbzY0Tf2VCxidGSrR+AFaKiqSb6crTRcGCjyQKT8yHIvwPVbTilNauN+aGKGDFqHvxoXfPIB24EvpUgu//s7od82oFEOVnIPUzcO1mtbYqd1XZMsqH3yblMQouJurcgMrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730521554; c=relaxed/simple;
	bh=BTYzcDUMIQshdw5jrj/KZWm1y1fTunw9STWyYyax7Hc=;
	h=To:Subject:From:Message-Id:Date; b=O1mjklUxCJVMNNj/ow9MU9Xo6LwQghUQRi6PVpPxF27wFy9kgB3reb2SxiODOqezZ4lXKXaIuSow7g3171NdyekB/NjIhifbOc0WeaEH5QK03wb0K/PxGoC7fKhlkhRiPP/YLbrRA7NXqJF9/+fdx1yrwQA2vOlcZHqRFwNOiIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBKsSNBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBKsSNBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AB8C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730521553;
	bh=BTYzcDUMIQshdw5jrj/KZWm1y1fTunw9STWyYyax7Hc=;
	h=To:Subject:From:Date:From;
	b=kBKsSNBi1t7JSqJKAQl5m70a1sAu+6DeemydSo2xhfBnJAMJlbtgaKwt7pBQaEX8f
	 W+D5kNomQjT4Z1H5iY9eixiAsAQgIq0fjLmTpRRWsOVIMaeyqVfBdSJG84cgHmITAo
	 sN6Ekou0u1hBobvsqMDIc8N1AkMy4qbYll0nhhd6x9x2SbKusijTdySmv+Sslh9WKd
	 YOlHuXGZQKvONHONAskBvDa05KaIjSm5hyhSapSuguJvvPRI8a0yLf6nJnSnX5CV+f
	 hrLIhWl18nk8t4D9bKJWgaD+ApUzAG45KbsZkpD/ND7eTvnN8m4STHUNirCaNOR1gi
	 8VwNwjGGsi+0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20B9E677E6
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173052155362.17397.17420304187331734791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83fde5d05213057bd7f162f5338680a35f90b32e9a24c35fca41bf560f44e034
Date: Sat, 02 Nov 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730521553
