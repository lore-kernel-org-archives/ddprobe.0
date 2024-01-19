Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C728F48
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705628297; cv=none; b=MiLUopDc3xFLC3/Rh2mrJQcxb+PUKG52Xmve5hCMIpaf1r0IvHiOU2ojJ2fcbZwTnusTLgwwDiZuZWgZVQuTMEjRonx7th9atIi/Ghj2rXUjIZhDYBhidabj52990dl9IhwYX5FZ3dt5XbZNdtkrMsXpLDvkxJ7c8CfDLBDJ+7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705628297; c=relaxed/simple;
	bh=FQ6xsZas6W23nFJGEP5+TDDusXZ6fZ2ebxn59SkjWb0=;
	h=To:Subject:From:Message-Id:Date; b=nLdZREO4gP9tXBkysCQ1TIx0ZYrjFneWKcEvOut8bxcvP7OTIwlGx75HNtB6SaQatLuL/7JgVYADRsrAAXsKqSmg6ZYnROuMw1bBM75HczBCko8zPGyWxX7F5QTtPLlLqOOFqt6ts5Uegcce0fPwv1uIXSVxbNzdkYtfc/RcmI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vy1zPDWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vy1zPDWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81936C433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705628296;
	bh=FQ6xsZas6W23nFJGEP5+TDDusXZ6fZ2ebxn59SkjWb0=;
	h=To:Subject:From:Date:From;
	b=Vy1zPDWLeulkPQhgvb/9vSfzAqzMB4xPbJ/ziAu02/yJTCqp2zZCEqLhfNs6MEy4h
	 Cvz7yi0DFKtYcre2UfgIMVeJjsdEBlIp2KlaXlDof+42XaApgD73lMEKurP2+Meeo3
	 1F5TcoebKhhVGyHuYpoS8ewuykhbM0lHO1SfI11gcKWuuKraoLgArCM9F0jCTLqVaM
	 R8pVPzWw+v436tv5eDVrOeIDCQ/St3GSWfMttD9CHrdUhvXcJUFthKawbbK7FcxZLY
	 0FVDjO+vYGbHDRd9Y3/qqqZdecC2RIDvX6IccSc84U1JqrIQmYrWch7tlGU4x/7OF6
	 zTwPbT0UL0VHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64414C47422
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170562829640.31325.3135401885100682066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01bfd7eb5bf3e5d997766853085c12ee37c45753925e687376d579c12c470107
Date: Fri, 19 Jan 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705628296
