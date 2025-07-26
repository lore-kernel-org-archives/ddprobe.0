Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344221E9B31
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753561194; cv=none; b=cbdM4opkVidvxWvkVwnY5mu6LjLz28SvJ5GiTq77gH6cFKlfVolRpmT4hyHOoiQyWLIVALR3PuHmZ4/DpfArk1LhOVeLU9mA8yS6qOGDTFAfWhqmFcUFh9HmrQ8RiEBuXV1xpaI7psoKV62z5r6hqER2cbyaejt73j99vtl0ZFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753561194; c=relaxed/simple;
	bh=mzTd43bcE+TdmUING1VbtdUDJiQEZ8K2AAQL0i7RA1Q=;
	h=To:Subject:From:Message-Id:Date; b=ooUBDWTzBvYUDwE72XoAfHnhvAeHiGFeZw1ypro8r26wrcbTP7xQlhuZNgCZBIrEoquJfs6eDmn90rykm2hdHVCbnHAkQK7vt0f6BAFPaLiIvuxr6seepi0ElwofJ9WMu/DTQ5RCOD53CgOjSOx68QhU+D5Sp4WwpaP+LMbsNnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMVb8nhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMVb8nhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D54C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753561193;
	bh=mzTd43bcE+TdmUING1VbtdUDJiQEZ8K2AAQL0i7RA1Q=;
	h=To:Subject:From:Date:From;
	b=fMVb8nhCTauk+R/JcLjlMew4AnXSeFT6nYG9icdEa822Tvdes8QW7pD9Z8qdM47OT
	 j3s1bUbIcAMeDEbLc35oMUhe2J1Y1SARR0MehPL8TBv/IGQRvaqNmWZebd1edNIlNm
	 wajYoEoC6j1Rl0NQUI+W3JGWAIClQTKz/21S6yeaWP1z8BXxbP1vBEz0oo7vcu3tGb
	 d7umH4rwuFuOJ1sceM7qHktR99l/aRV+06rDnSS3MwShz3AIf71ERDA9mmAJM/fG7r
	 09LDgnhlnI637dNQSSWqtLHdjdqJRoUGWE7Othayd24hQ+T8SgwB4IRJI9pUw8ys0s
	 0gaTSydjPEalA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C97C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356119358.385.13152707317924075295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b296aeab7795cc7d3679f5500d0fbdebc0f2387eefbee02c4523799192cc9a
Date: Sat, 26 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753561193
