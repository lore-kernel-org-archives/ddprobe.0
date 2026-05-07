Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0993E928B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778163454; cv=none; b=AYYgxYIJhopSHPWx3qEAH5FviaOi0wl3nx2MS8Li6Lb5f+ibIadPMxxP5wSx3G7Po4A4XBp431Jr1pq/xzSo8U0W9uLaZGO9CNrhleZC3F0v4uqTpO9o98u22fVC2yunVVav+qlQ6AclAJsjGja5mvdv86a2dDAkn2PTPyNWFt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778163454; c=relaxed/simple;
	bh=U4yLsDAVkTGXhboNlfpPvS0EPiob7+/tXJsAuDOMb1E=;
	h=To:Subject:From:Message-Id:Date; b=XfHX0dcvVHnQUWW5DFZTnMHPGrl4hES3jNO9vCOiscmDdtGSXpRoMaUteYB+6iD4LLoV+ctwe56cRRAkiuaRzK1CgiFZQNHMU5t3kQQXXtlhReaDZNBEJpG9fojemAxfVa4tj5WbqusKdBTcNLyMBb42zCkSofHLZmTQdfPcTw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mz9cUH4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mz9cUH4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF687C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778163453;
	bh=U4yLsDAVkTGXhboNlfpPvS0EPiob7+/tXJsAuDOMb1E=;
	h=To:Subject:From:Date:From;
	b=mz9cUH4bEj+R10PpKgHrHWmEkeGFterbV4+u2avY64mHHdr9ajCel3zOp4dlLkXuM
	 K9cfNP2yaZxVRo14vw087UWrotJ7I/3MycNoCTT/ASTulE9kX/KdPiw+RaY7mej8j4
	 sFcRi2EUUouv4i8bO1pXWfyCCowLM/cum3s/VzP9y481lbq4P8IuOrfu7I0JyBO1+1
	 fkZNMs7FxelEGWKAsLNWxlVvLPiEE7tvSkWnOM4HTDcW3m1UgiER0UmBNjdpzQUU+Y
	 xfvmMRYDvzTpeyYsTdNAAw8nXyqHYUwPeY9omOFIjfVkQ01N6stOo7sMg2rHtZWqF9
	 PD6RrpafGthvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F14CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816345369.23079.11142671027110522512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44429fac18374e73bc3433045336fe9404fbe605095559ef38fd3f5c9b0c645
Date: Thu, 07 May 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778163453
