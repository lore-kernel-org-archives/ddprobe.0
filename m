Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EC3364021
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785415834; cv=none; b=d6XlivPNkVUzxgLIj8ePoHjc819O1TyDq5hdk7ZLR9/nWznwyXgg2uHIzJP7FjWFaj/5qlY/47m7Mo2mN6bUpZb2wTVPgyBBUQUd+CY+vZIm4V7V9uPuzKaxU9azsJU6Wz+QBTD3EAlvGumnCf50lBRICc8rQW/KCeZnx5aG6Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785415834; c=relaxed/simple;
	bh=BZSG8H+nA8bUkCuFskugBaJQJP7jDUtI/sGLaXyde2Q=;
	h=To:Subject:From:Message-Id:Date; b=Mh4LBe8Z1IM7jI+UN39Jwwia9QtJWsWCaBsxxIkHp35WSGG1ASZQBC/PQNesbSIW5kOEywbermwIwOkM6Pl1Sa+dtuV2Mptv2q4jMJEjlI/yL9l4FY1NN4yBg+VmIgL0FAsX6f6BaWwje2byaZP+jUvSI7Lx01tWG16XiGuYy4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehgg2+I4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehgg2+I4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACDAC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785415833;
	bh=BZSG8H+nA8bUkCuFskugBaJQJP7jDUtI/sGLaXyde2Q=;
	h=To:Subject:From:Date:From;
	b=ehgg2+I41jJYM7Wg3Ec4pOfZKBa57piiw3uDCXHifcn73L+MyqaiMzrNP2GJ2ePDV
	 swlL+I+V0VBXEtVxvpA/C6nsckkF6RWxJBMzIZfKENM++OlsEKNRGxsTRVeysq76/f
	 GzV9ex1WuSoZp9wHBDaRs4N2asMvgjX6piJ52sbgjrCqqICzgsHduMncaMpIPEObo9
	 8Px+80eDhWUyKD5qmLwX/rdFJhnW2RGVxZc4W7y97p9sXbeQTgBZnSuztaNmaDxSXO
	 je4J3ifZRxYolhMJSXbrLHeyWykwB1U06q2YOFfNzrbif3wkMwKd6UDmmkpp7NfoES
	 8/d6A1PE6VlRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9616C55165
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541583368.17375.13309514164382469819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24116ef8646083f945bb41954a574cc28a52a14f53bcf18c79b4c2ee723eefe4
Date: Thu, 30 Jul 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785415833
