Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF9EBE6F
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721465754; cv=none; b=hK4QqSoSyqUhQ+wnwdBURaVvhU8kCGCMN81NC2e+eJQwbPn1MbFvgQLwnJTWFHZpUQ4Cn8dvvDqQpgpmpAHgjhSe5WoB050c5Rp4B9uoaqxEml0aR6e1y1W8FmhLJRJQHiwz9uPNVNp2x1MkoIt/QgtHUdLTwLgtYZF+TtVYTuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721465754; c=relaxed/simple;
	bh=5+5PXRbnM8br5D4yDfHiAoeDJeq4d/T1QCisWpDn1Ks=;
	h=To:Subject:From:Message-Id:Date; b=cv6BWzun2760cTmW5qloAXXOxrLWorxsmf+3iVCBiishB1E0bSXjGH8ibC6Sr4/2ce0q5pp+QSGtkuKyqbY7AyY/HNgWYLnyABQjw44qo/mXzAY/8YCqtMnqn7Vu0qEK4bgKi2/+DZ5+4ZpqL7+jKDtBjlgklQ5dUL4uxrOd53I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNYolvii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNYolvii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1658C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721465753;
	bh=5+5PXRbnM8br5D4yDfHiAoeDJeq4d/T1QCisWpDn1Ks=;
	h=To:Subject:From:Date:From;
	b=CNYolvii7MmIzqhEps/o36R80Cm9y5p2ui+h9voCKtDW3OoWy9NcIG9LEe0cXBjqJ
	 29QiJz0RELnwmmJGViXUyGGwPhDKwvBYTdM3pvd0bJSzShsM14xXE/2RR2gH7oOk28
	 JJTVCGuHbqo0/ZzSIxBcUdPWLeRUa7bmK2ge7XYUEj1v0m3Z68N2DIENqzj0SAyIbC
	 pvg0A+PoXucnLmQgdSf4wcgL8llcbql0khpAtR8GdKYJQGtLkcGlUQIpUHBvNqZaQL
	 4fjimg6aEcPercgxdOOfhLM1mjJekpH6fNOMPlK4OM0+gJZ72zPfvVQzWwsFlfkygj
	 8wPfySr7wQHeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B598C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172146575360.32481.8287898334044344109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffd0cd45c832f8a3a97c1172e721c739367abfd59bd070f8520bfab48c520aa
Date: Sat, 20 Jul 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721465753
