Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3626922A1D4
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783443514; cv=none; b=kzJdr0zQEYHmNkS260ao8FFaK1xYOdgnyDwDbE9vpBp27g5e58IvDVQf/X17diyWqcnw95U6FNt/+tHp4p/W/OJaIpqz07iLD4Fgzc3b3WRe1JM4ojXY8uVF/C+55sJrCh3U+Mo0Ts9m2wi2TH3zsxjqNeEE9EgA02stXDtXroc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783443514; c=relaxed/simple;
	bh=t1CCha0MEyHEyVDPGr9L/Y1FEhsL5HETJvi1LmYiiqw=;
	h=To:Subject:From:Message-Id:Date; b=DM9TjpTWEFFd6h0/Qar4SgzKTOyi9RxS/BjKPRRenALYJWtdYtlcE2wnx/DODiQddYRAUCh10ORhrzWKklKksr11rjYWfmbk4fsRjbgYLq91Yk6xLRkqUq+0TIUjPzp+U4/QHKRlhj6gQVI5TcNyDPCL6Hvzm2o3pSlEH9PZqB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aa0BYJjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aa0BYJjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB62BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783443513;
	bh=t1CCha0MEyHEyVDPGr9L/Y1FEhsL5HETJvi1LmYiiqw=;
	h=To:Subject:From:Date:From;
	b=aa0BYJjOUfWnoEvB93dx+wxMuDHPol76CK4v5pgvtSqF6oownG5H2CwSQTGn0OI8f
	 z9CtZi4cFY4MezivnfdQa9giwI+VK2cQ1ZM69ML0dIyXkr78XbKiGi9Y+hnXwhZV3O
	 KkW8ZIjGynhR5Cm0+VR79DbhNXn1mEDZAgJ4C41+Njlg8MFd9nYE6lDBUkM5yAkX6B
	 oGGwxN2hvbP53aD6SObLHZZpLGYED4xlue30Wo589cwHnG4YFiFjml6s4+DwdcNiwz
	 SnmKk3QBmzGhF95M36nx1hN4euF62lHbYa9nuREFkxWAWtBq6xdCEuzy+GBSOYIOjp
	 DNAnvE6nIF46w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99DBC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344351368.10516.14590993105648534474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aebe776491e3e757d73079080e0830367e3afadd6cd6a2d32b9d0b23b02b783
Date: Tue, 07 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783443513
