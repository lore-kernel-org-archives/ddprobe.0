Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4B8158218
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750879194; cv=none; b=cRVlxvzJlq0l53gW9OsfYctGKWTAtx6XwuNWogWS08yd5LkieO6nt2fe3O3W0zPPP7/+Aw8aTGQJoR5wBiIkubyCLwtmH/rVMotkH/4/N18tmF6HGv1x6qR2AN5kBNwWQUZhU6XNogsabhCCVJ/IKRZ4V8hej8oSpo/u/xS/he0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750879194; c=relaxed/simple;
	bh=N+q+XV9+UlcgMesEqXnHerawRmptF5ZBRCzp7FcPBV8=;
	h=To:Subject:From:Message-Id:Date; b=uImilCtCGpg9NC3LFTuLp7Gvz35stk+yHZLfwD1b1TwuJ7ZQiiRy3W3QhaEP2yaR74jbm7HA00hBkxD4gPkJq6+n2olC+PaU6PS3ffh42ItFWkqSZhw1xviu3wb+Cx4bMZfKUMxjXt9xDcyxnEfGvYeCguAfu3q+HXA1FBiRJ70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYJFb9rn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYJFb9rn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7ABC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750879193;
	bh=N+q+XV9+UlcgMesEqXnHerawRmptF5ZBRCzp7FcPBV8=;
	h=To:Subject:From:Date:From;
	b=aYJFb9rnVZCTRMi/gD/3N5K/ndvrpswc/1Ogbu+zqh+5oGLkvw8V8QX5WLlyLNn+k
	 G83JPLWSlfmH1/IWUa1Oy+rcLL5q8kimG6PCiL5cQnQJ4VJLb1wmVV+TeiZrYOhZik
	 ILS2CDwemfdNOYvO7hseKZfRRqKOp4cncj7VCYahvciPlWtK/dGmD7UKmXepCLxghO
	 /yRiG0VUEtUDIXp38DK1/0InERzV96lLYdnPzZOyZaiAdp9kgRN5up56jb+KXojmmW
	 s1XdP0pPXZyIUIvi7xjFC9D3E/emJhRExQeipRc3kQK0SEKXs+N6xnQ2AntF3iMRgR
	 3uByICvsJSktw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903AAC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087919358.14607.6466970605049536507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc200e881845cdd298b8598f9af26509d8391deb198c19c6a0e7209bf2790498
Date: Wed, 25 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750879193
