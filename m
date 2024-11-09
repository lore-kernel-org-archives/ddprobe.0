Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF77233D6B
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731158154; cv=none; b=jqvRc/DgFU07HcRRbL8dwKG2xLdXkUcmZnXIbNV6wFKIexOKcdaii5kJ7C+rP6/Hc1yFA8QXg74UTNGat5HVrw6qb4dQ7FyZtdUb1tY4ZQllnETNdDV30YAgGfKGhqbFYWeO6cZRWAnMDDIAsF0vCKD5nKTWJ52o9uzu3L80BR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731158154; c=relaxed/simple;
	bh=tcvvTwUA+GscQwQbpNRbuB6Y/TAAGGhZdQDKP6wQgTU=;
	h=To:Subject:From:Message-Id:Date; b=tBFj7/EbAc7kdRTYBPq3OGYg3PSzOP+4iFDFprMkIdevBc80KtRoaByINqFn3XjYSbN5zRr/2Xu2wKMbcxvDUhblYVE256VA9s5vQ4a+Dp5TdR39YcFxXKxse2j1VZWHCKOxaAYjRroX3ia4w1WHkccf15XvhVuAjjrPr8q1EpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bq/XE1N+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bq/XE1N+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06B0C4CECF
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731158153;
	bh=tcvvTwUA+GscQwQbpNRbuB6Y/TAAGGhZdQDKP6wQgTU=;
	h=To:Subject:From:Date:From;
	b=Bq/XE1N+aZFeg5Tb53a133ObXEByIZfaysVDJfs/pR+OCW7tfDbpDK+DEiE6xDQOM
	 PCKxT2An163uc0CiqZwN98nTmqSQDdpdMeh1Rzg5ReSYyRvW0t1STPBRGu4eRAKayz
	 MxTy4HLzXrwE7bFQ8LCtYTnTDl/4R1Vx9Yxjz1guKmcaRF0/Dw+4PeKWa5blTQugzy
	 krRriF6n3XugSy+qiO/sjbG8xzkyi/xSBnFUP61aaoKgBdF8fhyez8SRxxgZohPLYK
	 eMfz72Wl5xafEoXVQcwNYA/Nr0M3jXCtWYohjb2147YrIfo3jLD4LZCpw9vT4cpbH8
	 Hnsc86dZGddmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E7D5E368
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173115815359.27358.16422188247509495206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7599cb5cae88a8d285b7335be6632f6af550d0fc4e54d48c2600395399eec34e
Date: Sat, 09 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731158153
