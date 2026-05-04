Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394E931E83A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777922254; cv=none; b=oEOKynXL6iJdXNK4Co5UnUdlS2Le3fRWrze82raxT75mfuN+KKGOgtC/XKYUhyHpzEIv6+ryHJJZU1I0SMau2PbptgNbowGwo77aHaqHt4UymXS6fDn7ygSDB9cQbPTWWocaNfIcHKcjFp7oHmJSl8f66mkR3mQYvROBEupE1IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777922254; c=relaxed/simple;
	bh=3VAXNxuKH7pz9ibiTN7y/VZZp3mbKvDWinMVIzJDTU0=;
	h=To:Subject:From:Message-Id:Date; b=dP7iCwiYI7K9Boc4Apxx/XGYLjZXYEUDYTdF3kz62cPrGUZxk4hDbfxFS7CJtGvpejQExzH51OoczVex6FCZfMlddyMg5VArkaXBbHW9NiFN8DNHi552pErjo4WDljemaRzDifFBnAkTuDUEZRi+Q2MwUA7yCssl/IWIgKp7Bx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLtxlHw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLtxlHw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBA3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777922253;
	bh=3VAXNxuKH7pz9ibiTN7y/VZZp3mbKvDWinMVIzJDTU0=;
	h=To:Subject:From:Date:From;
	b=hLtxlHw5QFekp1xhjrP9JoGG2YmXFc+rIX9XPyhurt5+2qSifQ/l/U4YSlI2NtQFS
	 FVrfHHkckrAwvfPF+QMDv3J4lU7FWbGIIweH79m5LMbxW5gc6eBkHClg4unFNhunKp
	 t0koLxK+j2m8P9LtfwKWYGzDmB3+yRUji032iZOQDufi/gHKI6BhlL1/T5kYyWtRaU
	 +8GfowgxbuCsVICsK2rwutQqc1gDTqNES9B+ckUFdYcebZHtmYVT5bDVivrL7Umsqj
	 4cuVlTwxaKH034a4ME/5D5fIdLzCKheXO2OJSzfuVBwqKfEi/o1c8Tlb89WACZ1f6g
	 Uy+nozo1ju6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC39FFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792225368.30108.5829770627170400593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e7d3b3c029f42b3aa0dcb94cf3ec16cdc5c483f5e87cfc2e9afecb0c8b4aa5
Date: Mon, 04 May 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777922253
