Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9EC385516
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778143056; cv=none; b=XwbLgW9W2JEAJTWkBVa/MiFRkrml2qihc9ijWrYYKrQb/4vMCb4Cw1c4PDj63jqXH5Y1yhtSXyGj5G7gLebf0H57CByFQEIUo1Pn2MliRN93w/VTQ6D72maaI2vU6o3kHz0cVf6rm4RETFrEeelX2C2+YNSCbPeWWhVTkgpbK0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778143056; c=relaxed/simple;
	bh=+K5vxUfRiqmlLI+T+XYZCfgdvxu2z3edaXaUtvSVOK0=;
	h=To:Subject:From:Message-Id:Date; b=XzAJV6eOpait3i+0ShD9PiwBXlwZN7XvQliQe2iTS1+/foGY3pKtTCElWf/z08uAIX7gIm2azANE8UM47yd6o2EnAMe+g/pAT61m+rYK0u5rp/vKi9qlTxGA0jGyAZLI9HgO8T8f1ueNWBNdENmAzFlzz7NUm/k37kw+vf2tKDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKakb85s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKakb85s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C035BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778143053;
	bh=+K5vxUfRiqmlLI+T+XYZCfgdvxu2z3edaXaUtvSVOK0=;
	h=To:Subject:From:Date:From;
	b=nKakb85swxz65f2tLOHwOSZsSUBxyTd+zOjuQE78eDEuLplalqZeZ8WTb0tSNU/rb
	 e5Qa0NmE0evYiZbswrGVGACqACdn1xuWflzTj8/5ulHZIeFEO4HMEuaBXlT5GLgVkH
	 kH3RjYYD0jQDmLIVylsfMtIJ37FieRbjpEinl+5kzX83Rym8q9zHnlnePEG8cFJIuK
	 Wl2qABwRse+IqkUtW3Zx2h1GGNkl+HS5c6f4fGzFbsiZXXhcrBzotRu07lT8rKRO4k
	 A1EzCur+51y4qGWgzvSkE46xQPbcFEag2n2COnLFBA8ubfHy91UcAn4OaTU1cO8bHM
	 gK7Fz9tLF+g9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD64CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814305368.23016.14615987850345878216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c76469f7d388a56fab71bd6d6cf56736f91e88f883ad7ea1a8727350c62319
Date: Thu, 07 May 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778143053
