Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5AF223DE5
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787263234; cv=none; b=AKPjPUc1gICTwo9cmYtl3aaTDHr84TORzH4iTGESUITm891c2Hzzar/tZvjeqrTHL+gjbSwUxSHstbxfCGbtpfatQqHvdLpwYfhYUmeuGKKPd7/tFkf7m2ba89kDuWp0kgdXd8Eh4wX/ZzL6eDfuxrT6nlE4cIn/SZAveJFhjrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787263234; c=relaxed/simple;
	bh=SMPvilhGQh8PRo9Z3FLonzsPMTEq8Om8tCAH8E3BBdQ=;
	h=To:Subject:From:Message-Id:Date; b=OZMyIdKjy/l+oebkFpv680UNbzVpVlezbutkX/4pi0K4g+zXbaFkc5p1pvX8sezkIttc/3p9I4EprFGmQKfOEXhYx10EldSnntETdCDeom5acF1ITGOwsCIrL7rUEs9JHsAOoYCr9t8tra/ET5ozykkno4rzhD/xo1lc2U0jfkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eppzfSB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eppzfSB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD49C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787263233;
	bh=SMPvilhGQh8PRo9Z3FLonzsPMTEq8Om8tCAH8E3BBdQ=;
	h=To:Subject:From:Date:From;
	b=eppzfSB/iK9M0PFD+QqXNt+MaM48GJ+/67kkLkSHBWLnNoEH4kI0a0bl+GZJIZCRR
	 JR0KtTyeK/2qYlRLbxU+Yn6oT2VEfoCX4fiOIl8N0yLI6Tx43dl3P5jDBzukQPnxyp
	 BxDVotRSY6zWjMy0gS56h3HMdlw9KkrXDeRZhb2+V96RyO62BBPErG2BQhkAqK7eNh
	 aVad9GwKsWAsE04Vu9NI8HIeTMEWEtiCultFhYON9PUWQSmUzW7/gO4RvKNMjtj3r+
	 RkPRd9Lj6k1LyFmw09o6uFIORFhGUGC7YI+9HtGKKO57bpEM8kGUFdNvoCDgm4NMs+
	 Q71RuCD5KZnEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50D2C5DF8C
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726323373.2794.7151863199068514741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57112ee5941a8c99650d87e9d1fddcd03ff0e2479d2550604ab94a58d06c015b
Date: Thu, 20 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787263233
