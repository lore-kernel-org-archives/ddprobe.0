Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CE140DFA0
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777763854; cv=none; b=JHyv0yHVD7/UmH4OXC8XIktJ9uMOpVwHYRKK58Brb2P8vvI50Js4aAwGcdI1MOqzkX+2cUAcEMIg9LNwGEKaCsz7z25jxIxk+/FBmhrFguiOryDGzjnUCs0htcumjL/EkEAiyePeEgitjds1lO8y8P6TBoxkDjH0Aka3gtjWpxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777763854; c=relaxed/simple;
	bh=jAD+cUowav0zlmyM0wahjjnvxaDccg/aiO4Kq6sJD6k=;
	h=To:Subject:From:Message-Id:Date; b=lNU1ac4p5bBMiMmisqWhHlfmOPQGdTBSfSKyNwxfYKUzZWRsP9OsFHzo7LdJNiv2GEeyRj62uuOOAFxA/P1ejr6Rxff2FcweO1cMI3qb0IlYxfYpfqqMZepa0fscfAUQYaiEPOPtth22ORJSpO8wxwtUeEOubgUXhTlBMIAIgVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRc5M3F9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRc5M3F9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27EFC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777763853;
	bh=jAD+cUowav0zlmyM0wahjjnvxaDccg/aiO4Kq6sJD6k=;
	h=To:Subject:From:Date:From;
	b=lRc5M3F9z3dJHr5O8brl4zeQKIYa5M5CWyJBBfsS6/30bSnMWCrWQhuuJJob+9w8H
	 1rIA42M+OAWuz5hnTO3N97JPNYFM83/M9vUhv0R39o4iZgfZZIGG2eO2k4kc9mXING
	 dHMQlo9ZNbI++LD4rbAGmH4x2J6fYsQfGeVQoR+6mpuPK+pA6M0l8kKjmLUhOgNAIX
	 LF+DYBquPGBakPOzUIKYaE9JwPRSIZGxh3qdQ7sQAS5lBJNz/9PezHIFW1gZSH3lSx
	 ujaT3yqmloYRmNgueRa1dKjnUqdXHeXgKhzCc+SC7h3m7OFZ+C7eP2fDJ0eDLoIj9s
	 aWSrKE9jbNlfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5E9CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776385368.3392.9330242511621723291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889240fc4a0b94fd574e0e9acf7eb4fc964fd35b8d8732e13003e97ef6a6baff
Date: Sat, 02 May 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777763853
