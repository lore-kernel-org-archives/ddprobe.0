Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633162744F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784512114; cv=none; b=hgJH7srjc9cf2NTC7E0YYJ1C5HO2ZdYyNJtHEAgENshtDwtj4DYhRZg0duHWGNVcmP/O0//PX/gXpf0NCQH/+mblGKHw32fUxo86PFoQnIjF/Zum5I+S1HhtOH2pl098X8tvRx4MEiTAqTnQbCzYs8bIWxD7DCjoyLZPQ5ElipQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784512114; c=relaxed/simple;
	bh=VMiWV1wLuViVSsVVWMzhcxkQHmF4+TNEwaCF5Nh/NQU=;
	h=To:Subject:From:Message-Id:Date; b=U3la8tXwvidGBvgzhekTygqFkYMPKv+cViVGnSbo/xTreXnqw/RyFdfnsKfpVaNNsXR7T1e7gArhSILPxqFOzLI0R7JLV3bE0lo0ct+K5bAEwmoL0jCtW4zTk3BLgpkO3xOBBd+fAr9HIbTAMuJO4XHiUuIn9t5C0wYSzG10+fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7h4K/5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7h4K/5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E274CC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784512113;
	bh=VMiWV1wLuViVSsVVWMzhcxkQHmF4+TNEwaCF5Nh/NQU=;
	h=To:Subject:From:Date:From;
	b=m7h4K/5Yx/7i12TPngeYJ+mPlmCS7ohqfvN+Q9VYWEp9+vQhplYc8gNhaJeYEfbPQ
	 60dbKnnyUlB6s65N+vcAVutHVmE0a4kW753MbqxXFl74SeKUZeWs+zJbmNcbg6MdBm
	 skfbl1G4q7BkFtFvW/Gb8AgaCW+8C1F9EGVAkwo+uVk1fHIIAhcBnuDrMKfrcSCNiU
	 tjZJwPmqGcZyMoVB/oQ2z5K/doOG+fR/nveVEvESoeL9wR03xJMG4BqbR4xskjGBAC
	 IYYz4MEBOvOR9RkjZw4TZLAy9OxceTDa1UjvU0cGgobacr0bSGxLAUhENngnUTCP2A
	 ewBl9mPFd7y0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E1CC4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451211370.4599.9863621685127997649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae705d5e06f2b936648927795e8c61cd5d2d6efa8eb573869e379b8f332ffd9
Date: Mon, 20 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784512113
