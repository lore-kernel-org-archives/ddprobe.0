Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B9A25A642
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737896754; cv=none; b=sIDO3yu9or7+4CoCJEJySAI4xfEWpz3rEp3/GL7/lg/Cy5U5UC7l04FopJwCETYa8eSZmCvpPih++CavH3SsopdXaPxm4Z778kxtTjIF2pFZGYfJ1FCixWaIXGz0xBFIQQMNu61sII93JSUP3pbjQRpA5iWL7jcJ7nG0/SPcmSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737896754; c=relaxed/simple;
	bh=496GkOA3K+3bVxmHx52SzFmSGLQaLGWf/ces0wDQWk4=;
	h=To:Subject:From:Message-Id:Date; b=ejqUboeJYEhyeTLokgepJuRX5Iz/c5eVlJoYVDZBxpGhuLBnFl+44YswsxlCetUXBi5psShRTm+NWaXbsi94hbi+NLYD6Q7icEGO4djVPDLrAatBB/sgl0TjbfO33PLG68/pHrDVSoW8E2nqF4VU2LXSYiQZ6G4Lc8qWeG2Y4Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nR9MSGvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nR9MSGvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1110C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737896753;
	bh=496GkOA3K+3bVxmHx52SzFmSGLQaLGWf/ces0wDQWk4=;
	h=To:Subject:From:Date:From;
	b=nR9MSGvXdSgvxxqdDTIW6WNzZ5jD0YkIu/WqgcStOP9pv7QgZ1CjYzsv5ESN26foW
	 o1v+6Oz8LkOPnyuvERImGa1UtxI4m8mM0l6T/XpxjRn3dQTUiEvoNBiXOaZp8gSFJC
	 Fu4WTMG2kY37Ku/ml58ujc5d/raAQbejC8Pg5R9Ux24TAqk19ibt2OOI2E2paH0AVC
	 tYiTbAWHQe3KrYjInTYbw5W/0vH1QexfWcAaWG8pZQNw0yENZc5RcD/wnANAk4bkUQ
	 3cuGuGplGV9iCyMk6RNhvordmWS1HipV9Xu+Kv22KdrBg1svXApydhPyJPYLNlaCQf
	 OtXsvtSgX1vdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC9C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789675357.16714.16773862336266442693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee15a98918dd973ddda1ca0d71cbade90a877492a14cd0751b518b07d31c828e
Date: Sun, 26 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737896753
