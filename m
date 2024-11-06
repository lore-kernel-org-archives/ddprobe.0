Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87FE1E1049
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730897753; cv=none; b=EV4rgoa9Oo2f5aY1DN1gtyOkshdYSMNpNkVQ+eN+MWGybxz440Quf3D9BTGiWsCR1yw9MvR/5oOULLjT7Wh2nPVdTMekFbRUY9Lruuc3pXaI0t25IUZ7dUeRQaW5g829C7ew0oqJibgDC8aICTAsNxOrZ7S4SteOG0R46tEKWI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730897753; c=relaxed/simple;
	bh=Q3bshA4LogSSR3O6XsYGTzmIe9gqUdHMnVh/TTkX+XA=;
	h=To:Subject:From:Message-Id:Date; b=dz86q0UEraohJcHxieYxv9Tba8QpXx0nKxYsPQsdjIQh2L7cWTK8Tk10FhodvRp2rjsyQxV7e06YBZzZPSgwM391uRlfSHWroiO8vfb8oBzjaPY+wUOnuerdDAYOEFHZq1YGbbOIyIPw+0Yr5tPmpx/pdC/USwrBb+j1vflFu80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n69LUi1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n69LUi1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB7C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730897753;
	bh=Q3bshA4LogSSR3O6XsYGTzmIe9gqUdHMnVh/TTkX+XA=;
	h=To:Subject:From:Date:From;
	b=n69LUi1WLWuQFrfpBR3qTGX90st5iQfIEFq7lJTntVk9+K3PTAq5DCpEGanW4YFN0
	 OZ3Lg50eavY0Qcz2kolgDPDnycRokpzU3wD/Cz0ZSdue3JkBPgv/eo6YWn8vVRu+dT
	 +wZTXbXNekuiOSPoWChzadsYOtdyzQjobg3zqIZgCkajW4IlSaZXbKrYH9FGhU2rgg
	 Ctg6OhTTUarfnlpJMXiQupGr5lfCrD5drkrZItiP458GlYzDAtLHQyvQqjJ0YiHdMv
	 gCMUMuPRzvgQ244oRBG/nCDk1Nh4Dc0j6iW3TdbwQ/DxOGbn4kMDmd/XvL/qgP88+1
	 L4L09wyrQbg8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128BD44D54
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173089775358.4972.17396444239506619023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f997d35bfeaec68ccafeb124da5e6b7fee733f43e7e878dbe25b8fdab0309a8
Date: Wed, 06 Nov 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730897753
