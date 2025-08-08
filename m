Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9921361
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754679594; cv=none; b=muTd7JqJA6pUC8M8L9ePrMMUqKEs3twooLnanxB69ovd1FKu/KY6HW6S+z+LIoHd8ZkUQd00AygBFzEI3nDv4ePzaZKr2MkgXMC6i07R2WIMuTpq/N/749udd8f0yJlwIdi9O7Avg9ivxBGIfVJ9ra5KGeV9qt3dHeWKf/umyzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754679594; c=relaxed/simple;
	bh=/EknwpoEtLPP4IpkILaynnbiHy+rTmogxa0AkxF+rPk=;
	h=To:Subject:From:Message-Id:Date; b=tQqXHnqepDglTkliZTArQ0zw5JfHdYVLAdBFy89nW6wTAK7SXUZW00BH3nx/jiFiSRowIbxFZKTQkZa/h5cRX9LJBxqwZwlxlN0tBhlK5BfOQSsyqKfMSC3ryjWc/h9oPrlCXWJys2D+X0XsVFC4QNvahbjXn0He2M00ijINA3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WArDjBWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WArDjBWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F2C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754679593;
	bh=/EknwpoEtLPP4IpkILaynnbiHy+rTmogxa0AkxF+rPk=;
	h=To:Subject:From:Date:From;
	b=WArDjBWVgdMYje+VdqI76cJq/YWaK6nAZq8vaPhC5eiElFcLoJf5xf8rVcXexowOJ
	 OIEyVqTKfP9NVhn33C+IG3LScLkZhH4s1I/A8kjv7BFP4XCHpf7ndkbQL0MYIPMbvO
	 PSpXg+ogLL7P8A/qTIix0qeeMxukWSR4K+njVsb4BUP2qQBmlEpct1r0bUwk9hmpTW
	 XydyPJoDGlsl/fgqNT7spe5SiL0mQfA+2AQAkibXlZAJ84ClQySmfpuLGYzSjoyGXa
	 GjbHEA/ouazaDtHQmUrgTTMM0RDviypP0NbXcExgSshbEFFe4madsu9J011TJl+EB5
	 jMH3TwljjH+2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E324C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467959357.30125.451346898414497649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ebc244c55e0e03482bdb06728d03be0cdb78a11739f03e622ed073dea1459c
Date: Fri, 08 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754679593
