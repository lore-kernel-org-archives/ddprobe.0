Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F31339382
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787922634; cv=none; b=WQrOSHKj9IwukkIxkrl+e3sL/b53/xu9eLsADkPTZcuwCDb9yqorwDUXS9+/Vk2f83SFvEu4jsVYfqszTaSzk+aU+3eIS5RF2R4B4m90z3fO8q7fBwPOLkceYVA6GxfTMmtEUso6lZzYXB6wg5ugol5/2/m2PeftjsaoLkcaPWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787922634; c=relaxed/simple;
	bh=QiSv5s16PJzOHDzQ+nlBV/KNTP2osulrUoc/kfQHR5c=;
	h=To:Subject:From:Message-Id:Date; b=Xe4YXJ+nRGPPihPrVkKC6TcE0nz3l4ie1i1gpNa2vr99tHXOSviz3uucdg65RDv0IhFDFgGn2+uAirpJoA48Ef53sEGdZ5uTE7sQqnXCtqQm7Ta0Tjf6xAlNIqJxLFoxvWwXAb7Xlwedw+E2LQtddj9miyaJx0BE6b8nL3dzdRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJos9xJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJos9xJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F60C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787922633;
	bh=QiSv5s16PJzOHDzQ+nlBV/KNTP2osulrUoc/kfQHR5c=;
	h=To:Subject:From:Date:From;
	b=vJos9xJZa3+o9iveEAqP2+GgdgfdPmXwrMg4RZXo5XEbzBAV8hf4gXTWuPGMOtMWe
	 ESM6bDgtrNwfFC9aTzAv9Uq+Bss+Xx/nbTgXhCOOLvsWMd5ctKzFj7oZjfOvCoFC53
	 dPBIZdJ2Qa4BfQdsbG2rmOeXmdg+CY3dDAkGcz6XXfJFaDtIYxHTBLWIhUsD+r/SVd
	 /K6g8rLajB+fyUyvxY/jnSQ2MFF1n64fAYrrMrIlYy3q8AMVwBvvaB0cvuzORTj+eT
	 LQUeATU0s6SAMEkL0y+1kx2WrhVqwl418fS4H+cSZzDODv9AmPlylNrrF6STmW0Ryu
	 A4ADNqsDO6lHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE252C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792263376.19472.3432925786315451108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33960d8050943d0fb8abfb4b7b84929059bebd561f9a703cfdb15e05bef25dcc
Date: Fri, 28 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787922633
