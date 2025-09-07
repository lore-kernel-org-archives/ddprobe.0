Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2AA14D29B
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757278193; cv=none; b=CjDUlkaytsF1G3J/xtDg3N2mg6hBMlG0RWAwZBdmKluHHe2hIMWzc5PIzQ8rDImUk8rA2y+6jw0THOiiu2nzUb8w0jKU0D/XBgHHDa4nWyVLn6cR6dmQRWQn2w1CDhpx3hrS1YnmOoRF55rSeXOsob4U9boMwAFaNSPCf7Z8dhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757278193; c=relaxed/simple;
	bh=IWgFQcfabQzmaYwJKpC3WscPsQuNMj1h6iwDQIGclJQ=;
	h=To:Subject:From:Message-Id:Date; b=hmEW0lgtncMr9Fil239xGhKsDhyLR7t1KMuMlEDuYWWUPNLrBUiVzkep1PPDeuHRRQ5YuFD6Hn8gOeUX4eBAH2PBK0jlsXRwb3eciOARkO9ooNmGmE7Uii2tAq3bZFEo3Q3CpfCXcNmllts6Nn6ov4IrqhAx1yWZp4anx1ISa8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwfJO7oZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwfJO7oZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F58C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757278193;
	bh=IWgFQcfabQzmaYwJKpC3WscPsQuNMj1h6iwDQIGclJQ=;
	h=To:Subject:From:Date:From;
	b=nwfJO7oZyLOVmer0CqCxNod5CMwItGXs6c0G6KHAwdGc1WC5VtStJ1V2Rps5qm2Zc
	 k6l2o1JoSf8hqrDVYzaF4enXLj+qXCAq9PS+yUOc11mp4kSQ0tDaHB9hSLa1YbgFPZ
	 dN3qsYQmU8xtX6iiDjqCGKrB/S041FCkHiRDZ+kKPyauvN9c+unXWyl+8GN0HlOTVi
	 ZnazAogeJjIk9RDQiYW/XnguDCTNoZ6nYsR9OwOGhqwl4Ew0PAQQFc2m2AjJm7m1Fj
	 1OUCruwCpzu7Ke1ubgdI+z6Y3s/bpQAzlAAJQE9i2Y0j7d5VP+BWmGvaOOVXLDV2KE
	 19Dib/WMNeQag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F259CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727819357.28505.17049438881840428953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621b6dd2265894cda6435cf8d3a684dc4e6b0803c4d693cd8a0b274b65967824
Date: Sun, 07 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757278193
