Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D5020C003
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 08:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741766935; cv=none; b=Nqg1D0ostKRAIb7L42pGyW3IdE4RM3PbhxVOF7oFfTKYZtmQREK1/tJWPCfZDFKdGsW2RGy7yO44fXnrocsFXb3aVzCSC85W7SAC2OKoJnqYY13YOwzGMXzEUV0tuMpQVO7ihyyGHcWoSFNyhyYf85BKHSz41q6/dAxGFuWcXlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741766935; c=relaxed/simple;
	bh=j1IPN4PqymwFX22Ts/UA4m8rW/XeMrgW+z+g2IX+81Y=;
	h=To:Subject:From:Message-Id:Date; b=B3iwTNW/K6juDZFdSCzoimdtDyz2Tm8GL+43TRIJ420cBG5dBX4q3CSy3ghNSyHS/hWS7Wz6b4bHgo/o0pDQ6qBDhpWwinTrTVZjqEqbJGOs7hOZEIAo1clVqrMT+MfxyFZwzNIqOzBjzdKoFiR2K7VY73icW4TIONH7k8kkJxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcLmFiBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcLmFiBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0C1C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741766933;
	bh=j1IPN4PqymwFX22Ts/UA4m8rW/XeMrgW+z+g2IX+81Y=;
	h=To:Subject:From:Date:From;
	b=QcLmFiBKlSDQ1zKzjUAScjHLO6DipbA+chDIhYmlUgzRyYFh1bf7/0BdNDmgZ8C+K
	 9FwxZqLKT6+BssDItE9VT2AhupkaQP4lKtV4rYyrjslljacri3sn3ZYBZrbAIf4U29
	 z8utuFg/MnRU5nWkMAQ/DUjF8Ar+UmnMYTxQC5j4uUoCU/B9FRpmV+FB27dhs2ebHl
	 jWonBlxBg70J2Cl74i+0T/dkzWNde7OgXY2LYkkyUuF/mhycFb2Su8DOboVLak5fUC
	 4tCJS1uGlce9gEopcyzXzXbWZwpnVhb5CRKDq5/ALB5dLppBIm0jTrnZDNOFRBp9jU
	 62nLzWVltV4DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF7C28B2E
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 08:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174176693368.23340.12681113547891293766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8335d826665c9c5070dbcd12890767104aeac03eef40caaaff069a8cb5b714b
Date: Wed, 12 Mar 2025 08:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741766933
