Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4C736B92D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792162834; cv=none; b=jdmkEM2zp6i8YQjcYIk8a+x6SaR6NONnWoZ39cTrS5VjKMoGKSuqixqiIKsqVBhFc6vlXJjxe2PnYU/zy4CkrskFh2INGnt9ezwA2Dj/ZINk29hYQovz6uGzvakIPJKWg02AJiR15M12T8R3ZJ9VEagrtmBY+e24yvq3ACYHqmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792162834; c=relaxed/simple;
	bh=72yD5vGpwLyzgSTaVfVO93ta/QjeBX4KGhEX3vMEsXg=;
	h=To:Subject:From:Message-Id:Date; b=akS44Kb5AhwgW/bctWu//feC64g0evLtrMi9T3sByfwUc2yNpxXzCKuvRVMRYhU2BDg5CiTcWOymuHEklKwkZrolYt6uxf8sMhW/xboTD7FmmJH1F9ToyhJpGDPoe87MvqX6oYLqOoFLdV4Q+uRCstWBAQXTB71k43NCrpUAQ88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUlF8L2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUlF8L2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D654BC2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792162833;
	bh=72yD5vGpwLyzgSTaVfVO93ta/QjeBX4KGhEX3vMEsXg=;
	h=To:Subject:From:Date:From;
	b=ZUlF8L2i4K0yV9YvuW5+rbd4hxwHiiLGERBHyJgoo49cEdAxuPGR6mKCUc+IJZ/0A
	 vt8lAsjHrAM6OubLI0p78sq0//Ish2UhDVUhj6XSFvPd1EjCLa3GDTgJOMwU++IA2x
	 gkMl8aMdWN2NnCoslgMm9FXHyfonJELFv3LdqVpTtzeXfmalcubrJzCWHiPVwZmJ4r
	 E6XK4jrACDR9Jrqnk9jRiBlL+pwhX5FFp93TgSA2MczzokKUQu7EdJeOvxXNdxUmZH
	 mayQkFf8wjaGCgKSVGqFZUbR4+Ub6+gh083sRsqbsYIqdVq5GZTbLZtZ5GVL7en1CR
	 RgigQObYENSaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAF4CCA46C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216283370.27588.14249962402596553501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1809326b6bfa595c34ffa712ad9659f8e3519b2a9574a49606e907bcfd0fd3fc
Date: Fri, 16 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792162833
