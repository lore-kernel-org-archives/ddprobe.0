Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AE1313543
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791755434; cv=none; b=euVGYHSxE5K3Q3AE3k5iRm5A870EtAzYAa+uUcNorBm39NqIY+yMTXRPxuk531Po3LavwOc1Lut1xozVvt02jn6zFuHNFghqCDHAcO5j3oT8jtkejt0nhZVjsy1mc2N8M8yz5eIIJtg0FePhGjZSOU/FI7pO2njx+GK+dvIkn7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791755434; c=relaxed/simple;
	bh=fvq8ziwsFJV8hrMqoyEjyiTOgg/mNF5p6tOnm5vnYkg=;
	h=To:Subject:From:Message-Id:Date; b=oStvbQrKaTeQWZ65QvDhcBpE+12EB3FlVwfaVGL85EPeEe7as/fwd0ph5chhQMxn+1jieypSQFeltGT2++pG6SihlNMn1QolbsjIxoobmFQjbD3SIFYdE5V52/ok3E6Al0vpvm8ggLs0bcoEhPEVwFTBJlQeN4ShZ+rI4s6OFwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLp63muL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLp63muL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30A3C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791755433;
	bh=fvq8ziwsFJV8hrMqoyEjyiTOgg/mNF5p6tOnm5vnYkg=;
	h=To:Subject:From:Date:From;
	b=fLp63muLlVwYMrelnb+GeMGQAw+SRlIMr+ab3W1DCWq2dDZ0cN3RAfq/TQ2I/7EVT
	 cwG6VJq0hKa8o9RRIqQ9esRc5wxbGjHWcrVd82DKZy8wWF1dLCXXGm9L0KAh2tNANg
	 fHB6dcAiTar8Gl7SyaH7g8mOTtk73GC/6ZG0qFrDD2i5j/e6modpFdqKv20yCVAcs/
	 0Qg9m4vShM+pP2wTgLOSMddQo4HktQk9wTc9N7Tlz77mXfoutdRMlCxDW8QUsxleFh
	 1RgnfBYdvaxQ7mpxA84YZeDjdx6ZBW34La4DNXfj2QtC0gPyOkkXW6LXcTE4oM2zlx
	 ddYvjyCSxKG5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8AACA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175543368.17739.9269787716297825415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d31e1125913a528e307e8bf8dd695edfe45cd419018ab7e54c6e00f1d1d3412
Date: Sun, 11 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791755433
