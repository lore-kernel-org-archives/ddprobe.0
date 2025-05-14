Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7A99478
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747183794; cv=none; b=KcCHPMnJj/4Nf01ZaoRp9TJ8e9SG5Y1AfjQaFo4lBI9yoSqYUI+lB8ilsFa46EVb97gviJrq59GKVak82C0FOjWCc13zy2mKpo2WvhmwFFgPWcNbkJFNGpJ/FC//QY6Vw+ULtJW4+ki78fZ5fof+fjvNB57vKSleQfnRMyJGWbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747183794; c=relaxed/simple;
	bh=z3fukjmT0/pLNnsDKObdOYPuY5X8J11UinYBRy/T8D0=;
	h=To:Subject:From:Message-Id:Date; b=gVje97nNlqx0AVaJARnKmErLy7DAyIi0q+8wGFC7qRvI+eFImqr+CE0KI/JtdVrCLHBWpp0RujM4hBpuMtdiXll7pcX/SC17EviSnXzLZUY9tnKG3bkEYaRCKZTslu9P8obhNvSWtA8mdzgJIxqEoxa8J6v7waVkJ9ABqdP1rvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRRu3oiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRRu3oiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4943C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747183793;
	bh=z3fukjmT0/pLNnsDKObdOYPuY5X8J11UinYBRy/T8D0=;
	h=To:Subject:From:Date:From;
	b=jRRu3oiOuaENnfdPZg+gwm78gIN93CfWR3Aaqy16Q9Hkn8FooTgRYan9WmS7ivTPK
	 DozFBA3xN0AuGm8xV9AqNotcVEHekEsphrAGMKwKsSOUalpvj+81l7epNdIPMWYjFL
	 byyOshKD0rfjbMCOP6xND0JY16Itep2D2Pkdtv1do89sgf30MIWpiDINW8L5BzQew7
	 zTD4LcC2hTMI8bmB4sGp7vy/YUYS4xd2EjMYl9HAaJhs2QbAWodQUiwexVfg+y9B1G
	 xt7qt64ntnHxiFVuZEufYKpRIhOAKpgDo0LNZtGCkIO9x58Es2fWv9tSQomIDW25xP
	 gbH9DQtQKM/ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E3C3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718379357.6399.352173711123112605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96cb2900c7ccfc2b572323197c35f33d46ddae755bf7fef72d92aabe2e772d6e
Date: Wed, 14 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747183793
