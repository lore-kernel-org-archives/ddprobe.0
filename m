Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0C020DD48
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756627794; cv=none; b=eg4MIiRWO3h0+FvAG3af4n2lNoh4QJoImeqn9vhmMDBjw2Y1D4U2I1jhMqa/foC4Oqwjyh8OUdTBU/lHyjnysG9OIsBAUyWpOBGhfe5Z/ZcB82wyIwHxoTNIzvaSwKhBIlI71wJXPKTp9Em0Z2Ze5rqCcj/ALEaPFBedGLYE+Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756627794; c=relaxed/simple;
	bh=cKl63fFDbGWyfrowbLgVu/YeavBcNx31lQsAQcRITiQ=;
	h=To:Subject:From:Message-Id:Date; b=MY4cHLyNYubm+T5n6Ij3inHxQlzHn6TXSavYqwCwevk0W4PkDyjLqpPytCqCR8prduntrYtxakbKiy3fUAINDoRnmDaUzhbEsajMRbmpXvIJ1lnts7U58b9KV934y1Tui+kSlZKOzYdGGjzR2stlxD0IOeonf9TiTLX2tos3bvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvfPgfMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvfPgfMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C79C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756627793;
	bh=cKl63fFDbGWyfrowbLgVu/YeavBcNx31lQsAQcRITiQ=;
	h=To:Subject:From:Date:From;
	b=fvfPgfMT3xPbunBIt3tyjLF4N0HzYuV5VYSPVGoWQtauuPu41zAS3mR2LWeXxemo3
	 7r7H30Euljat35ngz6fZDPKrs07It3Rf5QgsL8334VymC+JD1iMJ/zx1A9m1uDEAfD
	 AqghAT5/r3o284VpCkUsz7ktOq+oLaHDOak8meDQIM1RcNM81Fh1vfTd/hBBvsbuTv
	 mTh8yIi+KEHHpzYupqcdIe65ntgAKO7YjdOAzI9MiJeKlT22cz5QeN0omQNXuyUyQg
	 Pl1SB3pJHJZCiz/ShlAlEROr4iXS6LunBo67ru4Ipp1SCT5alO1605UoIUQao4GjUe
	 0QM4fxhJrSdeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B77CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662779360.13323.12454642546460699433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d078047fb94499141632485f9730ac3b0f0b2a47676e75842f78b3765cf71dc
Date: Sun, 31 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756627793
