Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFD8481229
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782910114; cv=none; b=gTl1OVSl4E/Dicxu1xxJQOjQe7ZVaRU3mVOiEI1PHzO+NY4pz45NDRpQaPmVN9ZzntNEHV/mGMqmZGsgQWLusknNJjchHkk1ZKYeEb7jGFfQJcNHXfJAwd6CA162L6nZ8ZaUTiGI9sDiuJT+V140jyKTBRHucLr6Fjlr9WBW6x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782910114; c=relaxed/simple;
	bh=hVGgPcYJdU6wwUj8wc7P+ZWCsQ0IGYRr19jArPYx9XI=;
	h=To:Subject:From:Message-Id:Date; b=pGCihxmP/Bs6e0PuwCj1m8drBV5rHikcmMNn4NHB6zpfsN07cUaUCsVONQjJuJS/K/9tFLe+TdKX77OuQvJ7+ymBZzWPn4io2c9Hp4IGrWpmYddCHr2MR8eCgF79gfVKu9Alzas1f4Rl+MXrlGHZxhtatLVoi7miah8nIbKRIg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HD5bUHAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HD5bUHAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2309C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782910113;
	bh=hVGgPcYJdU6wwUj8wc7P+ZWCsQ0IGYRr19jArPYx9XI=;
	h=To:Subject:From:Date:From;
	b=HD5bUHAgUohcnRVImdWC01nR8r6MXJdxL/7x3X9nudWX0F/S9iKztzxiQ0tbcFvri
	 sGU2Y0WHnLLxHIzeILhkgqvfUEqSRBPuxbB1zgaHfeZhBzCQeGy4RztYwPh8SbQEDi
	 beK9kR3PEp4PdIs0GYQ0ie6iJwYLI9o4MSaa0rVlXo21fYIgQ/ZDXNoisgWbj0uJUN
	 APSK2LlfzBHdJxtC9KAiUbw6WiIj0pEGWnL4U9MhU57eh8Riu7e9VKQ0hgiBrAF2js
	 AuasLPiF2UpIY5mZDkApP0kWncDSCq3jM2+8fxTMW286kpN3Lg+oCsqfuEbV9yLgfJ
	 Q8Jns0PWOO+ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D53C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291011368.1500.2419957527388361403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7214b523f1c226a43deea0032c2634f9bcf52b06ef29b7aebf46ef542b8ac4
Date: Wed, 01 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782910113
