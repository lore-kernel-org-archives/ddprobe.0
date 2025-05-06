Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B35820F076
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746512994; cv=none; b=Xa/GB7Oiqqnp7WPsODxrR2tK4TeqPkfAyTHtv5l2ayPwnGTjsTXsv9W0fhIQ6lhn7qEpIwbyYoi7VvsNDYbVv9/09vfxNmjoDhLIRPU1wg2hOR/WHao++DfpljFGVVpT6+2hfBkt5tku3pSK2LTrwBawK9k1U4YtyKK1uJRd5DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746512994; c=relaxed/simple;
	bh=Nh5ZscjOffAVH/bMseB7ww1JA9Dao6tqs8fSmDIbicA=;
	h=To:Subject:From:Message-Id:Date; b=tGM0USC6Tj8B3wCh5UqpSm8VnSgn4TJsBSSfcZnvNs0n+EP1lZ00PP/6mDeyUm2HdWkoXHwKHAs6MhsqMr+TDBwHDo3tp/l8DkicoFgY4drpRY1paT2tbnVEDR5SWxydkzC/+GII6diADhJigo2zTlYnztJh2YVvxDC6CoEpM2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6gcfgh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6gcfgh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8F0C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746512993;
	bh=Nh5ZscjOffAVH/bMseB7ww1JA9Dao6tqs8fSmDIbicA=;
	h=To:Subject:From:Date:From;
	b=f6gcfgh2pwlO2G0r8qC70fXi4V6rkQsl47h/NLt8yb7eJgtBn3FuQ6PiDa/q1dqiO
	 gVbs9IP983IzYdAiHXqz5D91mZIT65ddyzDnNVNvf/5TA48ULkZ4g4AZGX5lh79WyR
	 Q2LTNC/m75Att1oXT/ef/SRepMW2i/2bldgXL4sN66k7pqZCT4CZiCleCcPfq+gJsp
	 aD3NqG5285EIPOZ1JhMMsLm8fVc9VeRaA56GLbyGHi4uXIdlNSLO7hahrLOctRDN/g
	 VQicaPRu+e2rkTHA4htaHbyw+5glTwT9bgABQz4ioHuQkmIs0vrjjnLp4v0xN1oSD1
	 ALgsVL0/d7xfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913EDC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651299357.22932.10962356060373069847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ecf04c0c59d3bcf805915dfb73ac797dfaab96bcb22eacf6f114c553b1301c
Date: Tue, 06 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746512993
