Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEDF15FD01
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716837863; cv=none; b=IV6sPoyIkpQgNFW011ArUxgy86l1e9Wl+NIpXnTyvb8zsLn+I/UaN4FJfnZk7WuxmsRhEEhsV5yhzjXuqin4F4V8pYbu4bTLrqnsTnnTjpK2G7AK1M0BY6607M54IpsdVeYjoTO0JQgjB/nHi1SbEu7gZUiVbfiw3dgPNDWvOtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716837863; c=relaxed/simple;
	bh=aEaaf390/F9HAXNalvPX/IWWr24zMupg2pGbSWMYoNA=;
	h=To:Subject:From:Message-Id:Date; b=kSLhe/Q+0I65enAk4p0A+msG1fKQkosQ6zh71xyfPHfugXFfQhFa5hrjFUPA/DMH6P/faGohzWjM0BMMPdBt8ujCmTJjR3c0tgWlnq3Fiu/dj/GfzkQHDO+5ewJumdrlb10SSgbEV1GYzeQC8LvsjXCA/YpSUeQ+IwgYK/9WL4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7A+dIM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7A+dIM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD59C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716837862;
	bh=aEaaf390/F9HAXNalvPX/IWWr24zMupg2pGbSWMYoNA=;
	h=To:Subject:From:Date:From;
	b=T7A+dIM05DM6Nbg++5NbVqxqDsx2QKJbVCSkPopINpFTsJ4OfnuMfFEs3pfPEjEcy
	 iOnf7/Dfn0GlPDfXvVBjqPIsiTyYPooA+KS8akbNl+duC2FYMhyPw2O/YGisDcjz3+
	 6Ek9t8UBPaJBYN+QaoMyq9Ab5sAkD+ewK2q/Cl513HpmouOYvm2XpapyZo0/lPRuvM
	 FgwhDIZcFX7jE0KWSpY3gYiKMwSkgPr62mm65+eLUry/ldPsojpjOAAot624/tVEYz
	 HhC/OGPhEucM8og9f2ld9Lz48gbERfKrtpDyOka6LgI4H0e+/7UCeqzu/OZ8qLcg1k
	 LQyw+t8M/6bTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8810C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683786281.29959.7064709417093788099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d21b4f1d674f035add448dc45ba9274427bce0659c4d7056a9ad43bca560ac4
Date: Mon, 27 May 2024 19:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716837862
