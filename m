Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C588238C29
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770546834; cv=none; b=Av9SsRwughsG7n0YurdSXNItp1yxI52EgKZ3lvzgpqIcq+D/Rk2xupM+A0anHGhOISSkVzQNNVNHeGndtRh3XLQ/70H2SPS+xDJ35PJSKe9h6TxL5V7GSu84PZJRQR2mg3mDo035/3q9jNxsOmmq5oQkTJuFVjBmFyYPBNiB2xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770546834; c=relaxed/simple;
	bh=jrnBerBy3d9BiO7hBeR1uLj1P2Y96ssSdUoBjZuDMR0=;
	h=To:Subject:From:Message-Id:Date; b=WkcV3lUZU6UzWrEFDfT6kbxanvvTn+kc9HLUr6PsEfMTWPPqoJJsJA8nvy5+DEOj2HT9jLLs01+qtTdR+L0WExIEEcJzlaaDqMkz0rCJ+rWrSQVY9r9RGwaYt1wDeP80HRGcxj2og4oKy1wFaARUsJnQ4l8lVLwTXbRWzxeahs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lB5C/J8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lB5C/J8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7092C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770546833;
	bh=jrnBerBy3d9BiO7hBeR1uLj1P2Y96ssSdUoBjZuDMR0=;
	h=To:Subject:From:Date:From;
	b=lB5C/J8zcfCNpRxLX9GV1gATEpGD29UXRMlWhvV5iRGKqde1KBuDwSLAcA6EjWdBj
	 I0LvaAsNs+SUlfeYoppLqKKDTGWa9XlxCSn9+s1QaMdVeSgIDJyjHM+V/5TWMqi66s
	 0TAeXt+7XfYR9rlEyPZlH8pcQut1zULWioFV0G1+JCkkHzOl6KCYi5OS8SquuLvFFR
	 fp5NFpDdLySxKUi9Ny+qoHnYABoh+5szxHZXYDvFhLHwnbNFoNc6kd/GyA4TeMyrwS
	 GGVN2i0Fi58BRnOOCpGfpIZdS/sWNLlkjN9dGzEW2leo8blTj0gbGRi38DwVZ/dkjh
	 QEvu1sTvN1KTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3219EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054683361.9950.7914043766833697834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 055334eb17df2be5307190b1233828d08c3d1335730f4a2162eadc3e28c0829d
Date: Sun, 08 Feb 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770546833
