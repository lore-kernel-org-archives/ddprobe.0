Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D047538B
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731110753; cv=none; b=UYqrQt4JpFred/JH8VBvYa248kzbgXiaIYK0wZH22tuaoGRg8wEUVBwzzONTLssxnl70MKak6z9Xn8lLaJoLYN3uxy9XgKYyp4WXn0EGoylE9jRS9WbiDn4GtQOHoFP2hkQEeqC9tXh7O17ANbgNBdQKuaB6/91DMzmnLzPgUpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731110753; c=relaxed/simple;
	bh=N5U3KrP2RK9CriDSKexe5KFRKOCdfP7nK1KG/UhWU2w=;
	h=To:Subject:From:Message-Id:Date; b=kABL60aVmC8w1I4e7e+dAMeskjLF2tDKimjCQ9t0ChobO23LqpGqC5H/P82RHyy7XJB5eohtqJFBpkDS/uIeXTswL5dRppopiLyUumxLzQMdt4GOJmovkZ5S0f2t973MhrXdSrCEHm5HRAd8kLm2WeetfSL/4VfnIHsyeGuLi3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/rbMpmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/rbMpmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6EBC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731110753;
	bh=N5U3KrP2RK9CriDSKexe5KFRKOCdfP7nK1KG/UhWU2w=;
	h=To:Subject:From:Date:From;
	b=K/rbMpmRWptm4A/K/Saq4DTh0ChY2EMUq4OyeOFG8nGgu+YzuUwVnuoaH1EuvNETK
	 OUPGHD+b9RyKO2kz6RnXpZDw5XpPmVNy2njSGoe7en3mhJ9XJLuLzsYc24k+EjAmRg
	 xoY66rKCH928IFClcVCdnMBi0P7VcNBIgn2vU2pWB7z44LxvqtX2x7W1xu3N9gTETq
	 CbA7z54WqjCxttl6Jk21pn0n7hFYrND9ahNRXyx0aXi3FcUYI1ECrW4w0Ks7uqStkt
	 lXkDOlVza32F6/05U5Pkx8G0qxstWAWPSxidKKzXtDmOhSkknBqzb1zFn/8bWaVU3B
	 4ITMIzm+4vR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B56D64076
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173111075358.11688.8893834665761789761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4a29a36d99421c612a1beb9ef280f318c7135fdc57bdb1ffe16689dd27f4c8
Date: Sat, 09 Nov 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731110753
