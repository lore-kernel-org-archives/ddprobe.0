Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9D43F99E9
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782485854; cv=none; b=MV4GVp92/Af2hwvAZiJTadO6aSjov8X/liL1aPVy5/oNLSpMUR+7MYxhfDqxYZfdU/2wIp/Bc5t9PLQVC2lz4xyO/dZmHNErners9oQWIfssBAyu+/9sIokoYOH4g13pacOxqSKyGHEzkQuAGcHX4ZEQ5xuGnivAF6SE746G+rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782485854; c=relaxed/simple;
	bh=+pMzN8EQRJFX6INRVd21AKUTcLmlpVmbi2J6SGvUodI=;
	h=To:Subject:From:Message-Id:Date; b=jZJFwZ/HYPWYzYRathu67sanVFpDkoiwbkKFb5efTQ675bZpJZZOHwcyhupv9Pu3SiCDzKr4HNr02+mk7LKRtUWfLGJxnUQp+NrEQTH/FSsW2eVXv1Dpv5OK/WVZYKlPL9a06GQI3cxOUH7/sLxO3K6lg6160ihhpLjvkEBKFt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeTYPyoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeTYPyoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E1EC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782485853;
	bh=+pMzN8EQRJFX6INRVd21AKUTcLmlpVmbi2J6SGvUodI=;
	h=To:Subject:From:Date:From;
	b=TeTYPyoLF7Z25AMpZJuTXV8fuqSBRwq8LP2wAQ2ojOTGPancMmvPR3zlJOghN2VLG
	 YYifc5EU/C5+A/+Li01pLGvTlelZBVVGrarLSLirjgXixFgIc504Lc5hOMWa3vfoBv
	 nAdn5i6GiCIPHdYY+LqSe1im2PSXqFNPC5bNu0WSUZapxZyq54IiAzl3oZbfKTJW6/
	 ckeErfwJXHlxlM8FA2POeZWvdEMKqHC4U+yWLYpx0q8MhRmIZWrKs8lRkz05Oh7uWb
	 rkQ8KutO6l63svEjweQskF33OTnmFQRWszRYHi8y2gnSet6Ej1AE9GArHfMTVsGqbb
	 jr8gRhd4lvVow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F4EC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248585373.5077.1482544124945300135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ee4eb946404698fdd842c59b490c60cb3ca2385315c840442beb791747584b
Date: Fri, 26 Jun 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782485853
