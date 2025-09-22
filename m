Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF51261B71
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758580194; cv=none; b=F6he96eMGfSx3enjfnAyUSBiyXAcBd9pC3vySL3Y2RHGFqi2pHeaNetor1XTSe1dewjTtLn+PGbVQBQzsPci6CRNqj3hL44lUpZ8ax7wKb4Wf0G31q5vDURFkcPxmyXu7RtJuhZpTXIvJsE5EIHZRSpXk1rnpIja6eCkeyCUFiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758580194; c=relaxed/simple;
	bh=Fk4T9rujnNWJc4Uo5dwb6H1gfd0b1onNKubrPgM4FH8=;
	h=To:Subject:From:Message-Id:Date; b=opkjhJO2puldXmds0V5HErK/e98aP/G01xeuVQJmlb9ABrTgsDldxj444bsRsLxqT0l4ZIxdVxn2wCDpviwloVx2Qz4A6zK0nzDb6K+wy9CqifSxHeO/xKCFOyw7k44q0wU1E4uiQ/sWHUyWplOEId+qKNG0Q2CdXC7ikeaag9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKUeHDZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKUeHDZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA98CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758580193;
	bh=Fk4T9rujnNWJc4Uo5dwb6H1gfd0b1onNKubrPgM4FH8=;
	h=To:Subject:From:Date:From;
	b=FKUeHDZhBmUwUlz4Pj21hxNPpTDp5NdHzjzDXZQIxUP/5pOm5f9CCY1fW66Bjnt+8
	 XmyApUszx91An+q9NTGLpp+w7mayACubp2XCSB7T5p0HZHUa0eqcW0jqf5mQA8AM4R
	 bXYZjUJIHTNJylUqZKmPVooOZL+lndyGwgods0DSE4FZeRXr3LUibdo6LO+E7pR9jk
	 KPM81c1R7aUMM4N4pug8hMGP/ui+CFJkPmKqIq5qDLh3yEVU4kIc4m2RvuY9mv3wuO
	 Ud+XJHzZ+Gn5JH2GwDaWfMGIYBeZ273La2W7qy8EcJCH5P50glpXGPBBvp69JEFneC
	 J4tNrsr0pHcSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98578CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858019360.7616.4021283241296581594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9639259202bdcaf5b6c2c4ca96a6b6edf27bc88d477e3352654d69c235fff95
Date: Mon, 22 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758580193
