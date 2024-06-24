Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3AF38DD2
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 07:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719212543; cv=none; b=cFw+jZQtPIsgCDoVNGWyMfu4zC/mJ1n2r6eDedp+1N0jNPNnZWyDkCPweXcWMfozyBwN90uphTuMX2i3/pFGo134g9ELPkGmtq2ENg5ZztoSZUvZv0sPOJP7xYGqggoboqxdT/L77CgrilBULcyMXnL3L0vk+0zDVB0EpbCJw8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719212543; c=relaxed/simple;
	bh=zrJ2nfQR5vhORo1MPPV4CvK3X85uugwOmMLGzNAU63k=;
	h=To:Subject:From:Message-Id:Date; b=qjHdPCDBDADe2zpYrSnliPmd5DKHOW4aL7kGsHjUCj/JyEWWCaZhVFz6PS+wJ0yO5fKqmNmKfUGnA1gyzUYtLKOe2v+5DOFRuAUlY+ouMdfBexVqqU4/RV9d1OKEXHtVON4/vb2ju1qlfkLJY2i2qu2wZF+gFQba0L0Lg3ueuvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0quV7p7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0quV7p7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E65C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719212542;
	bh=zrJ2nfQR5vhORo1MPPV4CvK3X85uugwOmMLGzNAU63k=;
	h=To:Subject:From:Date:From;
	b=G0quV7p7n/WHD38vGkuj3OPofKa3IrwxX1Fjup6a51trkzS+qAuoAZuNdhPFzWeQC
	 v8uwggS6DL8jsIcJRat487mED87Al1re9uM1aZ/ch+HHsmHHFY41SdesaGUoPPJN5f
	 GEu/eImzPtgUYagCVRShcs1m9ISS2nvlOZBeQqpmguttB1ArzRpkD9mwnDQnVbhFz2
	 2bcdGbnp+JjICsks7+g/evVPYvd5N3oTGqHN/9OvO3JojqAPUflKpk+ytVmVaSbfoX
	 CJgpr995nRpzbGrUAE/gcdzZG6fcfNY6SdXCMJ+m0Gl7qozBxdNG8TxCt+q98IB2VX
	 aJeBKH5mcpY6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC95C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171921254277.19371.10776020500614156093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0466204b5e597fbb2b64356c83f1a6174a1d892850a788c3808b71bc0329cbb
Date: Mon, 24 Jun 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719212542
