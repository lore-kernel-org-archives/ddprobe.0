Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB331D559
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718252303; cv=none; b=nIyer2qQtm8gQQcn87lYYQ0CZWlDh9AnN/JXSsclWU8DqyLEtPLGSxVaXcoZJ9KKgqMEaRT/Ea4rCtarDQlZQQUDmRaMRuefQHCEmCeUL56wzW+Thp+HH6RfzTPA20DYFtNzutXQsZ8Jwcf4ye6YMijn+4chtmhioYwE/Qr7Ysk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718252303; c=relaxed/simple;
	bh=qPO623Dm7S2dN4LaNSDe4THPbg5Ur6hgsXxuUATLbkc=;
	h=To:Subject:From:Message-Id:Date; b=bJtRTtZd+NmrCe501GCZkgGyyWibh5BFxfWh+ICmZWdl5cQBo95l17r4vRGB2Xr/Eh3gd0I66vJ1jCpS2iNt7MWxXmSGG6FSQeLk/lzoXkM2uy8Wr3hjjG0X/yNSqQiEHjt+RFRe7mcdUTEMMjBkeRn9vlbXl0WFHRGRuMACBIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcEH3b4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcEH3b4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12316C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718252303;
	bh=qPO623Dm7S2dN4LaNSDe4THPbg5Ur6hgsXxuUATLbkc=;
	h=To:Subject:From:Date:From;
	b=YcEH3b4jftmjzwcRO4IoxkAT5xuRi3Kug3gfrZAMBwU5ff99kXvnPiZq3Gwh8dUPV
	 2P4GP1dShBawDh30O7jRa8Rf8WbvlxpONfdvZKxYmdbG5JHZiH/GnZDpegrTbodYgP
	 XhzGprUe7hgqu7XFy2o0Sf5C4YBpxk5f1leV3IQsSPypzDrVY++7L6vJftUAqRwCNR
	 kbME/Pi2Jme2rhMlJ012VUa7BMYTPVizJn0n/dYst8lIS3+Uhq4uLZ9y21bYU9+2Uu
	 Z6pf2g3ZZ9xFshWiDl3ms1z9cFL+/Gd2Oea+mlFnKw7l8mXI0CEkLOxUrzDUtu0QKZ
	 bu7kMwqgc+VOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBAF6C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171825230293.17945.5950911139562258605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330c3885bede8161a1435efb40917f83335bb4aee4c6cfd79ee23567539a460d
Date: Thu, 13 Jun 2024 04:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718252302
