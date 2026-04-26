Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361A0155C82
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777244854; cv=none; b=TO5Lk0ilr/E89OE8G1BSZmD36FjFrjvt+I+f0gaGhbuIrSX20mfT9J2Jrk/qo42n6+GlUh39/0528hJpqUDs5VBzCtCRLRe8+tXml94QRE0M126GwCX6y+ojaNAHBpGXFmXCMuSFq21pbc9P3E7yBi/OjzOy4EqppSu8KqlFNWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777244854; c=relaxed/simple;
	bh=aqdgSgA6DVMi+32AaXWg6Wcw6mkYza6eLIolXwfAtAc=;
	h=To:Subject:From:Message-Id:Date; b=sTMhVPqgyKIAbf1fUi82VWJOn+klzWrZW4Xi+F/JmrB7S2z3CxQ7MUuxBIU2rYE/jBrbzFQWTXqfJYIBXmxQi8NYXZE5YFks99ZQoSJWnT3L7XI7dyEyhPcL2qBQl1EkADmkx9CEs2UIGKrdz/n6bfm9O4yZKNz4Jet5CuHQzBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvqBC8zD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvqBC8zD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B01C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777244853;
	bh=aqdgSgA6DVMi+32AaXWg6Wcw6mkYza6eLIolXwfAtAc=;
	h=To:Subject:From:Date:From;
	b=pvqBC8zD7c+r/FSWg1OnC+VIFm+V3qhEuS8RLTIamQix7ZvINIvMefiOkaSq34TWu
	 pvFzA9cwu5g7HMR6ZYmykw8FLYUR0RvPVtJZOK42L+S+PMZJgFlSws+706V5P0uTac
	 oAc1cwTiAqQbHmwcO5sYyR6aqDjl8r7jRF12slotZnxiStWLOcWpok074ex8zaP+vH
	 w7Oot4DNKA64lLI1xIojMKon/qZcJt8++IztGmxkyh62FqUdyy6UbUu7ojCntBIAOw
	 +lxufdGj+g+jXO5nz6gNcypiIQldD90koPJQ5P+teJK0KXKPo88G4Nlma7dsAWYCl3
	 bVDotp9/0qyQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF724FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724485368.22519.15982598105703766109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5003298a35481d04cd869f39a0f3f282e382908ee01b8b4f74fb0d500cdd97
Date: Sun, 26 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777244853
