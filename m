Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCA82E1EFF
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757069994; cv=none; b=UIBHM2m4SKzh6i0JyWkiCW3BIadUY5hvehEE/F+IdmMz+LfdSY22aG47ndHkv1LxPjHIMJRRO/rPkaELZwZBLFesv7xgPZyNA7q/GXNEA5HvB2c07D9p/JjAdFtupzm/jN4+Rvoe3hsipI/LRgP5K1hF8y6AOWITsEPG8y3dTQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757069994; c=relaxed/simple;
	bh=nX0s6Xcezd/DhoFNSK5jflv3bOUHk3Rl4xT3JJsaWsI=;
	h=To:Subject:From:Message-Id:Date; b=MK9ElYsvuRnAsNsD9ZPjChJEeFxYdHVfILhh5F+BkuRfhEKvZJw0XbIRI8pvtkZ1GHPO/ASxG1T6GPNDu9iS/WtrlwJop4KY2veACo62Ju0Ul/8gKMlJsSdeEwqcphAm3kl4U5hf6VlBlUc0lH3PdS3duCjHn3IeS0q4Espjy/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRvxYur6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRvxYur6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB02C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757069993;
	bh=nX0s6Xcezd/DhoFNSK5jflv3bOUHk3Rl4xT3JJsaWsI=;
	h=To:Subject:From:Date:From;
	b=bRvxYur6YG0yygCJruE2vF3nQ2Oyf4+aTBhX+tc8OeuYzR5h4rJOFLjq2FE95CoeF
	 BEa7o8lMAuNRFH4NlTowR0YH6+ZW28Sw/KifRGCW+PRrD71hUyC+V+AAqko0LuQk6w
	 gKIu0G8ifUa5TstKeKfo0R7PJV7nuQd1uqabk5pRK8JXHZp/ckJ1y3xwtiLedQUAfj
	 Izd7ahyJNgOQFErRrwQZRj07wdue1HN6FmW8djkS9hqZUyMLRWvBfuAx4SKE4pFqCh
	 gXueEjS2tIDqQIGFndx24wn5bX2v4vYjyKc+2e1oBGS4Yfe/XzweCfnS712odP9bEm
	 /UoHZN1Wac0yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA8FCA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706999357.19971.1100774625409692709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8ab5b6dd19c9c0abed12da22251eb5adc85c527b2d1a3e5d71d2e4ef114a0d
Date: Fri, 05 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757069993
