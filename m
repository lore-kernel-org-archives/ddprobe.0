Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D854C81
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717293923; cv=none; b=bG84U6QOXzc0WPcHYX15QB/H8ggcQMCavBvwpEj/i/OVE490K35lMUZ2t1pscmQrcm8QPi1TE3082uGp4w0VFhAB6qMTsMeeA1lff5YwJVscf+m8cCwteAlEe6UeVrqQjuFVqG43z0lGVtDeXLvVRPGONJ2R8kHAMS3zUnieN9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717293923; c=relaxed/simple;
	bh=NfA4wsZbOiZ01t+IDmcTYVTaevjzHdWjhnIPT28paNg=;
	h=To:Subject:From:Message-Id:Date; b=Z/BrJNqC7MaalOw90fsIev9wtS+S0PkWfe+XET4LmEN7U3kQRTotI0DJ6sqTFls0kofU7P1tNxAk/HOsfQtkV+SSXpoPX3+IOWECt0eXrnOOr5X9yssfmJ8EWUaogQ8unpHYhfXO0xiQOJxh0OJKmckoKcIdp7IkdNdEfwc0LR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3Ohu/d+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3Ohu/d+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC13DC116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717293922;
	bh=NfA4wsZbOiZ01t+IDmcTYVTaevjzHdWjhnIPT28paNg=;
	h=To:Subject:From:Date:From;
	b=t3Ohu/d+WlcOieL7fNy6TC1EmrlzDXMIJUWhU9ujZIld/KvdWRe5f+emGTl7CsPcL
	 fLuHlI2saU06Xd1IKHjUrD7a2toLdLnAK7iUMO7dRln0fKJLUCVNDDWarbUtIN9XVy
	 7VtpAdfkjek6ip0oBjBq0RO8nELOWr+xtemlsyTPByrqHW4aSEKxXkYcCdeWG0aB8k
	 lUGh9eLggnWXKWGbjk6V3YdEBEHFVgIYjnKv6rZzwk8Lp+3RUUMySXud/6YiG0owXQ
	 ZzX0YLrRk4zjqbO7Q3a286JlOL5Yic1SY5F9BwfQBaNfkNrT6jBx2AutlEBXjxgx/b
	 EEXX6pCpc5LCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68FBC25B76
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171729392279.9144.2263635933158506712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c09c8eea2d8ff5829740831a1d6c264887cbd44a6d22e4f825d7c7af76bf4bc
Date: Sun, 02 Jun 2024 02:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717293922
