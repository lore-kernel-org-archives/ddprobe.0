Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5079436126
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718923223; cv=none; b=qJAd8wPMR0hbhha4vw1UhVTkYS53Wyrw/iUr5tEl81qPYKINfKWLo8DuX5FGDhecmp9tv7fkTZJl36UoGa8RJT3nZpfqu2aC8ax4Hz17B5nTgOlcw4zcmCye4yUeiEeM0ACHp/ewkV+QbhdC8W+7OhASMbOC19Kh+PZUmaqt3nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718923223; c=relaxed/simple;
	bh=/MxK/Rx3IamUTkwNX+Gg3T9vQcQuhTh+syQ89XsB18M=;
	h=To:Subject:From:Message-Id:Date; b=IWWfphVSNmoNE2v+9jhtqQ7MeI69Zgopo1rJwkqvh+ClLiazRbsVyBcr+IwUav4ngbaCmXqXDJ1qy+UVhHhVHkzptM1rloAOex6J3RSQuiKsRopLOIcikoNGdQvz4b8s4AwMRGRQzaIi7s8tH0o655RcFklyaYd6+ijp8kq3gQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLqkLW4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLqkLW4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D944CC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718923222;
	bh=/MxK/Rx3IamUTkwNX+Gg3T9vQcQuhTh+syQ89XsB18M=;
	h=To:Subject:From:Date:From;
	b=hLqkLW4T76oGfMjeNr5ekA7ZqMa1SVkDJ+Et5CrM6mNoke0n6gknder6+2Vf3A+0z
	 zrKLQmXuKWCXQKKfKKW/KUOOwArEg3WO83Sqnap2iFeBRhiHfM6LxMbXhTq0O4Swvs
	 MnjJTHWE0EhW8uPZHar9FfGiFtqXJk2so0GTaFdjFt5AD9EXM5D3w/AY4dyG8+jaBo
	 cmNh/nYXwpKOz0tUP3bRPQB8G36QI7Ka4W9n0mhw7vSuXbTC8R4REEGHssU4690d2Y
	 bd2e+58wnw/Zn3icTkNN0aPRNTP8BkTjHmyBFDRG52cJnam8/sF58EBqHi99b816U6
	 rnTdAdFDPrjoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4907C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892322279.924.2862420914729844795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46243710b3b0ce08ce94bba320bfaa132d83cf44fbdddbfbbd5007963e0f1e8f
Date: Thu, 20 Jun 2024 22:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718923222
