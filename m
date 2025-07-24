Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9121DF24F
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753327794; cv=none; b=ifW6LmjNSFgJJj/+2osA3EdoHnw84HuXB4S3OiOXz+wms3LPf6NzLcf6HmwvyYu89MQIS73JLZj1v/H3a2Jjq951K7f8GjIp+8dVGYGN7w9fuzQ8iP4JnbB/a91K52ofMlhUbBDEq9FKa7GiowxCd6D3Su5i8U7TYsl8BdhwQCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753327794; c=relaxed/simple;
	bh=JWhluRsuClpqoi0Enmq6EwFwsweO8y9Y2SsdQHkOws8=;
	h=To:Subject:From:Message-Id:Date; b=NP6sbYsj8o/F016BWz4/I+H99x/5BaziwGfS/xguLIcSbsjP7WSUImRkDkEk54noo5arJzAqK2So2U7RfLlhBwFLBZzjhuIWbAVYgr8+ODFaHUfRGFveqRIkf7A1ZnGOZWdkt2kjMdflfrSwuPpw1SMWcRzibJqWLufUOrk7Pt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqDXhwBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqDXhwBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A5C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753327793;
	bh=JWhluRsuClpqoi0Enmq6EwFwsweO8y9Y2SsdQHkOws8=;
	h=To:Subject:From:Date:From;
	b=LqDXhwBWwN8vTCK1llxNckr4jthhaNWs+8HsgtyC5L3myklNggK8gHJ8kwIsWI+dJ
	 SJ/fbWo181EC/QmgXkgOejrMeTSZlKicDvVArWuW48o7rznxSy0mnOL0FRkFPO6DdH
	 yYxqHkz/3n/ynkcimtnqmuOgqplUC6xCRiSBstelqhFOvx4Z55XT8MwZGuW6dCzeCv
	 8Zypu7I7F+OVcVskD4jIsVzeL91dlhA+d0VJcRtzdbVi6tRd9quH9t2tkNHCfwNCGc
	 gSIc3Z+l6kGkEs8Fa3cNasZolBJxi52z4mSCsJGf8vCdixR7YM39Ye83FU9WtTlTd7
	 bMvFgluUGhIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F06CC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332779357.25399.8505504094160985022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b62401974d513d464f126a69ecc8a4eba52a424602bf2ebf447e6e8e5b30b9
Date: Thu, 24 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753327793
