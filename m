Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1AA682499
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723061154; cv=none; b=X/a8uQOGH2fUf9jL+hdz1qc0onT7mHOGG/xxLCGaOc46ZP490MS9u813N3LUCbrHpoINNPsbnLUupgjP0rHO1KCOAyt5hnBw5VCJcDKsvv0f3dWqa+T0km3UmmZGHRAlGxmLHmYuPfduGkZTEJk+sXMkfV5M9g2XqiiBRQKQjv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723061154; c=relaxed/simple;
	bh=ga4t6muf9QWZFQvGHzzyf89NitgK4EY4P6qhiNVX1Q8=;
	h=To:Subject:From:Message-Id:Date; b=kPe/+1C3pSoPmXTECPJRYkCKDNAAp/ANSUIB64SVR39sV6bOukTIRaq+OyMjSg3SfCQhYj6MG+l/IKGqZsRUzt85IgNDtxNzxCufNIUmqOIMQooRRuXch3ENy9RPuTZMaLdv+Mm2zjuQXcqIrODpR7VW4MUGQIpnfIUhNHdYMuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mjk/y1Or; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mjk/y1Or"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF444C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723061153;
	bh=ga4t6muf9QWZFQvGHzzyf89NitgK4EY4P6qhiNVX1Q8=;
	h=To:Subject:From:Date:From;
	b=Mjk/y1OrFaYULfzu6vMpvRI5+cCt2vly8SfuqNmL1dNb4pkCF/xSqKAmoh+DY/oVy
	 ql1dDk1VeM0PaZZo4cBd7cE7QXzHGEuJgmoJM3bO2ZZysvtkXN3xcBNOweLVeHI6K2
	 5k6ursucbrnbu4cOuKvqZUtji+hWT0n99ajmkYq0zpCotcjHKlryxT5wvchl2t5nZ0
	 dfBVVmjc10fQrssGCxHp16lOiRoJvLwzWBJMBMOzeEs88ckBAscPxQLLnTz92JtnnH
	 HjV9a04hAkmdZ5v/y8csYGAbZLvy8ei5b+Im72r4C0PLLhTHS2Sp7Pa0Gdhay0CjI0
	 21zi/Tlz/IFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C53C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306115359.14342.6180551716757536628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad389a30428a4bdb6dedbcbb2115db2cc67e8410dd53858e8471948e52fd079
Date: Wed, 07 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723061153
