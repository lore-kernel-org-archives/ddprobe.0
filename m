Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABA421D581
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746745794; cv=none; b=Dsb/oN8xx+s4ne7Wt2R7pKitqWkcEnrqnqhgraTaTpd4T8o/ayncTbwEtCOv1w2XTleGZiNjnS51M9x8r44CARQUEcTRaOr00vQbmmyPK1yY1GmpA7WgEklLPfS/iJfNRIL6SKy2YnSN8S6WS6fhYqP3TvTGR6RbHsn1eriG0Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746745794; c=relaxed/simple;
	bh=MCST3peD0VexD6HZ1YPx0YpVIVoykl5FaBPwwU8p6VE=;
	h=To:Subject:From:Message-Id:Date; b=VCZQ1X8SGkjdQ2ZRRMJE9aiHMkz+ryyoehF+19h2Gk79oMDrgUDpn7Kco0zC4SyZbmT6N8PzWMk3wpiIqa2v1bnU0hWTMJBUHemgX9qa/BrE30Ed/a8NiBkdR6Q2JG+tL/HIUiDFAxYCajGtCBEck81bXD41Q6yjQoKXpiOv5d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6WLzrGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6WLzrGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A66C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746745793;
	bh=MCST3peD0VexD6HZ1YPx0YpVIVoykl5FaBPwwU8p6VE=;
	h=To:Subject:From:Date:From;
	b=j6WLzrGGe9I+ezut6l3xtIBjg0vn+55+f4sjopmv5f64Uup7Qbe9px5DXZOh2I/ZT
	 kyRvqG7CLru9iKeb45Dpc9EFlYqMCzKJPMMP/MLW6qAxp/cFKiTGejjYxeRt07GyNT
	 6tgHyfPOwyM6kTzyvNkuV1Ro/9ni3lv8mDHpdd37I6fhdflcuS35wYC+ZRtyqA+fq3
	 j2eOWP0gCpbFOzNrtEwxannLBoH31q8FOexKUeYmrtFwonPmbkMckshA+/mZeJW2h+
	 JGKQrj1k0dWZFpadcv9eR0kCG3RAXoIyzB9dggo6E7fS26pnn/wkwIvEBcDTv9tWdb
	 R1bC6cil27XEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A48C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674579357.18271.3149846063515505573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ffab2e13f98efdc3473188d944d4638abaf961a72cac2c9b3e4b1d23029ce2
Date: Thu, 08 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746745793
