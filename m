Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2255321E094
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755932394; cv=none; b=o69Ff59pucyCoKULX/RJ8T5rpFeohlEZLbEqxNg8Hl6cSyIrmfwfUbsK0KSL1mVYqw3TDsmyQiG7v/y/XqOGcTwwohWK+koKXq8MGoAyUhEY6FeDeBdGd4Pf07iQfUb35OQ6ntDVXdeHh/ceZ5rQpHnM3LkMw4MaY+ciyvczRT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755932394; c=relaxed/simple;
	bh=0hALvS1TSUmUWf2XesaxWYgzvKXTs7AOPUDFp4H74vE=;
	h=To:Subject:From:Message-Id:Date; b=My6LX9VXX6ZNgZcxmwjJbbvifU3ykEns+V4DQ7KPt+j+JyAU0+kaqMrTeJpF02EkdFTKEh6jqEKswc/Z9IzuCFG7FdnpT9dbS4On1YqKjmCKT/x2AHIOpLsSimOHXhgzwxEY6SHuwqVZqdN1xXozR9RWpEAd01cKoLIIJRJPlYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfarLOLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfarLOLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755932393;
	bh=0hALvS1TSUmUWf2XesaxWYgzvKXTs7AOPUDFp4H74vE=;
	h=To:Subject:From:Date:From;
	b=TfarLOLdwTqf3ecCaWupW1mda5utOr+wWptZrjSl706ebOXwv5OEo2woQmm37ytpf
	 0AVeRvZCGFhQfeZYJZnmSeLS1SwuJFpzSsJCrUm17lpuEGQGdAHqUqxHMoHAxE5UCr
	 g0mB2YdD8jRrdpJlda1xw4HempWT9yYH2wpz1O6i1gfDPteaFLtaF0C2di1cpSn++p
	 5TitiP/p07YO4uCx7WdNqLE/iCi6Xi15t3rqZa39Adp+4um+45kQ+Dhj8rdF8pcmgn
	 t8bNwf7xBHijwXAIudkzUKeUiAE+VZvmpnhZh8TU2UntR4soqoIkr9QVEQNsqejdoB
	 nZ0igfAbl+W3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936F0CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593239357.23445.9167022388420770881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bbe6e79642ebeed3a7a5052ecfa78a9ac2af1b8af1e091d3c79f15cb931765a
Date: Sat, 23 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755932393
