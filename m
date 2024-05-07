Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5850C1514C6
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715096543; cv=none; b=cwxvRaurEWjMe9zRQLnpbMgdEH9QZnjtkmRxF/XR8o9wUWBsrcHIsjCTYq0X0Ps1Zi/+zwNGU+nfAjZ76G25l5JxHUW5a3AkB0R65GDbnG9dEWkDfs36sypxjyk8r987nBjQk/WdZvWsON8LoHi693Q/RMD6/yYGY5/lNyCf1DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715096543; c=relaxed/simple;
	bh=YuFzMkIzlEFh1ku5s3lNkznz1XCmgMUaZ/nOzEWGwOw=;
	h=To:Subject:From:Message-Id:Date; b=bDoRxeo4BVV20FMY8HGuwJKnhVjwXHtLIGKrAx+btEdREkNKHWfH0nE3FgPW0nc8mBFIo5NGS/JoANsvuqG5MZcVt7AgORl/DCbFc/tjXwumTmIQctuh2UfXl0s6qjnOHzY4TQX3Ap6Voo5R2osHcsdlu6mlxfUEFqTtUyiHKZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqtPrAOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqtPrAOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC3BC4AF18
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715096542;
	bh=YuFzMkIzlEFh1ku5s3lNkznz1XCmgMUaZ/nOzEWGwOw=;
	h=To:Subject:From:Date:From;
	b=MqtPrAOY/SwX9V0hnykIUgA1Jslahrr4EZcmFUIYaPI6M9gUtROF/QqUKxfoPZXf9
	 9ynAkKVMpN/oJhUY68UiZlxVVuwHGdoxp5Us24qsZFkxtUsNn/J7swy/th+IQGpNP9
	 /n7MEa7VoeqgOBxHyo6iW+4GInyz8Xmt561heSQ7Ln07YhlmC+9cM1J7CisPgGe2sv
	 x2e01/15WR8QUpm2YpTLJ1dMJKL2Fn0c4kWuOrBGGM9qyCuc+Bn6tzSiWCXwa/glf1
	 MgIP2DU4Kc1lzWskb617P9zKBa+qR9Al4SU8YD+5/YNQPZ28cs2/Qs/rIxupvSwOsy
	 xTPMOmKErdVyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DA7C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171509654281.24648.10530021423621233186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78559c1ec6b89e085f81efc2ec97755fec92e6b478ea55c1eda63be9a7906193
Date: Tue, 07 May 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715096542
