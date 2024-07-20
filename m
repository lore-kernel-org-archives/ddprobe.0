Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A184A23
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721480754; cv=none; b=QNaGhaXHknQntBUOWmd2oPTHEMdu592oKy7bF1Y6O7gTEZDuxjDiMFUc7X9OKAc99buv/wVwzoHXKwxAxPikDqE/PYcDw7Xy1MYuSnD4FTnzxRR+TQYncbX/m1gqzLHv4/cEkxPpMk9f85WwfbAI8Q2SfhMo7mkOeEmPVxkFFcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721480754; c=relaxed/simple;
	bh=ufyr4e2omSL9ME3mCBgu4EdV+2M8Np0sSu+kqMThqSo=;
	h=To:Subject:From:Message-Id:Date; b=G7B23ZUojHBHMCxOnWsBRsSksm/RAQn8yKI2hdFg+gg5MaWq52rp0cXTLuC6Q/zZFOOWQGEiFFjg3HxKdr0LyvpVHdjODA6xKIx+boP2EcO9DxRnpxXR5sVDvUNL5eH+TPpnuUdLT9eOXn3MqfSPPFbxoeGwbuigCyj4qgUTme0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZ0IyIGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZ0IyIGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78FCC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721480753;
	bh=ufyr4e2omSL9ME3mCBgu4EdV+2M8Np0sSu+kqMThqSo=;
	h=To:Subject:From:Date:From;
	b=GZ0IyIGRba04sIGXnY1xA3BQCXAf3hZfqb4DV53sRnm2+nW1yPL3/hn/V18nfJ7s0
	 DAkDg4LSqIZRijCdN02ziydoLnIi2EylurDhExAHUK9ZKjmK0yByEzrf5rdlC9Mdvl
	 JXT+8HH1te6H5aJaacKhm6fi9Xz7/vX1/0xPrL+4p8fSwzKayilKVIOTSOK/t2b2Qb
	 UgkZ97EiR92g9hGxsjaUbhBx8ja5aBI5JHE0w+SQY/P+hp0sSgVh7XJCMcHfYiYZNz
	 b9knPforPIqnqN9Jo2w4bTEvxSSeXKXjpknyIqbXKbqv2Gb28JBw3QGLcMgN+pqN65
	 ynVt489RhwwhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4D9C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172148075360.5860.4619046432487388139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02eeacf8cac612b23da3805cd92f3aff42ef8a2448c2af2b0e67fc41470ff8a
Date: Sat, 20 Jul 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721480753
