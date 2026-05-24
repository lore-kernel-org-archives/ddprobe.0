Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E76B487BE
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779591154; cv=none; b=ejEPR9JhpGCUdPBpt2lXUoGHnDqHcUcEWZHfPYax2Dg6/gfAQzNkbw8gT7tK7sAJeoPfkMdBeADsB9VhS3hEeEaNQVfoOQSMbhSzrYwinMTe4U2EUAk4063Ae/QE4p5QAgzPqQkk/HlRoit+UnInackVITCau8zfQd7c1A1O/TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779591154; c=relaxed/simple;
	bh=tEeGWufaitKf11Y0uMkzzFcYnkoVwf7iSaQHohLGyUc=;
	h=To:Subject:From:Message-Id:Date; b=d2qfgdnlfKRaVjdU55sk2vVVhE4M4bx4ckV6eTViQ8i9iLtVwqw8Ljusk9mgiKXBrld/zieN/GWKBXKaEVOq0KZF0eX638o+eV79V3lZrOJ7XBPgsJGMq4NXO+O7o2hhqarYnTywFewLqdmfx4yrN/s+bp5EAgd4oebCg9cWpqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucK/kv6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucK/kv6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6102C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779591153;
	bh=tEeGWufaitKf11Y0uMkzzFcYnkoVwf7iSaQHohLGyUc=;
	h=To:Subject:From:Date:From;
	b=ucK/kv6+6horB3bZIEVf5Wtvzbv+7oS0YA56CTN7gl8WZguP7FGuq87kPa/r3Upur
	 S2ihJxNzEcn1TRBImpd65yDBG9EMK3g3NaqUCoDAr27R6h25/0s91t5htTmtQYNlYM
	 cpG+motNZoVfm/07KH1IrV8dxoXvNiQI2NXV0mNB9M34fyDYoz1mBgo2AePUHq5+Te
	 +XCcXi0J+GIEaQ/RP13L74taArg+8vTDKLaSdy8c9MZwruMa0TmSOZ7KPoIOU887io
	 y3FKgm9G5mA9KMWa9+fFoTyP3eSajmuVNUsGg7ZPwAdmcRwXNzlMMo6+bl8lW9MNlO
	 t6LIsewcZCj9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD2CCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959115368.9753.13618059714969873050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1848e99fcccfcc823dc208dc07d3e99506a453d3d231bfdff56384d64be727da
Date: Sun, 24 May 2026 02:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779591153
