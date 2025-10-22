Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2314A1FF7B3
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761107394; cv=none; b=Tr6KQvG4Mor/2E6vIL4ij4yJjE0ZEXXoDxdv/5aEZdezLKleIYQ/aQBv14iMNvWk5Lrvk2mh23dzSJHCT67l2Ui2g3fNidvD2kx8Wk5u7MWKyZ7pS9fL+pFKgUDGL4kgTuQ1YOcegAJHIoTxzNWbHFcPmyv7MFvayeIG9I0K848=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761107394; c=relaxed/simple;
	bh=cCDrslcGm3+mRkt18s8ECxoZAMMJmEafO6gJPBRuuTU=;
	h=To:Subject:From:Message-Id:Date; b=Lz7eeIjR6EFZVqEJIgKwlOyRQuqsyZ7QGzQUXs/L+u8kr5TK4d/ENT8557F4ahSD1GZcELbvUUq30IY3O1Fza2tipAOTkBfxK0u+G0EyDqnC7QPuEBX/17IaaXzJm8Q6SExhDr1oDtyVwq7xbaPN3s+B0zjn6IaIdzWtIrIlLzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/4I2/Da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/4I2/Da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06EBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761107393;
	bh=cCDrslcGm3+mRkt18s8ECxoZAMMJmEafO6gJPBRuuTU=;
	h=To:Subject:From:Date:From;
	b=R/4I2/DaxiuzkDLR9fcOox8gol0caIq5P9WFAh2rzDU9Zi4NGyc3v5ABKapPgRWJT
	 /AidJl+7uJ/OVXvx/ER9v0JI0r/TfKwjQDUtDQI3sMGhtvDOY5oS72QJG2Xb0ULX81
	 ODgcLwwEHwCHDAsQf0g6Ts5ndNvst4TW2WtZw2AuZ1n0L+LhQ3V8JfSR7e/yUAGENJ
	 4uf+o6aXlMRrQyoIX00Ob3GoZbGb8veFWBv60rkodumKGi96U9j2wp3Z4ConOIrESv
	 F35y+EsgY7U1rf3FDmL0YO1I8X9IhP7Ck2TzvbkW9MSsWIsf71xjZ47yPpWqq6D0cU
	 CUTs+TNtGt+Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD42CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110739358.31595.824044447359367903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ccd33a26490d3dae5d89cc1c42c1e5e080091f08e585c491a64801b17c5587
Date: Wed, 22 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761107393
