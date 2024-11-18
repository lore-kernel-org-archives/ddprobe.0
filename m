Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41A51DED69
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731957954; cv=none; b=VNeg+LhcNu7SXFjByOGX/ntecfFVdlo6uJo89gqXJJOWcrIn0cVV9leEUog/PkBg2BfgV1UX9E7NZqacqwYckF9Zy48LxdHMbnz9JgTRAsS5O3F6MpU6ZTfF8F7P/4XdXHcTpcHsKHREfnBPgi7vr4g7zfpvpymVUFNtWFPNWJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731957954; c=relaxed/simple;
	bh=8qZspcS1L8mzrMWDKnZPxVH8X0dWVEd+DmK4PgqpPbw=;
	h=To:Subject:From:Message-Id:Date; b=cGOzCamat201TlPiwhpONCeBLAcs2dzDvHlVzgmqxWhoy+S1VX+9SIf9Q5rSUc8vyB11Cuw4xH+ojn0grjhWweQB7tEFMcEee3HYHrOJzp6oQefVZ4vt2UlcHbMW/ko2PU9sZ4tEDvIdNfb8zQhl0e6G4wQQy7J0865/aDFEiZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eu/kon3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eu/kon3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1084C4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731957953;
	bh=8qZspcS1L8mzrMWDKnZPxVH8X0dWVEd+DmK4PgqpPbw=;
	h=To:Subject:From:Date:From;
	b=eu/kon3Y7j9HqsNaHC+P9gP8OgZmQpy+cyFBnfHNbV38OBk4HxvAEVa3oyjSCpd4E
	 wAQbY9g+U8NW70eHyfoufTlCn+q/5zx7N5mGE9bbP/R54gjpY6431vfi6kwplO5vF7
	 VuvdVo1pW2Efz+4mQXJQaL1VCNN9Rgw7LTGKvRtotImeBFfpH7aKC/XVRtUhMp4IMK
	 ckUgOWpk179yo8vGtYwhN/lZo36wJshuDKTQb3tWUIPGFQNVqzmCpGk9g71qs62S5w
	 cugyemhHibcPlU8tWyhXVwM5VSNxXm4iMMqkzbyrVe7HnPhUlUxUs3AdXh3pKMM+I0
	 gMEXlEtVaYGgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9076FD591AE
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173195795358.5034.12641264727275492685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c04e6d6ef776b9cc8db93d9a0767f6704980777e702d637ff52904b9c23468ed
Date: Mon, 18 Nov 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731957953
