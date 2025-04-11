Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494A926F46F
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744343394; cv=none; b=M5xrLXCs69ibu2Yv/cwtxkZXgYUpBT2dATL1qJFtYpp4rc3fbjV3Fpegd0WMNUT28lmaJgkAFRA4jmFkrnRAXaX8yLxyFvpoPSW2bKvlt+n1OXKjmejuWPYmt/p0SpjD1JR+gL3Uv5kkx3icj5O0kBP8Ma8S+OsqkngDxTN5tkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744343394; c=relaxed/simple;
	bh=Rw444tpgun8V5CsoyXHTq72J/v9nkAdrWechY2+TLfA=;
	h=To:Subject:From:Message-Id:Date; b=lCm2hnXsFtSept9EjlCuELcFehoO5o7c7ex9S10QnsNlNHn30h9ZbkpAp9aSsTNvm4JQlmNgspReXpejlETypaUz/NWCOAXKfoBrf5xdKL/geezUUat00C935LyuRS2sc3CMsY1F+v2bEXe37ckAH9ir/ybw0uLEpMa15NP+5RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy4G5TQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy4G5TQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE88C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744343393;
	bh=Rw444tpgun8V5CsoyXHTq72J/v9nkAdrWechY2+TLfA=;
	h=To:Subject:From:Date:From;
	b=Yy4G5TQKfbv2is7FHI1upxReAaGESFUkQJMKGVL1/Nt1kvlHxP1r2dxVeRSCTYoIf
	 EEN67hKUd2OEgTpffkpMUcPG3CrUBCPJP2ZJRBvkSfyYeoPgffAhrl1qTrncwvmbT3
	 yOHz8fdPLFrS2HX2wHZV1huw0Grpld6D+lTBm2ao3dg0AgBIYb14Xc8qIZNJ8ARMFj
	 t+6sJY/Sw00itX7DmnLpFuTUHeC498If9yy5TIEBnI0GXXWPYqIx0YryxuKs83Q8Id
	 gzIMuHphwhqqYtXfC1ZGe3668MH/rng/9OWOCzt9OE+SB6mmx4OhSvBHffTaHO1Ue6
	 gdXe6KAJW8clA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BDFC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434339360.2154.11885109202598282845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a784233fd461ac924864d47854ee105f2bfc528fefe6403d8d79dea0551ef24e
Date: Fri, 11 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744343393
