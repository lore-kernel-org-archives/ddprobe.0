Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C77380FD0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781548594; cv=none; b=rFq/PNHF+sAsWiJnBtVg9dIDppMFVaWx+NcK6Vx7ZK6iJnKnFFkG5l5t8RWXmbvFJzEgHW9lE00EXO15nuI01gicevvTr6FqzABmgOmdedCz7WrQrAN4DdewNVJtEzPSDfFZj2/xIl/PG46Qa5GYpaMhiZnP0jJDfD/hL/w7weQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781548594; c=relaxed/simple;
	bh=34Z0/sDswUFHOhl+csp9APmMAfzuQS66//8zUwBOp+Q=;
	h=To:Subject:From:Message-Id:Date; b=cHJKDgDDl/DJ/xt49n8uL7/oS2bpF20fYqmF/iwo5lIJiEDmm1cn1wxrgGp0C3fmY3MKlJqn7NkmF8Av7y1eV3fUD60TKC5zzttv4EMi/wRcboQeRwN0DpPfbX3EGtqyXYhVQ751B6Fo2mA61ac36SszWfTyj3+dI1gJvpbctrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ij9WppO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ij9WppO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96E8C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781548593;
	bh=34Z0/sDswUFHOhl+csp9APmMAfzuQS66//8zUwBOp+Q=;
	h=To:Subject:From:Date:From;
	b=Ij9WppO3Fnon2S0LEeyaq2JhdZXKF3JR4PXPGYSQ1e0AYOohxcZUlGZhVQfYE3RI5
	 zmwBJGyN/MXTkKxTlxO6GDMxyuHg56vG5wMO4ylIHxMwq4JUY3jCXmriHiix/P+kBl
	 mXLkgDRNiZTcAQz/a6LtfAjNrWGRrB2UK0xmjQk3Vvz86GvpYLKhsK7XEf/FbNFW7Q
	 x1ZGnD2tSYNJ4yYYu8Ybz+vcfCR9QcPiYKF4iweAhsxslECDIdvpO58OozzJTbL6/3
	 3Zmw/iEEGd0ziIXW+/0b5qmbBCasJLrf9Hle7pqbIUvMO5Id1Cfqfg5WKbJ4ErxVSY
	 PIzWZtUWXCwkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1727CD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154859371.3865.7328906878266501431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e897f16f339157c3d48a2c7e7762080d045ba055f1ed10d88c02c76f9641af31
Date: Mon, 15 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781548593
