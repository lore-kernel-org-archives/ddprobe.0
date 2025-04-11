Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DA22BE7BB
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744375194; cv=none; b=VBCtwCmzHXaZ5C2h4eZNRBRRsCqb0vTIrKUszG3OvNLHok7w1VrRdx69B1U7PMaAcKvh6yfoFvyimYQAsqobsiK41OqZU2rPa+Op5ksiGHPzBkc5Vmwa85UuHYbOtEtT/4dksetMM5H/O7ds3y1+AxHNb+3mX/MIPQRjWpJ5WEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744375194; c=relaxed/simple;
	bh=BIw4L4+C6Ka3/7aV18nwsmugYQ43HyVncKYx/ONclqY=;
	h=To:Subject:From:Message-Id:Date; b=pL1+wSn/IsCasMqdveNKC56/N/T+Xgl+6TmgO/Il3LI7QFrKQ5+EqGc7X5BIlP2+6KW7z6rRtBxg4dSgDge/clWEjNOZukjOg9GG4LjKxji7UXNgVDp2Biy38GEd8KeOfsGrqF+YSY9/lHHGC2cvekb/hbJThbaPt9Mbh0jx/cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDwEK0NF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDwEK0NF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DBEC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744375193;
	bh=BIw4L4+C6Ka3/7aV18nwsmugYQ43HyVncKYx/ONclqY=;
	h=To:Subject:From:Date:From;
	b=lDwEK0NFZPsOm6qL/Kqhh+4FoMeHdNHtLpiA4xcVIq1PMt1Imk1/PuN93nHqSAhUo
	 tuWNUafOJd5dUB5H3lBObzPWNVX2TLCdBYdOlEXR7UZLONMXsX4vJ6Rz+ZHuunk/qF
	 mucHArYCfxvLuxmegwa4sz0W9LSnX0eNTIpyKxHCH1owfJegCUSulWe5mMCxEeGG/E
	 wI6qN15GQgkE61bu5e6lPy7Aq7wbAqGh1qNH6kjH95whyUP49azd1JhLxlU08wtYng
	 fCEbvne/B2mA7wwvuVUU1TEdBOYGMbhs8qKIUlqjnB0iLmz1Gl0eUuLNgVlEG66Auo
	 8SfpMBt29cIFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1014C369A8
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437519364.2135.5635685291129485543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78fbf69edcfb66d5c5c4c09a7f95e2fa1a507277a87f540d80e1802bd2a14c8
Date: Fri, 11 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744375193
