Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96E73E928B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786194034; cv=none; b=IqCPQ0izSGvY3ZneoRCbSL5oMYrMpBZ58OKauZZ+Y7lKtdgs3bRKJYo+OjKk4LsRM7HKzhomWWwEeD6Q7skdPLTg0BsRdUzXhvwJUKcJX8pz7EBZna0BXju8XcHUG0A/gnCOWmrTLDQHL768misliJ+SROaoPiOlCgtAl3fUrCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786194034; c=relaxed/simple;
	bh=xRej+hleUsXUb+5ZjKvhzvQvz7IhmjnIRt8klOBg/zY=;
	h=To:Subject:From:Message-Id:Date; b=lzq0dfHylAY6vV7y/yjP8T7qWix+vNfOmk+1HZ559MrZwBkYXXo+rffqCkPTMYUsa2Xucj17JaoTaaGb5QN/grmD1cG86iMBvy1J0p3iXHJAubnmnTT4G9iYAKaM7qyKUinpNZIOXCaG8KCLaGkN9OHzP7HehPTVXLj7khqurLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvDsXA5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvDsXA5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C6EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786194033;
	bh=xRej+hleUsXUb+5ZjKvhzvQvz7IhmjnIRt8klOBg/zY=;
	h=To:Subject:From:Date:From;
	b=YvDsXA5zC7nAVQUh9Lz/0Gl45Yo+GSGlqow+M2iFQZ5gyBRrJ5DfciamRQN3OMdaI
	 WrF/yEEvjxeoW9/T4LxTNcNkphAs5m4GBnlgSCxHYh4+e6i+rstlrfDtFHCwf9tHpM
	 NcTZwW0fIUgPkPV7PvrAJQfe+gD09MQmUB3ZsjpignjB5A39rBoXvO5BDsLELrLJfG
	 oKPnmBj+V78FBfjvj5tUjEVcniAxEabsJgwO24UEe4PlAI4/RK6MgSBvzie9BDU/C7
	 MQL+/ap84LgnitsS4icMKJOLLnxRAFt0XKED449BX+GGIGBNI6foHsFRkC+1WZRNhs
	 iaEBerCGQNDTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE412C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619403370.28635.1398871092137836104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d99e2ce54afb8a95e38407782abac2906dcc4ebbdb61c98650ed8d5d898326
Date: Sat, 08 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786194033
