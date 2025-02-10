Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85FDC182
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 01:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739149554; cv=none; b=Py0BvLglrFxrQeVpQOZn0nCp99KA5qhb3yA2Sov0u90gZAQ+egYDrCdzNOTBbmgJfg7LfpJqQkNOnEnC2/GH+cAFReUIPd8r9x75ipu/u4nc8N9k92tpJRMKlcWMrQwju7gKgKPo/7rka8oNS3hJiRirUBI4r0gkivAa5/85aSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739149554; c=relaxed/simple;
	bh=9eFegdHW0q7tzPZU0MTe3ZpN5Ojj2DAp7dhhqxchsyI=;
	h=To:Subject:From:Message-Id:Date; b=oPlOWTLf43WBC5KQnDA+paC9ITqedOwaAJ451JDhaVIGUl6w3w8cFHEmvY5356fsMzQXUoPvDe15yg1UURxbxDL1eGBYxhNoXv4LRTiLgr0qesLDGyJZrgODMIMvYZU2Eo9tfDzRemuM2c77nxgW3xrWE9RxQSwxAgl19pAyZmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXkvlA/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXkvlA/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE840C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739149553;
	bh=9eFegdHW0q7tzPZU0MTe3ZpN5Ojj2DAp7dhhqxchsyI=;
	h=To:Subject:From:Date:From;
	b=EXkvlA/rg4Hdp8M+QeCylKwYx6nDPV0nksqUTKpyoagkXZbdlCYe7m7InTSzxfkWB
	 93t6ZUJ9bQ655kxA67yWLi0RaRa8WTULDURTIvD2aQCstmdP1c8La3bG+kUG934Iqi
	 wh5QOZe2+7fVwkO4pG2FY16CQGfAiAVnaDGCEiML83yr2H04aR2ehiJBI16rG2JGBp
	 eRiYtsfhhOxgNkeyb9b3VK7KEPjQW4dImQbMQgxfr4bElfjsmFq4NXPQ6TNZOvRGqf
	 T8rmyXOOapruJAoRDXfC8nNHwIrE9pKYbcWNDvdmDFPNlJvUNx/KTU+Eu4A7uJmvWO
	 dfM4RWZC4FwJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA55DC0219B
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173914955366.11398.7332571911881570388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b276ae82ed48eb9702834526373d43236cdb91ac373e9e4c1b1837ec0b392b6e
Date: Mon, 10 Feb 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739149553
