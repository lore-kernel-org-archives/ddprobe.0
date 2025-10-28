Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270BE351FA0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761675594; cv=none; b=Zu9yZ/vL4OYcE9qD8fiYOmBz4It0OvvLFHXDoiZ2jcJ1lonnX9gKNpQzAC0C2iXGFS0962UFP7ihaD39O05W6fyAOrCaMKEuUNOqx95tL/EpnvC+VdlIkcyMugxgkjOHMwlm6Ap2SGK8VR2dm9i+Q+iuI1cgM9jbTBrgXbamDgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761675594; c=relaxed/simple;
	bh=QvBLdLnfbjENp+LB7vIdJrDxMLzHh6n2jzuJnYTX4io=;
	h=To:Subject:From:Message-Id:Date; b=MclFSFhLF+q7c9thUps8/CnBqwMNKjWk6HLe0owg4ItSBlQCZ2efxHb7jUL+5HjbCI9gg6epHhXJPTvPs5+njzigOw58m0Sc9xAV4CVh2kjX6XWteZhy5HE1Npa8WM60Pavzls4cUOUz2JSZn4scXsLCy1/tYrVLQ/sEuJedsmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIEQXToZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIEQXToZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29C7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761675593;
	bh=QvBLdLnfbjENp+LB7vIdJrDxMLzHh6n2jzuJnYTX4io=;
	h=To:Subject:From:Date:From;
	b=HIEQXToZFdv2p3U7H9J8eMA7UTSZrx545jnisYHXBRQnehAzTbT7VoclT3LALNcXO
	 9mn6gG0zRtuTZ5zaLXDE7n+3BfweeEQ6GutPopKQxuT8fY8mvww+1A0TuPlCMPlT6t
	 JlVenRX8vIBdnT6H0oOdlDwcGL98/qFc9F2WDpLaGRNP9N3tc0FGy1fRYk9KVpt2dM
	 6bcmq6MHJHp1xXclguDfg7DdFh2/G2IP4grnSJ6cTrGR3ToQ5Aj3FAH37d12lhTIyS
	 FnmMTavASIP69TOV6NUGTaqag2luGpBRaJUPthnb/Q+Xm5qX/XIZ3B442eCTJIZM1Q
	 qBrDsKxyCJMCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9198ACCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167559358.18553.642084895207844643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160330396e9a908ab049655d1ce9488ae88f2b1d9449ece884303eaf8318c860
Date: Tue, 28 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761675593
