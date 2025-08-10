Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193001DE4C4
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754849994; cv=none; b=E2lk4bKB28i1TdOuw38FxwpGe5v3+aUmiC5+Xsufi+y4Acv4zBvM0aspFcoVuYIRP0+GguXfHTO+VxHnWFRlzCHq5ncSz/hFU05+h47UynYIh/G2ITWqnPeO+8nvCG5Jie4c7mVGrTCNVi/M6ZFsnQ6Uc9xb7NBbvHQ6TppGVdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754849994; c=relaxed/simple;
	bh=zdDzi3xy9979Mt1prI6CP565b0oiGbAeqJgmVCeplgU=;
	h=To:Subject:From:Message-Id:Date; b=cvcJxmX8YIJp21/5d0ZV1JTIxA3Uc8G+SOG6Dhe6h/nMnPZe7l+rC/FtDU++ssSuqYAf4NW1MpoUB5IP+Izvj+N1VPUQ85EDCwlJEH9XJx7DN63OGw2FfdKpHdA/+9tSwAmNyqPxXl0JLOJVa4wuWe+n89gaVW7SZ06i9xbhe8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sy6HjjhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sy6HjjhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA1FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754849993;
	bh=zdDzi3xy9979Mt1prI6CP565b0oiGbAeqJgmVCeplgU=;
	h=To:Subject:From:Date:From;
	b=Sy6HjjhLdZEQArPEDeRlyZpQ6ezNoCbebyxF4AcRs+XCGOknuMhnHP3t3cm3EWe3L
	 0VJ73SVc9u+82jvA6o1/3mA86TJyiX4jp6dp4ENlEpRpHcFz7KYfme+HF6a6S6VXo0
	 xQEz5j4ZWXeHbY4KFw3nIz4PPFtdiXGllAS3J+y7PD1zFDlthzJCrxvmOw60jTqsc1
	 PVaDTYhA1TS7nzw0jleUS99+9PYjCCX450AVV5TY5iPAl7e4Qt5PxI9ITWI3sD5lNZ
	 2SBj5Nv0AyZ114pcPNPdsFT+giQhRa0r08Z4CIN3sGn3YgpXkovGQTjTwSaNNqIG/K
	 9vq7hgTHBD7Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD5C87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484999357.13261.3092877743154705825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9e02e7583ce806c6411abadcbfbdd925ff342d586992efef198c61608e40ec
Date: Sun, 10 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754849993
