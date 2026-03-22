Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025D9363098
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774211094; cv=none; b=X6oVs95qYBUS+UK3m/IUNsd2AvKQXQ2Fw4Gb+y/bSSVRnwGsIyzlq67X6rzpIMDQTLDgdpob1bqESHVxVNJhlnUkLYadjnUQpmXzN7ZhZzYYHPL1EuXb2Y+eBKpvnoThz9s0GXeb9Wef+0od1cqvI3UJpXVIs5D7jn0onuf0fGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774211094; c=relaxed/simple;
	bh=Ze+/JgwESMGWxmRn13+nyfqYo/QzhgNTyen4RJGbknU=;
	h=To:Subject:From:Message-Id:Date; b=goEyyNcHhzqgbOFKWl7PPYgvPWjc0pHj1SaFklVTOMFF3NwVHZo8ujqyk66rzjgoENgCh9UxWZrUplo1UDPpvZ72+K3Lh0yzsh22+NQZc9Kpd5jdtHkBtM2SithQ0Xvmbd9zVEhKTp1XadxHbo/hfFzWLj1XfC6Joc1HO2LrNAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOPjds5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOPjds5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A7C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774211093;
	bh=Ze+/JgwESMGWxmRn13+nyfqYo/QzhgNTyen4RJGbknU=;
	h=To:Subject:From:Date:From;
	b=vOPjds5J9CDMZkr3wrrAaM1Pxtncee2SetvKdrF2gcfhFtPrjwH3aAQVCxI2ddHqk
	 J8IDmVfsUzszcmPEGIEdmtIm7E3nykEObFEPreTlob9BdWWsARvgAuKj9X+A50NwXY
	 V3PpwKcB2Fz96ZV3j9x5NDn7pgeDrqiWdzydNg+uEo58+O3x5CCgCIRP58EYeN2oXt
	 oGrBjBW2U1QAFmIhUWrijNMDFy9ETssf4XF33NhFiQY1cClyWk33rpvZjRGjZYouo6
	 zGkHkdv9wqojHv+80sm3H+IEn8A6lDxQ7iJ8TljiN3rnJBlKcJNwI/ZHQBNcEMh+Nh
	 uzIJqEEkAZtkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DFED58CA1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421109358.23880.6966609053003807647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b042ad38dfe8c99986586c4c3a6bfd94caf7c93e5e6b5ac67308a318d83478b3
Date: Sun, 22 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774211093
