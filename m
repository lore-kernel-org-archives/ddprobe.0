Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4693A1689
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778784034; cv=none; b=CQZibgeAdgAvBn27aDlT02HfXvOMrrs47+PogPh3Gd0rbpYOvpEAAhJrSE02qwRIcayJD4zBTtj85bUebr5cewpi2wzx89Q2U4OaBp0YzwBMe0I2dGbLTuXeUW5BNPYlpOmIc9Hrb855l++w9T1SBGLZpvRHHBp2wKvPVGHF1Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778784034; c=relaxed/simple;
	bh=6F83nzKXs5YmzcaNvk4hSloczftxTnaE9G2HQ9vMhGg=;
	h=To:Subject:From:Message-Id:Date; b=IdR0vGXbPfitacgoLjOjCxDII5cTP1wP3zRR0toaM3AbNR1P7t+vKfNTuhvsSoMbAagUO683KW/gyHc0NCSHedsSkAzzHcygyP84uQzxsv6g/qUtZuP4+0Bcld5DD5EmJ1uWd/bO6dSBjZKjEJIueU3msFuJJ9r3wluvNK8jXVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGNEQB55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGNEQB55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE87C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778784033;
	bh=6F83nzKXs5YmzcaNvk4hSloczftxTnaE9G2HQ9vMhGg=;
	h=To:Subject:From:Date:From;
	b=VGNEQB55HQxOSkE84CBmW84ITDiCEm7j5o8R7uekuFIlFhE5uOsdX1aHF1oQ7PR06
	 qu8ZlWRRUovOoXVQmzw9OyKwUev+BDPK5LrrDW/AEK0sfrtGmVmvgtSSpagBElwqIy
	 Mc5RPfxDcdbKwZID8eLSEQQ4iLhxkrEayg1XJUupo1esONo7iBtWLFzB6tvBEevqGx
	 nNLPPJuSenvD+GCbkQh7RRgtSeFZ5nPjfVUAqIaA7+W8g/a/UXYcxqmlZGMVrnGOkh
	 2cSNuZxb5st2GHT25FJdlymRQGsd4+cOVlr3fXpm26HBgFwrwl8+eqUZw8BzBdud1u
	 IJQywiWMuVwUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB40ECD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878403369.13317.4022223552692374654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a92e1e5af762cb44e2254c3d2dcf6f0aae6dc472d7a48310819402915893f1
Date: Thu, 14 May 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778784033
