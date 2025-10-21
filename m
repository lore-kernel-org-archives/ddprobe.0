Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA2B25EF81
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761027594; cv=none; b=qz/25XhHoLXPlkimejrzBPHYGIX1JRi0YDNYOipriqo3FEfgGtYAvtxTuDr1Pgyf5QrV1833w719nhxDO3+ZY29R5DmyJJMeX+oWLonGHTXMB3+hex4Hzc+oHsSnlvQl6Iuj/0flt+E9fOQZnXPYhhjX0Fzyl/icavAgT2iSMqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761027594; c=relaxed/simple;
	bh=iyDkKzw5PCFpAHssHBkMEXtCBINMj1iBYOJzuDpiloY=;
	h=To:Subject:From:Message-Id:Date; b=QdkPDcC+zbrxmoDKaxOA+TTjxnfour599uMGgvtLFcKIdvq9yr3BijQe0+rRJYDP9YO4lyLaFWF8VpY4+XlTm0IJUB1Uh0FHgi0lzXGfz9MNzbZfMmMGISUHpGapq5P8QvjSZoPejorlE9225Nw9CsD5R+FgkGAHGLuM5nJVqkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOVyZnsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOVyZnsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C13C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761027593;
	bh=iyDkKzw5PCFpAHssHBkMEXtCBINMj1iBYOJzuDpiloY=;
	h=To:Subject:From:Date:From;
	b=DOVyZnswiFDaLx9OizO68KVpJGcGsX2r9RH4Dpm16MJrBzUEl+jEevYCYAYlyTvaK
	 pLC7PkBac+z3jdLqiBwny3Q0OTgkbX/W9ne+BAJk71KVHPI32ZThi9QZ2/UUL2AZim
	 nH10QwewQGvEi2L569z0+BmgmPZQceoS1I54wC5p++r3zjBvLjQSR+iNaelTNdlSP7
	 rSXLs9qIucnR+SYRXYscyU3dX/CWN+pCwrESt1JGlfAMjJ7fUISP8jqSSrpxECwPii
	 Ej+/ph0VO1Zb1DF3PcfsxpGF5UtAgVhm/tPYqMOyxoY3wJ0MXn+LTrUk/Kqg8Cr8kz
	 2x7Y4JQynlkaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9313FCCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102759358.18790.5211718454211799507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea6d274ec1a2db871f1ad1acc13d75c91a95a3952fce2c16dc11ab8b0c6d7f4
Date: Tue, 21 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761027593
