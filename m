Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DC539FCC8
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785401434; cv=none; b=PjA6EPNmPoCmYJHm0GMf8CFFoRsdVT7M0gfp7EcklcxqIX6TqzhaKTXrVQWnTJF9JSGrev+pNfNbDVMlYiRoqEsTW5piy4UY5XCL3AFof0ZVX++0YjG1pXyY2TJCyahyp3ppX5aElbf57aDDu2DAT0BqiDQQPwCptziUPk53bbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785401434; c=relaxed/simple;
	bh=9EEUeNNaPY4MTMAAmXokZXvwP39rfAGTExzgGPUbFB8=;
	h=To:Subject:From:Message-Id:Date; b=K855ersKI2KiqYzlCxG44OdGn+C937j0FlkR1dWRmczMf6SQ3To8zQVuJTIKyjwBZjJ1Axc6bnLsqhl2/t7V3FQ8X2eeYStRvELFukrs0Y2n4b+SQ/gY1gQbvugvu7bi8fJ91sI1ks78ZWg4giTRLhd60rg0QzoYGs8ziG0wkQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTwArVeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTwArVeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C905CC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785401433;
	bh=9EEUeNNaPY4MTMAAmXokZXvwP39rfAGTExzgGPUbFB8=;
	h=To:Subject:From:Date:From;
	b=BTwArVeWSb2ytZqTE4bDltBg+LJ3bU2Zf0nZpLifFSNDjoKcUG4+e7cgpbdfFQzRJ
	 Jup370Rzv/ITvz+AcDmKVCxyjSTlh06a3fooRy/kAhAY+CYMPJmt3X4YbXEVyPNUSX
	 d4366N08izly3CSSbIYLcPAKyWotlNaUf+5oqY9CRyewdCXSb5dBmm2PXlsN2R8y1R
	 m4IvXSVcN8sirKV932KSH4CZ2XRebzgwzMoqamYjzmjYKUU5xgetoD2dNNbS5mgPjK
	 D7q2XsUk8asItlCB2fl3+MB0/x8pUDrN5fya7WlU8Phu6686gokfMXdKpN4w4a2zT7
	 vhWfb3nkCD0WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BC3C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540143367.15099.15391228571499202021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25988421a7ed98e33fcb79dfd0751f84514fa34a64e89b1ae6b0f07f85ddaddc
Date: Thu, 30 Jul 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785401433
