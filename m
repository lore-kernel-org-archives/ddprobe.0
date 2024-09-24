Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA4413342F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727187354; cv=none; b=FGFR7RzRZw59Yq1aerSn5IP8vNt/W6x3CBDPo9KTgtBILkkgVWeYMMzEmQmlA3Wm+7mApt65uawg8GywkfAWE9KW/Y96WGbkcPLnoXsjcAhb/W5ixdifE3UzSlMHeBdYadoaT+kRKwilW004pe7jcFgeQCxMmUSlzWTd0KZQLts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727187354; c=relaxed/simple;
	bh=NaZJp4f8OGFyd7avdfNhfKjf4NxGnhKHsKUbARJvQhI=;
	h=To:Subject:From:Message-Id:Date; b=eIvqq7+M5trZ4VbxsX5bvbn1ljiz/gp5Cb7wfbubrvim38Cgz553SeSxDOLU9+lr3ZgoN7WTGJHNLTOIQ/q6KrikfjlKxprfA3+EWaqGMoERTOX7160B0p9/TGqZqmbn32ac/Vz9BFoEpNjYXMQI5HU8mXbHcP8EdmCGB3ga4Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkDtAR9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkDtAR9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A591AC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727187353;
	bh=NaZJp4f8OGFyd7avdfNhfKjf4NxGnhKHsKUbARJvQhI=;
	h=To:Subject:From:Date:From;
	b=DkDtAR9Hv/MHZbn7VX6iKk8adyMubIDmEJJEtq4FVIH/QG6oGo+L5A1igvifgZvRM
	 z6ZU+rckWnfrHsxhEE3LaJe2iCnhtsC9qoWM0ZWq/V7pQvTICITzzUXk0isigPnJ2d
	 iubHgj3a/P2fxn9Iga9rfsPTZnRwMrAtT16W5gu51KEwKIZZIM9RMIxKOGUVQmAXz3
	 1XH9NMcgoFCsF8hTEzNvMmJp/YuWlXyeSySAPSNgVDeGNPv0KYeVeuwtJeu9SSdOeA
	 cynhamOPuKrFfGy3JGlftphGtOavvJaR8fR2YrsVEWKMBU7EnQtby4Y6ITr9yPrZOX
	 Jow5vlsOy3L/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9348ECF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172718735359.19251.12509515878204296653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52ed0e3f61d7fd9918c50e7437f79fa765c79621b4091ea6915ef6b3a6f203e
Date: Tue, 24 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727187353
