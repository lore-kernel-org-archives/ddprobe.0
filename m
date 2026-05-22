Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177553EA66
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779432154; cv=none; b=Kmfeqm/I5vapwCIm6S6vehg2YB5WZEktRY8l71MtJ4orXvmPRuZKJGU5pjr+dGKX1w0sYDkTqFEBUKROmZ63O5APJ23iQb/6Yjk3IXo2uliYd2O/esxLLPNu8arXXXyGF8SSClEuG+omRJra0IUkKYULr483EioGM8vyoz5eONs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779432154; c=relaxed/simple;
	bh=O9VXdzXGzhrxol2IuSOssWimKGJwWflOuHiup438aro=;
	h=To:Subject:From:Message-Id:Date; b=iLFdrCIyhCtwAUCWh5HDWfUHraYH0ki5MJiRv8c2gnIDwAV2/q4ZeAD4cFSLEE/iZ0Xm3iz4bTFxZ6oAkFzNa2vKqO0aVX60td5EMkRgwgn/GkcaaTlUnS/p5ylIskkKqjisIUTl41EVj9LGMq0onyUFKC1Lu5+opOY/XjwCiFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0KfdX7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0KfdX7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1092C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779432153;
	bh=O9VXdzXGzhrxol2IuSOssWimKGJwWflOuHiup438aro=;
	h=To:Subject:From:Date:From;
	b=S0KfdX7CPSJS/dcFAQ+ALdA/rob0RnO+zhuoGlmwW3KkhUC1KEEukfqVtThh0KSsI
	 dhqA2BudpYIkbk0qO9Iv+Xb0y2jYTY8axq70vglyR3mZlaKl/BsBEezc68N2Z7WLgW
	 FTavSHnnYYbD/a8GpMjEJWJgi8X44BXlHu5vyqaPveIbwzAWkci5x6NxKGuyLu0Vqw
	 HpDKF+XYAHKY7BMUuZOUGUcmfAIp2mM2FiWA88/6ZfOuJJiU4LCBYNKh8oV0xiW2OR
	 St/adylAaEFdF04ajbvpNOU3aYACFNeToUSqw40OhwZ8uXhV7feNqphHT5du2PWEd6
	 kHOUVBAt5nklw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81D5CD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943215368.6013.7620265242871793981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1817e3754c2e0f79be63928a04a4a69690c1a70e2031423cbefab1174b547f0c
Date: Fri, 22 May 2026 06:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779432153
