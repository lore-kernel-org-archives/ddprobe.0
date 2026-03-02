Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2342830E835
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772429094; cv=none; b=RGrPzteFSHnccjnQV791EDz9MW18mw6ZIzC43Cxgycq2/Om7SuJAO0MN2QtxxMpX9f1KYPRA5ApgTEGeH+UlVz8sNxK9GhLtfCwXa6JmT6ShsS+84lad7wc4x6ePgGuQ59595uZo0Fg6YpkbovAL/TLoSkfAiEys5E3oJpz/83U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772429094; c=relaxed/simple;
	bh=GDu6gQV+IBWfkBXHLgk3kpmf98n2Qn12b2QcUmfXBPA=;
	h=To:Subject:From:Message-Id:Date; b=fUovmb7GKOjPxSi9qu5HsG1sEFt0KyR6aF5Oe3fjzI70eQElN96sWzoFWTVcZqmfbCI9y69PJQ7+/AGcRCpaz0AMjtnDOsLbAd1vCJ2ZZVOUuvaXGXDyUBxe70kcbmo1XP7hVwK0s+wAoT63az2YXPv0VPE1OAiBm040iwN9FMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5LEU68F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5LEU68F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB858C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772429093;
	bh=GDu6gQV+IBWfkBXHLgk3kpmf98n2Qn12b2QcUmfXBPA=;
	h=To:Subject:From:Date:From;
	b=D5LEU68F0blaq/iWWMxquAmwBlVjxXzAQ3jsuMnvwmcZ/ZtS/9flAhp0bUEtswhGE
	 Evs2eM9e22Jv9GLOJbFWSWr7gyY0vdjo9uyoFD1xNkPEIINlhoPITS72i3HC2fTfr/
	 SR6Z33aGdx+bd7PleqAdxZUYGGDMcn8Pz43eEVPy92GgSTPs/ktLXRP//ffzlbg+D6
	 /hKraG2D4M1nqdV59KGskCtOIfY53W3OvyJDcs4u0BpbymID1xBm+gMa+iEEQEqax3
	 zIj5G4EioOJ2p1WV7uw2n9ZxJaaZjK9MQ0+SwRUSt0ZC0ST+2qjF0mfQLP+TanDmAF
	 aTmGXpjZQwcLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97012D58E5C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242909360.31768.643850996595308953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c105db8767f7a0055640e8b85b755d2ab7a97a28f7e633696ba68e7ad807c1ab
Date: Mon, 02 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772429093
