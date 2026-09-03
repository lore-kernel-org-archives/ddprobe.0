Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2F2393DF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788427834; cv=none; b=qCY6LNsELgaIZ3H5Lbg4L5cX9+48B91BgMpA8LOeAwlJY3BVzWq2L7DLK4U93gJsmuHj1oKOi4hshbdqST2dbzL/dNJaOz1oovx9mKv66pOCWNh+bGNyxOxzoTjl+QuZkvSuVBIa+mKGaVbCm4xXnPnkEbFN6qfpCpZbx5BlUnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788427834; c=relaxed/simple;
	bh=yfmvFklP9dgR7fk8ny4OCNasr+01F53IUUadx0L7RYk=;
	h=To:Subject:From:Message-Id:Date; b=BnuMGMhnGuJvrdVbc0UDgWkK+9ncyhSUCxUCldBRF2HTtZQzi4cFm4ES7MesSX1aWPcWpYyq7O0u6RTJyH4x7rVD0kvM9L5yUVtfj+Q3y2rwrfOjCd3aIgEkOvpUTstlqSPENUnsN1S6afjCP7u1aUrGb9jldy/iY4LbpENzq7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FInUgdJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FInUgdJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BAFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788427833;
	bh=yfmvFklP9dgR7fk8ny4OCNasr+01F53IUUadx0L7RYk=;
	h=To:Subject:From:Date:From;
	b=FInUgdJacNSrxW7aYjerSVgkAWVaBUWmljOEpsh77URTqLDgX9TtIXp5GMThCCT3m
	 Pioh5lhskOShA5JoJyFi2SuwsDL34bnxcby97IsowSElqtGsxc663qgqZH4w3NH+4K
	 8leLlz1lu4VqVIHrtdbH5g88hb5D+RwQtXHDmDpR/s7PQvozjcZItdECsdrpwXT6qk
	 PJRYLmnJ2y3KimT227rkRHDLvhDImdJkkr4Lhr/arvJa8Pf+yGlpc3O8xa4CF224CH
	 FmoqnmdvEMAwIQQYWwy+uDMe9lik3EqRHeAdKTgVDVWAqX5EiaufBT4zivyPWbrCJ+
	 HWt2OvAcRLpsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27F6C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842783372.24310.12827877002160282474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b60404d7ec03932fa4ab337880ad46b421f9edfa1059f233c76a3f98a1fab7b
Date: Thu, 03 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788427833
