Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59F21F6687
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738505153; cv=none; b=OLdtAMtWeOxnvuuzonOYdgbLlJa+xEEfYyNdKPPRRY262Gh8rg29Zksde/7qHIVK+BdSFHqx3DTfa5ynSMseq9L3yDSTPa0nQn8TOkYDerr0JagBY6uqoJ2SXa4/vOX/scQIqF1eh0818gvb6BhM60N8nFjv0jSCtxz7J3lgVNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738505153; c=relaxed/simple;
	bh=/LN/1IdLci90hU3Rv5xeCcpJDaJLz+sSDW9EHb6K4s8=;
	h=To:Subject:From:Message-Id:Date; b=gxA4ZctXfk1jLzpUK+0uoyeycoB4IkGKCwmoK77EiRUYRE7CuznSObNDUOwL/gI0pAKiQIhjTwMq9VcOG6qQ1lqP5I42kzbfq4v1DY2v/V4zJt4d8DaaHc/z3eajnTeNaUadd1uguknTyBNMWPmkUepW3/ZgXP67wUYmdDolkW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8SpqJjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8SpqJjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AA4C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738505153;
	bh=/LN/1IdLci90hU3Rv5xeCcpJDaJLz+sSDW9EHb6K4s8=;
	h=To:Subject:From:Date:From;
	b=k8SpqJjBvJVp92gWoJQd+pPepjhUPuLpKypZEf0g2fn1A4muH2PANahF8+JWDmDau
	 9UzpKTmB5vgLWQ5Qtj36xp5yAVMpEWnL8VMu3lNHkPu/uD+z5HGr+vQd+nLxxh0nwQ
	 Y60cUmi6lrZcQUDOAmvqhhXTu5TDdI1tXaCHrVjdlr92ZNV786E9ZjCCOkHcZODbpJ
	 9s6TieEqQJYCrccHV6rm+39PWsFOOP/VNBU5OqfiW8eaxKqJix6pL26BxCogIGP5J9
	 izAGbo2zVwiU3TQamH4MpD/eT9FRw71Xp49XfOYgqWpZkdgXHPw/BeCR1v82DsdCnV
	 imThqgOeo8bWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9979EC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173850515359.26438.9965939074808545316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa65b4b0f4b8febc1e360525906eaf158c2eb6e8da0ff1e59831595e3d9ec8d3
Date: Sun, 02 Feb 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738505153
